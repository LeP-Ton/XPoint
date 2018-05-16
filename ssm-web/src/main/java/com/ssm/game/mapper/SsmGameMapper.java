package com.ssm.game.mapper;

import com.ssm.game.pojo.SsmGame;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface SsmGameMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SsmGame record);

    List<SsmGame> selectAll();

    int insertSelective(SsmGame record);

    SsmGame selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SsmGame record);

    int updateByPrimaryKey(SsmGame record);
}