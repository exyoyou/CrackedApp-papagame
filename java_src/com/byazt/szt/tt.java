package com.byazt.szt;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1718, 13})
public class tt implements com.byazt.hl.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.zd.tt f20078c;
    public com.byazt.hl.c tt;

    public tt(com.byazt.hl.c cVar, com.byazt.zd.tt ttVar) {
        this.tt = cVar;
        this.f20078c = ttVar;
    }

    @Override // com.byazt.hl.c
    public boolean c(Map<String, Object> map) {
        com.byazt.zd.tt ttVar = this.f20078c;
        if (ttVar == null) {
            return this.tt.c(map);
        }
        if (ttVar.c()) {
            return true;
        }
        com.byazt.hl.c cVar = this.tt;
        if (cVar == null) {
            return false;
        }
        return cVar.c(map);
    }

    public tt(com.byazt.zd.tt ttVar) {
        this.f20078c = ttVar;
    }
}
