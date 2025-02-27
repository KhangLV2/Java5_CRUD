package com.example.demo.controller;

import com.example.demo.model.SanPham;
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
@RequestMapping("/san-pham")
public class SanPhamController {

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @GetMapping()
    public String index(Model model,
                        @RequestParam("page") Optional<Integer> pageParam){
        int page = pageParam.orElse(0);
        Pageable p = PageRequest.of(page,10);
        Page<SanPham> pageData = sanPhamRepository.finByTrangThai(SanPhamRepository.ACTIVE,p);
        model.addAttribute("pageData",pageData);
        int total = pageData.getTotalPages();
        model.addAttribute("total",total);
        return "/ql-san-pham/index";
    }

    @GetMapping("create")
    public String create(){
        return "/ql-san-pham/create";
    }

    @PostMapping("store")
    public String store(
                        @RequestParam String ma,
                        @RequestParam String ten,
                        @RequestParam Integer trangThai){
        SanPham sanPham = new SanPham();

        sanPham.setMa(ma);
        sanPham.setTen(ten);
        sanPham.setTrangThai(trangThai);
        sanPhamRepository.save(sanPham);
        return "redirect:/san-pham";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable Integer id){
        sanPhamRepository.deleteById(id);
        return "redirect:/san-pham";
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable Integer id,Model model){
        Optional<SanPham> sanPham = sanPhamRepository.findById(id);
        model.addAttribute("sanPham",sanPham.get());
        return "/ql-san-pham/edit";
    }

    @PostMapping("update/{idUpdate}")
    public String update(@PathVariable Integer idUpdate,
                         @RequestParam String ma,
                         @RequestParam String ten,
                         @RequestParam Integer trangThai){
        SanPham sanPham = new SanPham();
        sanPham.setId(idUpdate);
        sanPham.setMa(ma);
        sanPham.setTen(ten);
        sanPham.setTrangThai(trangThai);
        sanPhamRepository.save(sanPham);
        return "redirect:/san-pham";
    }

}
