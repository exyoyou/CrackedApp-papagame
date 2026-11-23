package com.byazt.cc;

import com.xinzhu.overmind.utils.l;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.vw.tt f12339c;

    public void c(com.byazt.vw.tt ttVar) {
        this.f12339c = ttVar;
    }

    public void tt() {
        com.byazt.vw.tt ttVar = this.f12339c;
        if (ttVar != null) {
            ttVar.c();
        }
    }

    public boolean ve() {
        return this.f12339c == null;
    }

    public void c() {
        com.byazt.vw.tt ttVar = this.f12339c;
        if (ttVar != null) {
            ttVar.tt();
            this.f12339c = null;
        }
    }

    public void c(com.byazt.nc.tt ttVar) {
        com.byazt.vw.tt ttVar2 = this.f12339c;
        if (ttVar2 != null) {
            ttVar2.c(ttVar);
        }
    }
}
