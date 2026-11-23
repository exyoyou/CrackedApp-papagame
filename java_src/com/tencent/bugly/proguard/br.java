package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class br extends m {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static byte[] f83534i = {0};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static Map<String, String> f83535j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f83536a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f83537b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f83538c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f83539d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f83540e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f83541f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f83542g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Map<String, String> f83543h = null;

    static {
        HashMap map = new HashMap();
        f83535j = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83536a, 0);
        lVar.a(this.f83537b, 1);
        byte[] bArr = this.f83538c;
        if (bArr != null) {
            lVar.a(bArr, 2);
        }
        String str = this.f83539d;
        if (str != null) {
            lVar.a(str, 3);
        }
        lVar.a(this.f83540e, 4);
        String str2 = this.f83541f;
        if (str2 != null) {
            lVar.a(str2, 5);
        }
        String str3 = this.f83542g;
        if (str3 != null) {
            lVar.a(str3, 6);
        }
        Map<String, String> map = this.f83543h;
        if (map != null) {
            lVar.a((Map) map, 7);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83536a = kVar.a(this.f83536a, 0, true);
        this.f83537b = kVar.a(this.f83537b, 1, true);
        this.f83538c = kVar.c(2, false);
        this.f83539d = kVar.b(3, false);
        this.f83540e = kVar.a(this.f83540e, 4, false);
        this.f83541f = kVar.b(5, false);
        this.f83542g = kVar.b(6, false);
        this.f83543h = (Map) kVar.a(f83535j, 7, false);
    }
}
