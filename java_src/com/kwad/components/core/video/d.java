package com.kwad.components.core.video;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    private boolean anq = false;
    private boolean anr = false;
    private boolean ans = false;
    private boolean ant = false;
    private boolean anu = false;
    private int anv = -1;

    public final void bh(boolean z10) {
        this.ans = z10;
    }

    public final void cb(int i10) {
        this.anv = i10;
    }

    public final void setAd(boolean z10) {
        this.anr = z10;
    }

    public final void setFillXY(boolean z10) {
        this.anu = z10;
    }

    public final void setForce(boolean z10) {
        this.anq = z10;
    }

    public final void setHorizontalVideo(boolean z10) {
        this.ant = z10;
    }

    public final boolean xA() {
        return this.ans;
    }

    public final boolean xB() {
        return this.ant;
    }

    public final boolean xC() {
        return this.anu;
    }

    public final boolean xw() {
        return this.anv > 0;
    }

    public final int xx() {
        return this.anv;
    }

    public final boolean xy() {
        return this.anq;
    }

    public final boolean xz() {
        return this.anr;
    }
}
