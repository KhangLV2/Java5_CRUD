package com.example.demo.repository;

import com.example.demo.model.KhachHang;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface KhachHangRepository extends JpaRepository<KhachHang,Integer> {

    public static final int ACTIVE = 1;
    public static final int INACTIVE = 0;

    @Query("select kh from KhachHang kh where kh.trangThai=:trangThai")
    public Page<KhachHang> findByTrangThai(@Param("trangThai") int trangThai, Pageable pageable);
}
