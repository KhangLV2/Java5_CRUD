package com.example.demo.controller;

import com.example.demo.model.MauSac;
import com.example.demo.repository.MauSacRepository;
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
@RequestMapping("/mau-sac")
public class MauSacController {

    @Autowired
    private MauSacRepository mauSacRepository;

    @GetMapping()
    public String index(Model model,
                        @RequestParam("page") Optional<Integer> pageParam){
        int page = pageParam.orElse(0);
        Pageable p = PageRequest.of(page,5);
        Page<MauSac> pageData = mauSacRepository.findByTrangThai(MauSacRepository.ACTIVE,p);
        model.addAttribute("pageData",pageData);
        int tong = pageData.getTotalPages();
        System.out.println(tong);
        model.addAttribute("total",tong);;
        return "/ql-mau-sac/index";
    }

    @GetMapping("create")
    public String create(){
        return "/ql-mau-sac/create";
    }

    @PostMapping("store")
    public String store(
                        @RequestParam String ma,
                        @RequestParam String ten,
                        @RequestParam Integer trangThai){
        MauSac mauSac = new MauSac();
        mauSac.setMa(ma);
        mauSac.setTen(ten);
        mauSac.setTrangThai(trangThai);
        mauSacRepository.save(mauSac);
        return "redirect:/mau-sac";
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable Integer id,Model model){
        Optional<MauSac> mauSac = mauSacRepository.findById(id);
        model.addAttribute("mauSac",mauSac.get());
        return "/ql-mau-sac/edit";
    }

    @PostMapping("update/{id}")
    public String update(@PathVariable Integer id,
                         @RequestParam String ma,
                         @RequestParam String ten,
                         @RequestParam Integer trangThai){
        MauSac mauSac = new MauSac();
        mauSac.setId(id);
        mauSac.setMa(ma);
        mauSac.setTen(ten);
        mauSac.setTrangThai(trangThai);
        mauSacRepository.save(mauSac);
        return "redirect:/mau-sac";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable Integer id){
        mauSacRepository.deleteById(id);
        return "redirect:/mau-sac";
    }

}
