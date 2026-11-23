package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class PraisePercent implements Serializable {
    private int praise_bad;
    private int praise_good;
    private int praise_nice;

    public PraisePercent(int praise_good, int praise_nice, int praise_bad) {
        this.praise_good = praise_good;
        this.praise_nice = praise_nice;
        this.praise_bad = praise_bad;
    }

    public int getPraise_bad() {
        return this.praise_bad;
    }

    public int getPraise_good() {
        return this.praise_good;
    }

    public int getPraise_nice() {
        return this.praise_nice;
    }

    public void setPraise_bad(int praise_bad) {
        this.praise_bad = praise_bad;
    }

    public void setPraise_good(int praise_good) {
        this.praise_good = praise_good;
    }

    public void setPraise_nice(int praise_nice) {
        this.praise_nice = praise_nice;
    }

    public PraisePercent() {
    }
}
