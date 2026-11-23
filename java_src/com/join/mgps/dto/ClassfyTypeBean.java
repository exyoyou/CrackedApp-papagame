package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ClassfyTypeBean {
    List<ClassifyGameTagBean> game_type;
    List<ClassifyGameTagBean> simulator_type;

    public List<ClassifyGameTagBean> getGame_type() {
        return this.game_type;
    }

    public List<ClassifyGameTagBean> getSimulator_type() {
        return this.simulator_type;
    }

    public void setGame_type(List<ClassifyGameTagBean> game_type) {
        this.game_type = game_type;
    }

    public void setSimulator_type(List<ClassifyGameTagBean> simulator_type) {
        this.simulator_type = simulator_type;
    }
}
