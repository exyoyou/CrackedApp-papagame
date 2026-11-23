package com.join.mgps.dto;

import com.join.kotlin.ui.findgame.data.TagData;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RankingMainDataBean {
    private List<CollectionBeanSub> rank_list;
    private List<TagData> rank_type;

    public List<CollectionBeanSub> getRank_list() {
        return this.rank_list;
    }

    public List<TagData> getRank_type() {
        return this.rank_type;
    }

    public void setRank_list(List<CollectionBeanSub> rank_list) {
        this.rank_list = rank_list;
    }

    public void setRank_type(List<TagData> rank_type) {
        this.rank_type = rank_type;
    }
}
