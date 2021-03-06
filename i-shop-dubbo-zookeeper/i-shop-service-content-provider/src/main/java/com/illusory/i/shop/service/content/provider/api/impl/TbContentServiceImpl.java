package com.illusory.i.shop.service.content.provider.api.impl;


import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.illusory.i.shop.commons.domain.TbContent;
import com.illusory.i.shop.commons.mapper.TbContentMapper;
import com.illusory.i.shop.service.content.api.TbContentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
/**
 * @author illusory
 * @version 1.0.0
 * @date 2019/4/4
 */
@Service(version = "${services.versions.content.v1}")
@Transactional(readOnly = true)
public class TbContentServiceImpl implements TbContentService {
    @Autowired
    private TbContentMapper tbContentMapper;

    @Override
    public PageInfo<TbContent> page(int start, int length, TbContent tbContent) {
        PageHelper.offsetPage(start, length);
        return new PageInfo<>(tbContentMapper.select(tbContent));
    }
}
