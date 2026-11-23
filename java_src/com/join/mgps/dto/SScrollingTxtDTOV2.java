package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SScrollingTxtDTOV2 implements Serializable {
    private int interval;
    private List<SScrollingTxtBeanV2> text;

    public int getInterval() {
        return this.interval;
    }

    public List<SScrollingTxtBeanV2> getText() {
        return this.text;
    }

    public void setInterval(int interval) {
        this.interval = interval;
    }

    public void setText(List<SScrollingTxtBeanV2> text) {
        this.text = text;
    }
}
