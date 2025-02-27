package com.example.demo.repository;

import com.example.demo.model.NhanVien;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface NhanVienRepository extends JpaRepository<NhanVien,Integer> {

    public static final int ACTIVE = 1;
    public static final int INACTIVE = 0;

    @Query("select nv from NhanVien nv where nv.trangThai=:trangThai")
    public Page<NhanVien> findByTrangThai(@Param("trangThai") int trangThai, Pageable pageable);

}
