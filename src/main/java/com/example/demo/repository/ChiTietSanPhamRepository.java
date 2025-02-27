package com.example.demo.repository;

import com.example.demo.model.ChiTietSP;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ChiTietSanPhamRepository extends JpaRepository<ChiTietSP,Integer> {

    public final static int ACTIVE = 1;
    public final static int INACTIVE = 0;

    @Query("select ctsp from ChiTietSP ctsp where ctsp.trangThai=:trangThai")
    public Page<ChiTietSP> findByTrangThai(@Param("trangThai") int trangThai, Pageable pageable);

}
