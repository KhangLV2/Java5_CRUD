package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "KhachHang")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class KhachHang {

    @Id
    @Column(name = "ID")
    private Integer id;

    @Column(name = "Ma")
    private String ma;

    @Column(name = "Ten")
    private String ten;

    @Column(name = "SDT")
    private String sdt;

    @Column(name = "TrangThai")
    private Integer trangThai;

}
