package com.kwad.components.core.r;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile a akF;
    private int aev;
    private int akG;
    private boolean akH;
    private boolean akI;
    private int akJ;
    private boolean akK;

    private a() {
    }

    public static a wm() {
        if (akF == null) {
            synchronized (a.class) {
                if (akF == null) {
                    akF = new a();
                }
            }
        }
        return akF;
    }

    public final void bU(int i10) {
        this.akG = i10;
    }

    public final void bV(int i10) {
        this.akJ = i10;
    }

    public final void bW(int i10) {
        this.aev = i10;
    }

    public final void ba(boolean z10) {
        this.akH = true;
    }

    public final void bb(boolean z10) {
        this.akI = z10;
    }

    public final void bc(boolean z10) {
        this.akK = z10;
    }

    public final void clear() {
        this.akI = false;
        this.akH = false;
        this.akJ = 0;
        this.akK = false;
        this.akG = -1;
        this.aev = 0;
    }

    public final int wn() {
        return this.akG;
    }

    public final boolean wo() {
        return this.akH;
    }

    public final boolean wp() {
        return this.akI;
    }

    public final boolean wq() {
        int i10 = this.akJ;
        return i10 == 1 || i10 == 3;
    }

    public final int wr() {
        return this.akJ;
    }

    public final boolean ws() {
        return this.akK;
    }

    public final int wt() {
        return this.aev;
    }
}
