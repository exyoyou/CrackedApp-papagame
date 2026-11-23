package com.cmic.gen.sdk.c.d;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f24440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, List<String>> f24441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24442c;

    public b(int i10, Map<String, List<String>> map, String str) {
        this.f24440a = i10;
        this.f24441b = map;
        this.f24442c = str;
    }

    public int a() {
        return this.f24440a;
    }

    public Map<String, List<String>> b() {
        Map<String, List<String>> map = this.f24441b;
        return map == null ? new HashMap() : map;
    }

    public String c() {
        String str = this.f24442c;
        return str == null ? "" : str;
    }

    public boolean d() {
        int i10 = this.f24440a;
        return i10 == 302 || i10 == 301;
    }
}
