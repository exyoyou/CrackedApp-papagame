package com.join.mgps.activity.recomend;

import com.join.mgps.dto.AppBean;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class RecommendGroupBean {
    private List<AppBean> game_list;
    String title;

    public List<AppBean> getGame_list() {
        return this.game_list;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGame_list(List<AppBean> game_list) {
        this.game_list = game_list;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
