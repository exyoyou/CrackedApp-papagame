package com.efs.sdk.net.a;

import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f26528c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, c> f26529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, d> f26530b;

    private a() {
        b();
    }

    public static a a() {
        if (f26528c == null) {
            f26528c = new a();
        }
        return f26528c;
    }

    private void b() {
        if (this.f26529a == null) {
            this.f26529a = new HashMap<>();
        }
        this.f26529a.clear();
    }

    public final d c(String str) {
        if (this.f26530b == null) {
            this.f26530b = new HashMap<>();
        }
        if (this.f26530b.containsKey(str)) {
            return this.f26530b.get(str);
        }
        d dVar = new d();
        dVar.A = str;
        dVar.D = System.currentTimeMillis();
        this.f26530b.put(str, dVar);
        return dVar;
    }

    public final void d(String str) {
        HashMap<String, d> map = this.f26530b;
        if (map == null || !map.containsKey(str)) {
            return;
        }
        this.f26530b.remove(str);
    }

    public final c a(String str) {
        if (this.f26529a == null) {
            b();
        }
        c cVar = this.f26529a.get(str);
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        cVar2.f26552a = str;
        cVar2.f26553b = System.currentTimeMillis();
        this.f26529a.put(str, cVar2);
        return cVar2;
    }

    public final void b(String str) {
        HashMap<String, c> map = this.f26529a;
        if (map == null || !map.containsKey(str)) {
            return;
        }
        this.f26529a.remove(str);
    }
}
