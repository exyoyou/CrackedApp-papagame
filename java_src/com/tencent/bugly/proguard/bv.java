package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class bv extends m implements Cloneable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static ArrayList<bu> f83570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static Map<String, String> f83571g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f83572a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f83573b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f83574c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<bu> f83575d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, String> f83576e = null;

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb2, int i10) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83572a, 0);
        String str = this.f83573b;
        if (str != null) {
            lVar.a(str, 1);
        }
        String str2 = this.f83574c;
        if (str2 != null) {
            lVar.a(str2, 2);
        }
        ArrayList<bu> arrayList = this.f83575d;
        if (arrayList != null) {
            lVar.a((Collection) arrayList, 3);
        }
        Map<String, String> map = this.f83576e;
        if (map != null) {
            lVar.a((Map) map, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83572a = kVar.a(this.f83572a, 0, true);
        this.f83573b = kVar.b(1, false);
        this.f83574c = kVar.b(2, false);
        if (f83570f == null) {
            f83570f = new ArrayList<>();
            f83570f.add(new bu());
        }
        this.f83575d = (ArrayList) kVar.a(f83570f, 3, false);
        if (f83571g == null) {
            HashMap map = new HashMap();
            f83571g = map;
            map.put("", "");
        }
        this.f83576e = (Map) kVar.a(f83571g, 4, false);
    }
}
