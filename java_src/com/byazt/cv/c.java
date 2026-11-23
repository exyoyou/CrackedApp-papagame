package com.byazt.cv;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 597, 20})
public class c implements com.byazt.oh.uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.pp.tt f12620c;

    public c(com.byazt.pp.tt ttVar) {
        this.f12620c = ttVar;
    }

    @Override // com.byazt.oh.uj
    public String c() {
        com.byazt.pp.tt ttVar = this.f12620c;
        if (ttVar != null) {
            return ttVar.tt();
        }
        return null;
    }

    @Override // com.byazt.oh.uj
    public String n() {
        com.byazt.pp.tt ttVar = this.f12620c;
        if (ttVar != null) {
            return ttVar.a();
        }
        return null;
    }

    @Override // com.byazt.oh.uj
    public String tt() {
        com.byazt.pp.tt ttVar = this.f12620c;
        if (ttVar != null) {
            return TextUtils.isEmpty(ttVar.ve()) ? this.f12620c.uj() : this.f12620c.ve();
        }
        return null;
    }

    @Override // com.byazt.oh.uj
    public int uj() {
        com.byazt.pp.tt ttVar = this.f12620c;
        if (ttVar != null) {
            return ttVar.n();
        }
        return 0;
    }

    @Override // com.byazt.oh.uj
    public String ve() {
        com.byazt.pp.tt ttVar = this.f12620c;
        if (ttVar != null) {
            return ttVar.c();
        }
        return null;
    }
}
