package com.example.demo.controller;

import com.example.demo.model.*;
import com.example.demo.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/trang-chu")
public class TrangChuController {

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @GetMapping()
    public String hienThi(){
        return "/ql-ban-hang/index";
    }

    @PostMapping("add-hoa-don")
    public String addHoaDon(Model model) throws ParseException {
        List<HoaDon> listHD = hoaDonRepository.findAll();

        HoaDon hoaDon = new HoaDon();
        hoaDon.setId(listHD.size()+1);

        NhanVien nhanVien = new NhanVien();
        nhanVien.setId(1);
        hoaDon.setIdNhanVien(nhanVien);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        LocalDate ngayHienTai = LocalDate.now();
        hoaDon.setNgayMuaHang(sdf.parse(ngayHienTai+""));
        hoaDon.setTrangThai(0);

        hoaDonRepository.save(hoaDon);
        return "redirect:/trang-chu";
    }

}
