package com.join.mgps.rpc.impl;

import com.join.mgps.rpc.retrofit2.RetrofitApi;

/* JADX INFO: loaded from: classes3.dex */
public class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static j f72427b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.j f72428a;

    public j(b7.j service) {
        this.f72428a = service;
    }

    public static j b() {
        if (f72427b == null) {
            f72427b = new j((b7.j) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.F).create(b7.j.class));
        }
        return f72427b;
    }

    public b7.j a() {
        return this.f72428a;
    }
}
