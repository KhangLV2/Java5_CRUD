package com.example.demo.repository;

import com.example.demo.model.HoaDon;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon,Integer> {

    public final static int ACTIVE = 1;
    public final static int INACTIVE = 0;

    @Query("select hd from HoaDon hd where hd.trangThai=:trangThai")
    public Page<HoaDon> findByTrangThai(@Param("trangThai") int trangThai, Pageable pageable);

}
