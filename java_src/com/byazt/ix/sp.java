package com.byazt.ix;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1677, 91})
public class sp implements Comparable<sp> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.yl.ve f15563c;
    public long tt;
    public com.byazt.ll.tt uj;
    public boolean ve = false;

    public sp(com.byazt.yl.ve veVar, long j10, com.byazt.ll.tt ttVar) {
        this.f15563c = veVar;
        this.tt = j10;
        this.uj = ttVar;
    }

    public String a() {
        com.byazt.ll.tt ttVar = this.uj;
        if (ttVar == null) {
            return null;
        }
        return ttVar.gt();
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(sp spVar) {
        return this.f15563c.compareTo(spVar.f15563c);
    }

    public boolean n() {
        com.byazt.yl.ve veVar = this.f15563c;
        return (veVar == null || this.uj == null || veVar.isHasShown() || !this.f15563c.isReady(this.uj.gt())) ? false : true;
    }

    public boolean sp() {
        com.byazt.yl.ve veVar = this.f15563c;
        if (veVar == null) {
            return false;
        }
        return veVar.isUseFromCache();
    }

    public String tt() {
        com.byazt.yl.ve veVar = this.f15563c;
        if (veVar == null) {
            return null;
        }
        return veVar.getAdNetworkSlotId();
    }

    public com.byazt.ll.tt uj() {
        return this.uj;
    }

    public boolean ve() {
        return this.ve;
    }

    public long c() {
        return this.tt;
    }

    public void c(boolean z10) {
        this.ve = z10;
    }

    public void tt(boolean z10) {
        com.byazt.yl.ve veVar = this.f15563c;
        if (veVar == null) {
            return;
        }
        veVar.setUseFromCache(z10);
    }
}
