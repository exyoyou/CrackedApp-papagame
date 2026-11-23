package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RankingDataBean {
    private String jump_val;
    private List<RankingGameBean> list;
    private String title;
    private int type;

    public String getJump_val() {
        return this.jump_val;
    }

    public List<RankingGameBean> getList() {
        return this.list;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public void setJump_val(String jump_val) {
        this.jump_val = jump_val;
    }

    public void setList(List<RankingGameBean> list) {
        this.list = list;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setType(int type) {
        this.type = type;
    }
}
