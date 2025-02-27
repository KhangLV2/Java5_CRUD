package com.example.demo.controller;

import com.example.demo.model.KichThuoc;
import com.example.demo.model.MauSac;
import com.example.demo.repository.KichThuocRepository;
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
@RequestMapping("/kich-thuoc")
public class KichThuocController {

    @Autowired
    private KichThuocRepository kichThuocRepository;

    @GetMapping()
    public String index(Model model,
                        @RequestParam("page") Optional<Integer> pageParam){
        int page = pageParam.orElse(0);
        Pageable p = PageRequest.of(page,5);
        Page<KichThuoc> pageData = kichThuocRepository.findByTrangThai(MauSacRepository.ACTIVE,p);
        model.addAttribute("pageData",pageData);
        int tong = pageData.getTotalPages();
        System.out.println(tong);
        model.addAttribute("total",tong);;
        return "/ql-kich-thuoc/index";
    }
//    public String index(Model model){
//        List<KichThuoc> list = kichThuocRepository.findAll();
//        model.addAttribute("list",list);
//        return "/ql-kich-thuoc/index";
//    }

    @GetMapping("create")
    public String create(){
        return "/ql-kich-thuoc/create";
    }

    @PostMapping("store")
    public String store(
                        @RequestParam String ma,
                        @RequestParam String ten,
                        @RequestParam Integer trangThai){
        KichThuoc kichThuoc = new KichThuoc();

        kichThuoc.setMa(ma);
        kichThuoc.setTen(ten);
        kichThuoc.setTrangThai(trangThai);
        kichThuocRepository.save(kichThuoc);
        return "redirect:/kich-thuoc";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable Integer id){
        kichThuocRepository.deleteById(id);
        return "redirect:/kich-thuoc";
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable Integer id,Model model){
        Optional<KichThuoc> kichThuoc = kichThuocRepository.findById(id);
        model.addAttribute("kichThuoc",kichThuoc.get());
        return "/ql-kich-thuoc/edit";
    }

    @PostMapping("update/{idUpdate}")
    public String update(@PathVariable Integer idUpdate,
                         @RequestParam String ma,
                         @RequestParam String ten,
                         @RequestParam Integer trangThai){
        KichThuoc kichThuoc = new KichThuoc();
        kichThuoc.setId(idUpdate);
        kichThuoc.setMa(ma);
        kichThuoc.setTen(ten);
        kichThuoc.setTrangThai(trangThai);
       kichThuocRepository.save(kichThuoc);
        return "redirect:/kich-thuoc";
    }

}
