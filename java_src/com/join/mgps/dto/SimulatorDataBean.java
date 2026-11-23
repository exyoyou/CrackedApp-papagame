package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorDataBean {
    private SimulatorMainDataBean main;
    private List<SimulatorSubDataBean> sub;

    public SimulatorDataBean() {
    }

    public SimulatorMainDataBean getMain() {
        return this.main;
    }

    public List<SimulatorSubDataBean> getSub() {
        return this.sub;
    }

    public void setMain(SimulatorMainDataBean main) {
        this.main = main;
    }

    public void setSub(List<SimulatorSubDataBean> sub) {
        this.sub = sub;
    }

    public SimulatorDataBean(SimulatorMainDataBean main, List<SimulatorSubDataBean> sub) {
        this.main = main;
        this.sub = sub;
    }
}
