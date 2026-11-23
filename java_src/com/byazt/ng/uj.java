package com.byazt.ng;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 248, 15})
public class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17331a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17332c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f17333da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f17334i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f17335m;
    public long my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f17336n;
    public String nu;
    public String qy;
    public int rh;
    public String sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f17337t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f17338u;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f17339x;
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f17340z;
    public int gt = -1;
    public int rl = -1;
    public Map<String, Object> gu = new ConcurrentHashMap();
    public long gr = -1;

    public uj a(String str) {
        this.uj = str;
        return this;
    }

    public uj c(int i10) {
        this.yp = String.valueOf(i10);
        return this;
    }

    public uj da(String str) {
        this.f17339x = str;
        return this;
    }

    public uj i(String str) {
        this.sp = str;
        return this;
    }

    public uj n(String str) {
        this.ve = str;
        return this;
    }

    public uj setResult(int i10) {
        this.gt = i10;
        return this;
    }

    public uj sl(String str) {
        this.f17337t = str;
        return this;
    }

    public uj sp(String str) {
        this.f17336n = str;
        return this;
    }

    public uj t(String str) {
        this.qy = str;
        return this;
    }

    public uj tt(String str) {
        this.f17334i = str;
        return this;
    }

    public uj uj(String str) {
        this.tt = str;
        return this;
    }

    public uj ve(String str) {
        this.sl = str;
        return this;
    }

    public uj x(String str) {
        this.f17331a = str;
        return this;
    }

    public uj a(int i10) {
        this.rl = i10;
        return this;
    }

    public uj c(long j10) {
        this.my = j10;
        return this;
    }

    public uj n(int i10) {
        this.rh = i10;
        return this;
    }

    public uj tt(long j10) {
        this.f17333da = j10;
        return this;
    }

    public uj uj(int i10) {
        this.nu = String.valueOf(i10);
        return this;
    }

    public uj ve(int i10) {
        this.f17335m = String.valueOf(i10);
        return this;
    }

    public uj c(String str) {
        this.f17332c = str;
        return this;
    }

    public uj tt(int i10) {
        this.f17340z = i10;
        return this;
    }

    public uj ve(long j10) {
        this.gr = j10;
        return this;
    }

    public static uj tt() {
        return new uj();
    }

    public static uj ve() {
        uj ujVar = new uj();
        ujVar.ve(System.currentTimeMillis());
        return ujVar;
    }

    public uj c(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.gu.put(str, obj);
        }
        return this;
    }

    public uj c(Map<String, Object> map) {
        if (map != null && map.size() > 0) {
            this.gu.putAll(map);
        }
        return this;
    }

    public long c() {
        return this.gr;
    }
}
