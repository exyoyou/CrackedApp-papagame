package com.byazt.hw;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 77, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15154c = false;
    public boolean tt = true;
    public Map<String, Integer> ve = null;
    public Map<String, String> uj = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15157n = 10;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15153a = 1;
    public int sp = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f15160x = 10;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15156i = 1;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f15155da = 1;
    public int sl = 900;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f15158t = 120;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f15159u = null;
    public int yp = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f15161z = 0;

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" localEnable: ");
        sb2.append(this.f15154c);
        sb2.append(" probeEnable: ");
        sb2.append(this.tt);
        sb2.append(" hostFilter: ");
        Map<String, Integer> map = this.ve;
        sb2.append(map != null ? map.size() : 0);
        sb2.append(" hostMap: ");
        Map<String, String> map2 = this.uj;
        sb2.append(map2 != null ? map2.size() : 0);
        sb2.append(" reqTo: ");
        sb2.append(this.f15157n);
        sb2.append("#");
        sb2.append(this.f15153a);
        sb2.append("#");
        sb2.append(this.sp);
        sb2.append(" reqErr: ");
        sb2.append(this.f15160x);
        sb2.append("#");
        sb2.append(this.f15156i);
        sb2.append("#");
        sb2.append(this.f15155da);
        sb2.append(" updateInterval: ");
        sb2.append(this.sl);
        sb2.append(" updateRandom: ");
        sb2.append(this.f15158t);
        sb2.append(" httpBlack: ");
        sb2.append(this.f15159u);
        return sb2.toString();
    }
}
