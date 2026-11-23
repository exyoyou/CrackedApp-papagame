package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class bq extends m {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static byte[] f83508y = {0};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static Map<String, String> f83509z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f83510a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f83511b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f83512c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f83513d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f83514e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f83515f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f83516g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f83517h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f83518i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f83519j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Map<String, String> f83520k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f83521l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f83522m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f83523n = "";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f83524o = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f83525p = "";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f83526q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f83527r = "";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f83528s = "";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f83529t = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f83530u = "";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f83531v = "";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f83532w = "";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f83533x = "";

    static {
        HashMap map = new HashMap();
        f83509z = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83510a, 0);
        lVar.a(this.f83511b, 1);
        lVar.a(this.f83512c, 2);
        lVar.a(this.f83513d, 3);
        String str = this.f83514e;
        if (str != null) {
            lVar.a(str, 4);
        }
        lVar.a(this.f83515f, 5);
        lVar.a(this.f83516g, 6);
        lVar.a(this.f83517h, 7);
        String str2 = this.f83518i;
        if (str2 != null) {
            lVar.a(str2, 8);
        }
        String str3 = this.f83519j;
        if (str3 != null) {
            lVar.a(str3, 9);
        }
        Map<String, String> map = this.f83520k;
        if (map != null) {
            lVar.a((Map) map, 10);
        }
        String str4 = this.f83521l;
        if (str4 != null) {
            lVar.a(str4, 11);
        }
        lVar.a(this.f83522m, 12);
        String str5 = this.f83523n;
        if (str5 != null) {
            lVar.a(str5, 13);
        }
        String str6 = this.f83524o;
        if (str6 != null) {
            lVar.a(str6, 14);
        }
        String str7 = this.f83525p;
        if (str7 != null) {
            lVar.a(str7, 15);
        }
        lVar.a(this.f83526q, 16);
        String str8 = this.f83527r;
        if (str8 != null) {
            lVar.a(str8, 17);
        }
        String str9 = this.f83528s;
        if (str9 != null) {
            lVar.a(str9, 18);
        }
        String str10 = this.f83529t;
        if (str10 != null) {
            lVar.a(str10, 19);
        }
        String str11 = this.f83530u;
        if (str11 != null) {
            lVar.a(str11, 20);
        }
        String str12 = this.f83531v;
        if (str12 != null) {
            lVar.a(str12, 21);
        }
        String str13 = this.f83532w;
        if (str13 != null) {
            lVar.a(str13, 22);
        }
        String str14 = this.f83533x;
        if (str14 != null) {
            lVar.a(str14, 23);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83510a = kVar.a(this.f83510a, 0, true);
        this.f83511b = kVar.b(1, true);
        this.f83512c = kVar.b(2, true);
        this.f83513d = kVar.b(3, true);
        this.f83514e = kVar.b(4, false);
        this.f83515f = kVar.b(5, true);
        this.f83516g = kVar.a(this.f83516g, 6, true);
        this.f83517h = kVar.c(7, true);
        this.f83518i = kVar.b(8, false);
        this.f83519j = kVar.b(9, false);
        this.f83520k = (Map) kVar.a(f83509z, 10, false);
        this.f83521l = kVar.b(11, false);
        this.f83522m = kVar.a(this.f83522m, 12, false);
        this.f83523n = kVar.b(13, false);
        this.f83524o = kVar.b(14, false);
        this.f83525p = kVar.b(15, false);
        this.f83526q = kVar.a(this.f83526q, 16, false);
        this.f83527r = kVar.b(17, false);
        this.f83528s = kVar.b(18, false);
        this.f83529t = kVar.b(19, false);
        this.f83530u = kVar.b(20, false);
        this.f83531v = kVar.b(21, false);
        this.f83532w = kVar.b(22, false);
        this.f83533x = kVar.b(23, false);
    }
}
