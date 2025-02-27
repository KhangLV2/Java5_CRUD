package com.example.demo.repository;

import com.example.demo.model.KichThuoc;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface KichThuocRepository extends JpaRepository<KichThuoc,Integer> {

    public static final int ACTIVE = 1;
    public static final int INACTIVE = 0;

    @Query("select kt from KichThuoc kt where kt.trangThai=:trangThai")
    public Page<KichThuoc> findByTrangThai(@Param("trangThai") int trangThai, Pageable pageable);

}
