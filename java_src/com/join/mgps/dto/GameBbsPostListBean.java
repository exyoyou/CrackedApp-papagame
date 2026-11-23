package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameBbsPostListBean {
    private List<BbsListBean> game_bbs_post_list;
    private Integer next_page;

    public List<BbsListBean> getGame_bbs_post_list() {
        return this.game_bbs_post_list;
    }

    public Integer getNext_page() {
        return this.next_page;
    }

    public void setGame_bbs_post_list(List<BbsListBean> game_bbs_post_list) {
        this.game_bbs_post_list = game_bbs_post_list;
    }

    public void setNext_page(Integer next_page) {
        this.next_page = next_page;
    }
}
