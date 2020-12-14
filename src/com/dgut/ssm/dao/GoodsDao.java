package com.dgut.ssm.dao;

import com.dgut.ssm.bean.Goods;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface GoodsDao {
    public Goods getGoodsById(Integer id);
    public void update(Goods goods);
    public List<Goods> getAllGods();
    public int DelGoodsById(Integer id);
    public void AddGoods(Goods goods);
    public Integer getQuantityById(Integer id);
    public Integer reduceQuantityById(@Param("id") Integer id,@Param("num") Integer num);
}
