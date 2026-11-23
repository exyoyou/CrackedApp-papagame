package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class bo extends m {
    static ArrayList<bn> A;
    static Map<String, String> B;
    static Map<String, String> C;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static Map<String, String> f83480v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static bm f83481w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static bl f83482x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static ArrayList<bl> f83483y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static ArrayList<bl> f83484z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f83485a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f83486b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f83487c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f83488d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f83489e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f83490f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f83491g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Map<String, String> f83492h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f83493i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public bm f83494j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f83495k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f83496l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f83497m = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public bl f83498n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList<bl> f83499o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList<bl> f83500p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ArrayList<bn> f83501q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Map<String, String> f83502r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Map<String, String> f83503s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f83504t = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f83505u = true;

    static {
        HashMap map = new HashMap();
        f83480v = map;
        map.put("", "");
        f83481w = new bm();
        f83482x = new bl();
        f83483y = new ArrayList<>();
        f83483y.add(new bl());
        f83484z = new ArrayList<>();
        f83484z.add(new bl());
        A = new ArrayList<>();
        A.add(new bn());
        HashMap map2 = new HashMap();
        B = map2;
        map2.put("", "");
        HashMap map3 = new HashMap();
        C = map3;
        map3.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83485a, 0);
        lVar.a(this.f83486b, 1);
        lVar.a(this.f83487c, 2);
        String str = this.f83488d;
        if (str != null) {
            lVar.a(str, 3);
        }
        String str2 = this.f83489e;
        if (str2 != null) {
            lVar.a(str2, 4);
        }
        String str3 = this.f83490f;
        if (str3 != null) {
            lVar.a(str3, 5);
        }
        String str4 = this.f83491g;
        if (str4 != null) {
            lVar.a(str4, 6);
        }
        Map<String, String> map = this.f83492h;
        if (map != null) {
            lVar.a((Map) map, 7);
        }
        String str5 = this.f83493i;
        if (str5 != null) {
            lVar.a(str5, 8);
        }
        bm bmVar = this.f83494j;
        if (bmVar != null) {
            lVar.a((m) bmVar, 9);
        }
        lVar.a(this.f83495k, 10);
        String str6 = this.f83496l;
        if (str6 != null) {
            lVar.a(str6, 11);
        }
        String str7 = this.f83497m;
        if (str7 != null) {
            lVar.a(str7, 12);
        }
        bl blVar = this.f83498n;
        if (blVar != null) {
            lVar.a((m) blVar, 13);
        }
        ArrayList<bl> arrayList = this.f83499o;
        if (arrayList != null) {
            lVar.a((Collection) arrayList, 14);
        }
        ArrayList<bl> arrayList2 = this.f83500p;
        if (arrayList2 != null) {
            lVar.a((Collection) arrayList2, 15);
        }
        ArrayList<bn> arrayList3 = this.f83501q;
        if (arrayList3 != null) {
            lVar.a((Collection) arrayList3, 16);
        }
        Map<String, String> map2 = this.f83502r;
        if (map2 != null) {
            lVar.a((Map) map2, 17);
        }
        Map<String, String> map3 = this.f83503s;
        if (map3 != null) {
            lVar.a((Map) map3, 18);
        }
        String str8 = this.f83504t;
        if (str8 != null) {
            lVar.a(str8, 19);
        }
        lVar.a(this.f83505u, 20);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83485a = kVar.b(0, true);
        this.f83486b = kVar.a(this.f83486b, 1, true);
        this.f83487c = kVar.b(2, true);
        this.f83488d = kVar.b(3, false);
        this.f83489e = kVar.b(4, false);
        this.f83490f = kVar.b(5, false);
        this.f83491g = kVar.b(6, false);
        this.f83492h = (Map) kVar.a(f83480v, 7, false);
        this.f83493i = kVar.b(8, false);
        this.f83494j = (bm) kVar.a((m) f83481w, 9, false);
        this.f83495k = kVar.a(this.f83495k, 10, false);
        this.f83496l = kVar.b(11, false);
        this.f83497m = kVar.b(12, false);
        this.f83498n = (bl) kVar.a((m) f83482x, 13, false);
        this.f83499o = (ArrayList) kVar.a(f83483y, 14, false);
        this.f83500p = (ArrayList) kVar.a(f83484z, 15, false);
        this.f83501q = (ArrayList) kVar.a(A, 16, false);
        this.f83502r = (Map) kVar.a(B, 17, false);
        this.f83503s = (Map) kVar.a(C, 18, false);
        this.f83504t = kVar.b(19, false);
        this.f83505u = kVar.a(20, false);
    }
}
