package com.join.mgps.rpc.impl;

import com.join.mgps.dto.UserPurchaseResponse;
import com.join.mgps.rpc.p;
import com.join.mgps.rpc.retrofit2.RetrofitApi;

/* JADX INFO: loaded from: classes3.dex */
public class o implements p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static o f72438b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f72439c = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.n f72440a;

    public o(b7.n service) {
        this.f72440a = service;
    }

    public static o b() {
        if (f72438b == null) {
            String str = com.join.mgps.rpc.h.f72369o;
            f72439c = str;
            f72438b = new o((b7.n) RetrofitApi.getRetrofit2(str).create(b7.n.class));
        } else if (!com.join.mgps.rpc.h.f72369o.equals(f72439c)) {
            String str2 = com.join.mgps.rpc.h.f72369o;
            f72439c = str2;
            f72438b = new o((b7.n) RetrofitApi.getRetrofit2(str2).create(b7.n.class));
        }
        return f72438b;
    }

    @Override // com.join.mgps.rpc.p
    public UserPurchaseResponse a(String uid, String token) {
        try {
            b7.n nVar = this.f72440a;
            if (nVar != null) {
                return nVar.a(uid, token).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
