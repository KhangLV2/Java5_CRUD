package com.example.demo.repository;

import com.example.demo.model.ChiTietSP;

import java.util.ArrayList;
import java.util.List;

public class MuaHangRepo {

    public List<ChiTietSP> listNew;

    public MuaHangRepo() {
        this.listNew = ds();
    }

    public List<ChiTietSP> ds(){
        List<ChiTietSP> list = new ArrayList<>();
        return list;
    }

    public List<ChiTietSP> hienThi(){
        return this.listNew;
    }

    public void add(ChiTietSP chiTietSP){
        this.listNew.add(chiTietSP);
    }

    public void delete(Integer id){
        for (int i=0;i<listNew.size();i++){
            ChiTietSP chiTietSP = listNew.get(i);
            if (chiTietSP.getId()==id){
                listNew.remove(chiTietSP);
            }
        }
    }

    public static void main(String[] args) {
        new MuaHangRepo().hienThi().forEach(e-> System.out.println(e.toString()));
    }

}
