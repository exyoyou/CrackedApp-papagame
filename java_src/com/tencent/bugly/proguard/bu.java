package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class bu extends m {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static Map<String, String> f83561i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f83562a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f83563b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f83564c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f83565d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f83566e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map<String, String> f83567f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f83568g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f83569h = true;

    static {
        HashMap map = new HashMap();
        f83561i = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83562a, 0);
        lVar.a(this.f83563b, 1);
        String str = this.f83564c;
        if (str != null) {
            lVar.a(str, 2);
        }
        String str2 = this.f83565d;
        if (str2 != null) {
            lVar.a(str2, 3);
        }
        String str3 = this.f83566e;
        if (str3 != null) {
            lVar.a(str3, 4);
        }
        Map<String, String> map = this.f83567f;
        if (map != null) {
            lVar.a((Map) map, 5);
        }
        String str4 = this.f83568g;
        if (str4 != null) {
            lVar.a(str4, 6);
        }
        lVar.a(this.f83569h, 7);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83562a = kVar.a(this.f83562a, 0, true);
        this.f83563b = kVar.a(this.f83563b, 1, true);
        this.f83564c = kVar.b(2, false);
        this.f83565d = kVar.b(3, false);
        this.f83566e = kVar.b(4, false);
        this.f83567f = (Map) kVar.a(f83561i, 5, false);
        this.f83568g = kVar.b(6, false);
        this.f83569h = kVar.a(7, false);
    }
}
