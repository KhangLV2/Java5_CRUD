//package com.example.demo.controller;
//
//import com.example.demo.model.HoaDon;
//import com.example.demo.model.NhanVien;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.List;
//
//@Controller
//@RequestMapping("/ban-hang")
//public class BanHangController {
//
//    private HoaDonRepo hoaDonRepo = new HoaDonRepo();
//
//    @GetMapping()
//    public String hienThi(Model model){
//        List<HoaDon> list = hoaDonRepo.getAll();
//        model.addAttribute("listBH",list);
//        return "index";
//    }
//
//    @GetMapping("store")
//    public String taoHoaDon(Model model){
//        HoaDon hoaDon = new HoaDon();
//        hoaDon.setId(1);
//        NhanVien nhanVien = new NhanVien();
//        nhanVien.setTen("Quang");
//        hoaDon.setIdNhanVien(nhanVien);
//        Date date = new Date();
//        SimpleDateFormat df = new SimpleDateFormat("dd-MM-YYYY");
//        df.format(date);
//        hoaDon.setNgayMuaHang(date);
//        hoaDon.setTrangThai(0);
//
//        hoaDonRepo.add(hoaDon);
//
//        return "redirect:/ban-hang";
//    }
//
//}
