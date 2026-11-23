package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameRankingBean {
    private List<CollectionBeanSub> free_play_ranking;
    private List<CollectionBeanSub> online_ranking;
    private List<String> ranking_title;
    private List<CollectionBeanSub> simulator_ranking;
    private List<CollectionBeanSub> single_ranking;

    public List<CollectionBeanSub> getFree_play_ranking() {
        return this.free_play_ranking;
    }

    public List<CollectionBeanSub> getOnline_ranking() {
        return this.online_ranking;
    }

    public List<String> getRanking_title() {
        return this.ranking_title;
    }

    public List<CollectionBeanSub> getSimulator_ranking() {
        return this.simulator_ranking;
    }

    public List<CollectionBeanSub> getSingle_ranking() {
        return this.single_ranking;
    }

    public void setFree_play_ranking(List<CollectionBeanSub> free_play_ranking) {
        this.free_play_ranking = free_play_ranking;
    }

    public void setOnline_ranking(List<CollectionBeanSub> online_ranking) {
        this.online_ranking = online_ranking;
    }

    public void setRanking_title(List<String> ranking_title) {
        this.ranking_title = ranking_title;
    }

    public void setSimulator_ranking(List<CollectionBeanSub> simulator_ranking) {
        this.simulator_ranking = simulator_ranking;
    }

    public void setSingle_ranking(List<CollectionBeanSub> single_ranking) {
        this.single_ranking = single_ranking;
    }
}
