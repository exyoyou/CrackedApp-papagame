package com.join.mgps.dto;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class PlayCfgV2Bean {
    private ArrayList<PlayCfgBean> first_random_list;
    private ArrayList<PlayCfgBean> second_fixed_list;

    public ArrayList<PlayCfgBean> getFirst_random_list() {
        return this.first_random_list;
    }

    public ArrayList<PlayCfgBean> getSecond_fixed_list() {
        return this.second_fixed_list;
    }

    public void setFirst_random_list(ArrayList<PlayCfgBean> first_random_list) {
        this.first_random_list = first_random_list;
    }

    public void setSecond_fixed_list(ArrayList<PlayCfgBean> second_fixed_list) {
        this.second_fixed_list = second_fixed_list;
    }
}
