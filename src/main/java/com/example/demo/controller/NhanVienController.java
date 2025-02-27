package com.example.demo.controller;

import com.example.demo.model.NhanVien;
import com.example.demo.repository.NhanVienRepository;
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
@RequestMapping("/nhan-vien")
public class NhanVienController {

    @Autowired
    private NhanVienRepository nhanVienRepository;

    @GetMapping()
    public String index(Model model,
                        @RequestParam("page") Optional<Integer> pageParam){
        int page = pageParam.orElse(0);
        Pageable p = PageRequest.of(page,5);
        Page<NhanVien> pageData = nhanVienRepository.findByTrangThai(NhanVienRepository.ACTIVE,p);
        model.addAttribute("pageData",pageData);
        int total = pageData.getTotalPages();
        model.addAttribute("total",total);
        return "/ql-nhan-vien/index";
    }

    @GetMapping("create")
    public String create(){
        return "/ql-nhan-vien/create";
    }

    @PostMapping("store")
    public String store(@RequestParam Integer id,
                        @RequestParam String ten,
                        @RequestParam String ma,
                        @RequestParam String tenDangNhap,
                        @RequestParam String matKhau,
                        @RequestParam Integer trangThai){
        NhanVien nhanVien = new NhanVien();
        nhanVien.setId(id);
        nhanVien.setTen(ten);
        nhanVien.setMa(ma);
        nhanVien.setTenDangNhap(tenDangNhap);
        nhanVien.setMatKhau(matKhau);
        nhanVien.setTrangThai(trangThai);
        nhanVienRepository.save(nhanVien);
        return "redirect:/nhan-vien";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable Integer id){
       nhanVienRepository.deleteById(id);
        return "redirect:/nhan-vien";
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable Integer id,Model model){
        Optional<NhanVien> nhanVien = nhanVienRepository.findById(id);
        model.addAttribute("nhanVien",nhanVien.get());
        return "/ql-nhan-vien/edit";
    }

    @PostMapping("update/{idUpdate}")
    public String update(@PathVariable Integer idUpdate,
                         @RequestParam String ten,
                         @RequestParam String ma,
                         @RequestParam String tenDangNhap,
                         @RequestParam String matKhau,
                         @RequestParam Integer trangThai){
        NhanVien nhanVien = new NhanVien();
        nhanVien.setId(idUpdate);
        nhanVien.setTen(ten);
        nhanVien.setMa(ma);
        nhanVien.setTenDangNhap(tenDangNhap);
        nhanVien.setMatKhau(matKhau);
        nhanVien.setTrangThai(trangThai);
        nhanVienRepository.save(nhanVien);
        return "redirect:/nhan-vien";
    }


}
