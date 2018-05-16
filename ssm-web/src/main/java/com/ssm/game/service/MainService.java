package com.ssm.game.service;


import com.ssm.game.pojo.SsmGame;

import java.util.List;


public interface MainService {
    public String getResult(String cards,int x) throws Exception;

    public boolean insertRecord(SsmGame ssmGame) throws Exception;

    public List<SsmGame> selectAll();

}
