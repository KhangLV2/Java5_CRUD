package com.example.demo.repository;

import com.example.demo.model.SanPham;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SanPhamRepository extends JpaRepository<SanPham,Integer> {

      public static final int ACTIVE = 1;
      public static final int INACTIVE = 0;

      @Query("select sp from SanPham sp where sp.trangThai=:trangThai")
      public Page<SanPham> finByTrangThai(@Param("trangThai") int trangThai, Pageable pageable);

}
