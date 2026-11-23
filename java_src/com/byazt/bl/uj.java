package com.byazt.bl;

import android.graphics.Bitmap;
import com.byazt.yj.eo;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 177, 15})
public class uj implements eo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final eo f11969c;
    public final com.byazt.ep.tt tt;

    public uj(eo eoVar) {
        this(eoVar, null);
    }

    public uj(eo eoVar, com.byazt.ep.tt ttVar) {
        this.f11969c = eoVar;
        this.tt = ttVar;
    }

    @Override // com.byazt.yj.c
    public boolean tt(String str) {
        return this.f11969c.tt(str);
    }

    @Override // com.byazt.yj.c
    public boolean c(String str, Bitmap bitmap) {
        return this.f11969c.c(str, bitmap);
    }

    @Override // com.byazt.yj.c
    public Bitmap c(String str) {
        return this.f11969c.c(str);
    }

    @Override // com.byazt.yj.c
    public void c() {
        this.f11969c.c();
    }

    @Override // com.byazt.yj.c
    public void c(double d10) {
        this.f11969c.c(d10);
    }
}
