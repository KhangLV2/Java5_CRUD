package com.example.demo.controller;

import com.example.demo.model.HoaDon;
import com.example.demo.model.KhachHang;
import com.example.demo.model.NhanVien;
import com.example.demo.repository.HoaDonRepository;
import com.example.demo.repository.KhachHangRepository;
import com.example.demo.repository.NhanVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/hoa-don")
public class HoaDonController {

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private NhanVienRepository nhanVienRepository;

    @Autowired
    private KhachHangRepository khachHangRepository;

    @GetMapping()
    public String index(Model model,
                        @RequestParam("page") Optional<Integer> pageParam){
        int page = pageParam.orElse(0);
        Pageable p = PageRequest.of(page,10);
        Page<HoaDon> pageData = hoaDonRepository.findByTrangThai(HoaDonRepository.ACTIVE,p);
        model.addAttribute("pageData",pageData);
        int total = pageData.getTotalPages();
        model.addAttribute("total",total);
        return "/ql-hoa-don/index";
    }

    @GetMapping("create")
    public String create(Model model){
        List<NhanVien> listNhanVien = nhanVienRepository.findAll();
        List<KhachHang> listKhachHang = khachHangRepository.findAll();
        model.addAttribute("listNhanVien",listNhanVien);
        model.addAttribute("listKhachHang",listKhachHang);
        return "/ql-hoa-don/create";
    }

    @PostMapping("store")
    public String store(@RequestParam Integer id,
                        @RequestParam Integer idKhachHang,
                        @RequestParam Integer idNhanVien,

                        @RequestParam Integer trangThai) throws ParseException {
        HoaDon hoaDon = new HoaDon();

        hoaDon.setId(id);
        KhachHang khachHang = new KhachHang();
        khachHang.setId(idKhachHang);
        hoaDon.setIdKhachHang(khachHang);

        NhanVien nhanVien = new NhanVien();
        nhanVien.setId(idNhanVien);
        hoaDon.setIdNhanVien(nhanVien);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        LocalDate ngayHienTai = LocalDate.now();
        hoaDon.setNgayMuaHang(sdf.parse(ngayHienTai+""));
        hoaDon.setTrangThai(trangThai);

        hoaDonRepository.save(hoaDon);
        return "redirect:/hoa-don";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Integer id){
        hoaDonRepository.deleteById(id);
        return "redirect:/hoa-don";
    }


    @GetMapping("edit/{id}")
    public String edit(@PathVariable Integer id,
                       Model model){
        Optional<HoaDon> hoaDon = hoaDonRepository.findById(id);
        List<NhanVien> listNhanVien = nhanVienRepository.findAll();
        List<KhachHang> listKhachHang = khachHangRepository.findAll();
        model.addAttribute("listNhanVien",listNhanVien);
        model.addAttribute("listKhachHang",listKhachHang);
        model.addAttribute("hoaDon",hoaDon.get());
        return "/ql-hoa-don/edit";
    }

    @PostMapping("update/{id}")
    public String update(@PathVariable Integer id,
                         @RequestParam Integer idKhachHang,
                         @RequestParam Integer idNhanVien,
                         @RequestParam Date ngayMuaHang,
                         @RequestParam Integer trangThai) throws ParseException {
        HoaDon hoaDon = new HoaDon();
        hoaDon.setId(id);
        KhachHang khachHang = new KhachHang();
        khachHang.setId(idKhachHang);
        hoaDon.setIdKhachHang(khachHang);

        NhanVien nhanVien = new NhanVien();
        nhanVien.setId(idNhanVien);
        hoaDon.setIdNhanVien(nhanVien);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        hoaDon.setNgayMuaHang(ngayMuaHang);
        hoaDon.setTrangThai(trangThai);
        hoaDonRepository.save(hoaDon);
        return "redirect:/hoa-don";
    }

}
