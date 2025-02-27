package com.example.demo.controller;

import com.example.demo.model.ChiTietSP;
import com.example.demo.model.KichThuoc;
import com.example.demo.model.MauSac;
import com.example.demo.model.SanPham;
import com.example.demo.repository.ChiTietSanPhamRepository;
import com.example.demo.repository.KichThuocRepository;
import com.example.demo.repository.MauSacRepository;
import com.example.demo.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/chi-tiet-sp")
public class ChiTietSPController {

    @Autowired
    private ChiTietSanPhamRepository chiTietSanPhamRepository;

    @Autowired
    private MauSacRepository mauSacRepository;
    @Autowired
    private KichThuocRepository kichThuocRepository;
    @Autowired
    private SanPhamRepository sanPhamRepository;

    @GetMapping()
    public String index(Model model,
                        @RequestParam("page") Optional<Integer> pageParam){
        int page = pageParam.orElse(0);
        Pageable p = PageRequest.of(page,25);
        Page<ChiTietSP> pageData = chiTietSanPhamRepository.findByTrangThai(ChiTietSanPhamRepository.ACTIVE,p);
        model.addAttribute("pageData",pageData);
        int total = pageData.getTotalPages();
        model.addAttribute("total",total);
        return "/ql-chi-tiet-sp/index";
    }

    @GetMapping("create")
    public String creat(Model model){
        List<MauSac> mauSacList = mauSacRepository.findAll();
        List<KichThuoc> kichThuocList = kichThuocRepository.findAll();
        List<SanPham> sanPhamList = sanPhamRepository.findAll();
        model.addAttribute("listMauSac",mauSacList);
        model.addAttribute("listKichThuoc",kichThuocList);
        model.addAttribute("listSP",sanPhamList);
        return "/ql-chi-tiet-sp/create";
    }

    @PostMapping("store")
    public String store(
                        @RequestParam String maSpCT,
                        @RequestParam Integer idKichThuoc,
                        @RequestParam Integer idMauSac,
                        @RequestParam Integer idSanPham,
                        @RequestParam Integer soLuong,
                        @RequestParam Integer donGia,
                        @RequestParam Integer trangThai){
        ChiTietSP chiTietSP = new ChiTietSP();

        chiTietSP.setMaSpCT(maSpCT);

        KichThuoc kichThuoc = new KichThuoc();
        kichThuoc.setId(idKichThuoc);
        chiTietSP.setIdKichThuoc(kichThuoc);

        MauSac mauSac = new MauSac();
        mauSac.setId(idMauSac);
        chiTietSP.setIdMauSac(mauSac);

        SanPham sanPham = new SanPham();
        sanPham.setId(idSanPham);
        chiTietSP.setIdSanPham(sanPham);

        chiTietSP.setSoLuong(soLuong);
        chiTietSP.setDonGia(donGia);
        chiTietSP.setTrangThai(trangThai);

        chiTietSanPhamRepository.save(chiTietSP);
        return "redirect:/chi-tiet-sp";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable Integer id){
        chiTietSanPhamRepository.deleteById(id);
        return "redirect:/chi-tiet-sp";
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable Integer id,Model model){
        Optional<ChiTietSP> chiTietSP = chiTietSanPhamRepository.findById(id);
        List<MauSac> mauSacList = mauSacRepository.findAll();
        List<KichThuoc> kichThuocList = kichThuocRepository.findAll();
        List<SanPham> sanPhamList = sanPhamRepository.findAll();
        model.addAttribute("listMauSac",mauSacList);
        model.addAttribute("listKichThuoc",kichThuocList);
        model.addAttribute("listSP",sanPhamList);
        model.addAttribute("chiTietSP",chiTietSP.get());
        return "/ql-chi-tiet-sp/edit";
    }


    @PostMapping("update/{id}")
    public String update(@PathVariable Integer id,
                         @RequestParam String maSpCT,
                         @RequestParam Integer idKichThuoc,
                         @RequestParam Integer idMauSac,
                         @RequestParam Integer idSanPham,
                         @RequestParam Integer soLuong,
                         @RequestParam Integer donGia,
                         @RequestParam Integer trangThai){

        ChiTietSP chiTietSP = new ChiTietSP();

        chiTietSP.setId(id);
        chiTietSP.setMaSpCT(maSpCT);

        KichThuoc kichThuoc = new KichThuoc();
        kichThuoc.setId(idKichThuoc);
        chiTietSP.setIdKichThuoc(kichThuoc);

        MauSac mauSac = new MauSac();
        mauSac.setId(idMauSac);
        chiTietSP.setIdMauSac(mauSac);

        SanPham sanPham = new SanPham();
        sanPham.setId(idSanPham);
        chiTietSP.setIdSanPham(sanPham);

        chiTietSP.setSoLuong(soLuong);
        chiTietSP.setDonGia(donGia);
        chiTietSP.setTrangThai(trangThai);

         chiTietSanPhamRepository.save(chiTietSP);
        return "redirect:/chi-tiet-sp";
    }

}
