package com.umeng.commonsdk.statistics.idtracking;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f85381a = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f85382b = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f85383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<com.umeng.commonsdk.statistics.proto.a> f85384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.umeng.commonsdk.statistics.proto.b f85385e;

    public a(String str) {
        this.f85383c = str;
    }

    private boolean g() {
        com.umeng.commonsdk.statistics.proto.b bVar = this.f85385e;
        String strB = bVar == null ? null : bVar.b();
        int iH = bVar == null ? 0 : bVar.h();
        String strA = a(f());
        if (strA == null || strA.equals(strB)) {
            return false;
        }
        if (bVar == null) {
            bVar = new com.umeng.commonsdk.statistics.proto.b();
        }
        bVar.a(strA);
        bVar.a(System.currentTimeMillis());
        bVar.a(iH + 1);
        com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
        aVar.a(this.f85383c);
        aVar.c(strA);
        aVar.b(strB);
        aVar.a(bVar.e());
        if (this.f85384d == null) {
            this.f85384d = new ArrayList(2);
        }
        this.f85384d.add(aVar);
        if (this.f85384d.size() > 10) {
            this.f85384d.remove(0);
        }
        this.f85385e = bVar;
        return true;
    }

    public boolean a() {
        return g();
    }

    public String b() {
        return this.f85383c;
    }

    public boolean c() {
        com.umeng.commonsdk.statistics.proto.b bVar = this.f85385e;
        return bVar == null || bVar.h() <= 100;
    }

    public com.umeng.commonsdk.statistics.proto.b d() {
        return this.f85385e;
    }

    public List<com.umeng.commonsdk.statistics.proto.a> e() {
        return this.f85384d;
    }

    public abstract String f();

    public void a(com.umeng.commonsdk.statistics.proto.b bVar) {
        this.f85385e = bVar;
    }

    public void a(List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.f85384d = list;
    }

    public String a(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0 || "0".equals(strTrim) || "unknown".equals(strTrim.toLowerCase(Locale.US))) {
            return null;
        }
        return strTrim;
    }

    public void a(com.umeng.commonsdk.statistics.proto.c cVar) {
        this.f85385e = cVar.c().get(this.f85383c);
        List<com.umeng.commonsdk.statistics.proto.a> listH = cVar.h();
        if (listH == null || listH.size() <= 0) {
            return;
        }
        if (this.f85384d == null) {
            this.f85384d = new ArrayList();
        }
        for (com.umeng.commonsdk.statistics.proto.a aVar : listH) {
            if (this.f85383c.equals(aVar.f85451a)) {
                this.f85384d.add(aVar);
            }
        }
    }
}
