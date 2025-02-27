package com.example.demo.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Table(name = "HoaDon")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class HoaDon {

    @Id
    @Column(name = "ID")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "IdNV")
    private NhanVien idNhanVien;

    @ManyToOne
    @JoinColumn(name = "IdKH")
    private KhachHang idKhachHang;

    @Column(name = "NgayMuaHang")
    private Date ngayMuaHang;

    @Column(name = "TrangThai")
    private Integer trangThai;

    public HoaDon(Integer id, NhanVien idNhanVien, KhachHang idKhachHang, Integer trangThai) {
        this.id = id;
        this.idNhanVien = idNhanVien;
        this.idKhachHang = idKhachHang;
        this.trangThai = trangThai;
    }
}
