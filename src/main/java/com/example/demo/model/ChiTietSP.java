package com.example.demo.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "SanPhamChiTiet")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ChiTietSP {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "MaSPCT")
    private String maSpCT;

    @ManyToOne
    @JoinColumn(name = "IdKichThuoc")
    private KichThuoc idKichThuoc;

    @ManyToOne
    @JoinColumn(name = "IdMauSac")
    private MauSac idMauSac;

    @ManyToOne
    @JoinColumn(name = "IdSanPham")
    private SanPham idSanPham;

    @Column(name = "SoLuong")
    private Integer soLuong;

    @Column(name = "DonGia")
    private Integer donGia;

    @Column(name = "TrangThai")
    private Integer trangThai;


}
