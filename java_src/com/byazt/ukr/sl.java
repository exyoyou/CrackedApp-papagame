package com.byazt.ukr;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1081, 158})
public class sl implements com.byazt.gs.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.hm.tt f20618c;

    public sl(com.byazt.hm.tt ttVar) {
        this.f20618c = ttVar;
    }

    @Override // com.byazt.gs.n
    public boolean c() {
        com.byazt.hm.tt ttVar = this.f20618c;
        if (ttVar != null) {
            return ttVar.i();
        }
        return false;
    }

    @Override // com.byazt.gs.n
    public Map<String, String> n() {
        com.byazt.hm.tt ttVar = this.f20618c;
        return ttVar != null ? ttVar.uj() : new HashMap();
    }

    @Override // com.byazt.gs.n
    public String tt() {
        com.byazt.hm.tt ttVar = this.f20618c;
        return ttVar != null ? ttVar.n() : "";
    }

    @Override // com.byazt.gs.n
    public String uj() {
        com.byazt.hm.tt ttVar = this.f20618c;
        return ttVar != null ? ttVar.ve() : "";
    }

    @Override // com.byazt.gs.n
    public int ve() {
        com.byazt.hm.tt ttVar = this.f20618c;
        if (ttVar != null) {
            return ttVar.tt();
        }
        return -1;
    }
}
