package com.join.mgps.rpc.impl;

import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class f implements com.join.mgps.rpc.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static f f72416b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.f f72417a;

    public f(b7.f service) {
        this.f72417a = service;
    }

    public static f b() {
        if (f72416b == null) {
            f72416b = new f((b7.f) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72400y).create(b7.f.class));
        }
        return f72416b;
    }

    public static f c() {
        f fVar = new f((b7.f) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72400y).create(b7.f.class));
        f72416b = fVar;
        return fVar;
    }

    @Override // com.join.mgps.rpc.g
    public ResultMainBean<List<AppBean>> a(Map<String, String> request) {
        try {
            b7.f fVar = this.f72417a;
            if (fVar != null) {
                return fVar.a(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
