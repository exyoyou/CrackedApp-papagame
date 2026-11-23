package com.byazt.pct;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 72})
public class da {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f18627a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.nl.uj f18628c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public yp f18629da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public u f18630i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public sl.tt f18631m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Context f18632n;
    public Looper nu;
    public boolean sp;
    public c tt;
    public x uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f18635x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f18636z;
    public String ve = "IESJSBridge";
    public String sl = u.c.f97430f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Set<String> f18633t = new LinkedHashSet();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Set<String> f18634u = new LinkedHashSet();

    public da(com.byazt.nl.uj ujVar) {
        this.f18628c = ujVar;
    }

    private void uj() {
        if ((this.f18628c == null && !this.yp && this.tt == null) || ((TextUtils.isEmpty(this.ve) && this.f18628c != null) || this.uj == null)) {
            throw new IllegalArgumentException("Requested arguments aren't set properly when building JsBridge.");
        }
    }

    public da c(c cVar) {
        this.tt = cVar;
        return this;
    }

    public Context getContext() {
        return this.f18632n;
    }

    public da tt(boolean z10) {
        this.sp = z10;
        return this;
    }

    public Looper ve() {
        return this.nu;
    }

    public da c(String str) {
        this.ve = str;
        return this;
    }

    public nu tt() {
        uj();
        return new nu(this);
    }

    public da c(t tVar) {
        this.uj = x.c(tVar);
        return this;
    }

    public da c(boolean z10) {
        this.f18627a = z10;
        return this;
    }

    public da c() {
        this.f18636z = true;
        return this;
    }

    public da() {
    }
}
