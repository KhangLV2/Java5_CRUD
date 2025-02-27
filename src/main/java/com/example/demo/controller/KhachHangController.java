package com.example.demo.controller;

import com.example.demo.model.KhachHang;
import com.example.demo.repository.KhachHangRepository;
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
@RequestMapping("/khach-hang")
public class KhachHangController {

    @Autowired
    private KhachHangRepository khachHangRepository;

    @GetMapping()
    public String index(Model model,
                        @RequestParam("page") Optional<Integer> pageParam){
        int page = pageParam.orElse(0);
        Pageable p = PageRequest.of(page,10);
        Page<KhachHang> pageData = khachHangRepository.findByTrangThai(KhachHangRepository.ACTIVE,p);
        model.addAttribute("pageData",pageData);
        int total = pageData.getTotalPages();
        model.addAttribute("total",total);
        return "/ql-khach-hang/index";
    }

    @GetMapping("create")
    public String create(){
        return "/ql-khach-hang/create";
    }

    @PostMapping("store")
    public String store(@RequestParam Integer id,
                        @RequestParam String ten,
                        @RequestParam String sdt,
                        @RequestParam String ma,
                        @RequestParam Integer trangThai){
        KhachHang khachHang = new KhachHang();
        khachHang.setId(id);
        khachHang.setMa(ma);
        khachHang.setTen(ten);
        khachHang.setSdt(sdt);
        khachHang.setTrangThai(trangThai);
        khachHangRepository.save(khachHang);
        return "redirect:/khach-hang";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable Integer id){
       khachHangRepository.deleteById(id);
        return "redirect:/khach-hang";
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable Integer id,Model model){
        Optional<KhachHang> khachHang = khachHangRepository.findById(id);
        model.addAttribute("khachHang",khachHang.get());
        return "/ql-khach-hang/edit";
    }

    @PostMapping("update/{id}")
    public String update(@PathVariable Integer id,
                         @RequestParam String ten,
                         @RequestParam String sdt,
                         @RequestParam String ma,
                         @RequestParam Integer trangThai){
        KhachHang khachHang = new KhachHang();
        khachHang.setId(id);
        khachHang.setTen(ten);
        khachHang.setSdt(sdt);
        khachHang.setMa(ma);
        khachHang.setTrangThai(trangThai);
        khachHangRepository.save(khachHang);
        return "redirect:/khach-hang";
    }

}
