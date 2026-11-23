package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorListDataBean {
    private SimulatorListMainDataBean main;
    private List<Object> more;
    private List<SubAppDataBean> sub;

    public SimulatorListDataBean() {
    }

    public SimulatorListMainDataBean getMain() {
        return this.main;
    }

    public List<Object> getMore() {
        return this.more;
    }

    public List<SubAppDataBean> getSub() {
        return this.sub;
    }

    public void setMain(SimulatorListMainDataBean main) {
        this.main = main;
    }

    public void setMore(List<Object> more) {
        this.more = more;
    }

    public void setSub(List<SubAppDataBean> sub) {
        this.sub = sub;
    }

    public SimulatorListDataBean(SimulatorListMainDataBean main, List<Object> more, List<SubAppDataBean> sub) {
        this.main = main;
        this.more = more;
        this.sub = sub;
    }
}
