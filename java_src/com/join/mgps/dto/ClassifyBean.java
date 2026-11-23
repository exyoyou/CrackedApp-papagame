package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ClassifyBean implements Serializable {
    private List<ClassifyGameTagBean> game_tag_type;
    private List<ClassifyGameTypeBean> game_type;
    private List<RecomDatabean> game_type_recommend;

    public ClassifyBean(List<RecomDatabean> game_type_recommend, List<ClassifyGameTypeBean> game_type, List<ClassifyGameTagBean> game_tag_type) {
        this.game_type_recommend = game_type_recommend;
        this.game_type = game_type;
        this.game_tag_type = game_tag_type;
    }

    public List<ClassifyGameTagBean> getGame_tag_type() {
        return this.game_tag_type;
    }

    public List<ClassifyGameTypeBean> getGame_type() {
        return this.game_type;
    }

    public List<RecomDatabean> getGame_type_recommend() {
        return this.game_type_recommend;
    }

    public void setGame_tag_type(List<ClassifyGameTagBean> game_tag_type) {
        this.game_tag_type = game_tag_type;
    }

    public void setGame_type(List<ClassifyGameTypeBean> game_type) {
        this.game_type = game_type;
    }

    public void setGame_type_recommend(List<RecomDatabean> game_type_recommend) {
        this.game_type_recommend = game_type_recommend;
    }

    public ClassifyBean() {
    }

    public ClassifyBean(List<ClassifyGameTagBean> game_tag_type) {
        this.game_tag_type = game_tag_type;
    }
}
