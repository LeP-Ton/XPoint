package com.ssm.game.service.serviceImpl;

import com.ssm.game.mapper.SsmGameMapper;
import com.ssm.game.pojo.SsmGame;
import com.ssm.game.service.MainService;
import com.ssm.game.util.JavaTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;


@Service("mainService")
public class MainServiceImpl implements MainService {

    @Autowired
    private SsmGameMapper ssmGameMapper;
//调用工具类
    public String getResult(String cards,int x) throws Exception {
        JavaTest javaTest = new JavaTest();
        return javaTest.make24Points(cards,x);
    }

    public boolean insertRecord(SsmGame ssmGame) throws Exception {
        int line = 0;

        line = ssmGameMapper.insert(ssmGame);
        return line>0;
    }

    public List<SsmGame> selectAll() {
        return ssmGameMapper.selectAll();
    }
}
