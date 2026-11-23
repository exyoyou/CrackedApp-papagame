package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class WebDiskPositionBean {
    private WebDiskPositionModeBean pc_game;
    private WebDiskPositionModeBean simulator_game;
    private WebDiskPositionModeBean single_game;

    public WebDiskPositionModeBean getPc_game() {
        return this.pc_game;
    }

    public WebDiskPositionModeBean getSimulator_game() {
        return this.simulator_game;
    }

    public WebDiskPositionModeBean getSingle_game() {
        return this.single_game;
    }

    public void setPc_game(WebDiskPositionModeBean pc_game) {
        this.pc_game = pc_game;
    }

    public void setSimulator_game(WebDiskPositionModeBean simulator_game) {
        this.simulator_game = simulator_game;
    }

    public void setSingle_game(WebDiskPositionModeBean single_game) {
        this.single_game = single_game;
    }
}
