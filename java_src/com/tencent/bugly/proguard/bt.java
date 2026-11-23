package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class bt extends m implements Cloneable {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static bs f83546m = new bs();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static Map<String, String> f83547n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final /* synthetic */ boolean f83548o = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f83549a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f83550b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f83551c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f83552d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f83553e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public bs f83554f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Map<String, String> f83555g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f83556h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f83557i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f83558j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f83559k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f83560l = 0;

    static {
        HashMap map = new HashMap();
        f83547n = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83549a, 0);
        lVar.a(this.f83550b, 1);
        lVar.a(this.f83551c, 2);
        String str = this.f83552d;
        if (str != null) {
            lVar.a(str, 3);
        }
        String str2 = this.f83553e;
        if (str2 != null) {
            lVar.a(str2, 4);
        }
        bs bsVar = this.f83554f;
        if (bsVar != null) {
            lVar.a((m) bsVar, 5);
        }
        Map<String, String> map = this.f83555g;
        if (map != null) {
            lVar.a((Map) map, 6);
        }
        lVar.a(this.f83556h, 7);
        String str3 = this.f83557i;
        if (str3 != null) {
            lVar.a(str3, 8);
        }
        String str4 = this.f83558j;
        if (str4 != null) {
            lVar.a(str4, 9);
        }
        lVar.a(this.f83559k, 10);
        lVar.a(this.f83560l, 11);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f83548o) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        bt btVar = (bt) obj;
        return n.a(this.f83549a, btVar.f83549a) && n.a(this.f83550b, btVar.f83550b) && n.a(this.f83551c, btVar.f83551c) && n.a(this.f83552d, btVar.f83552d) && n.a(this.f83553e, btVar.f83553e) && n.a(this.f83554f, btVar.f83554f) && n.a(this.f83555g, btVar.f83555g) && n.a(this.f83556h, btVar.f83556h) && n.a(this.f83557i, btVar.f83557i) && n.a(this.f83558j, btVar.f83558j) && n.a(this.f83559k, btVar.f83559k) && n.a(this.f83560l, btVar.f83560l);
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83549a = kVar.a(0, true);
        this.f83550b = kVar.a(1, true);
        this.f83551c = kVar.a(2, true);
        this.f83552d = kVar.b(3, false);
        this.f83553e = kVar.b(4, false);
        this.f83554f = (bs) kVar.a((m) f83546m, 5, false);
        this.f83555g = (Map) kVar.a(f83547n, 6, false);
        this.f83556h = kVar.a(this.f83556h, 7, false);
        this.f83557i = kVar.b(8, false);
        this.f83558j = kVar.b(9, false);
        this.f83559k = kVar.a(this.f83559k, 10, false);
        this.f83560l = kVar.a(this.f83560l, 11, false);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb2, int i10) {
        i iVar = new i(sb2, i10);
        iVar.a(this.f83549a, "enable");
        iVar.a(this.f83550b, "enableUserInfo");
        iVar.a(this.f83551c, "enableQuery");
        iVar.a(this.f83552d, "url");
        iVar.a(this.f83553e, "expUrl");
        iVar.a((m) this.f83554f, "security");
        iVar.a((Map) this.f83555g, "valueMap");
        iVar.a(this.f83556h, "strategylastUpdateTime");
        iVar.a(this.f83557i, "httpsUrl");
        iVar.a(this.f83558j, "httpsExpUrl");
        iVar.a(this.f83559k, "eventRecordCount");
        iVar.a(this.f83560l, "eventTimeInterval");
    }
}
