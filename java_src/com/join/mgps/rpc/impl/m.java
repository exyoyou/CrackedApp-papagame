package com.join.mgps.rpc.impl;

import com.join.mgps.dto.OemData;
import com.join.mgps.dto.OemResponse;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class m implements com.join.mgps.rpc.m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static m f72434b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.l f72435a;

    public m(b7.l service) {
        this.f72435a = service;
    }

    public static m c() {
        if (f72434b == null) {
            f72434b = new m((b7.l) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72373p).create(b7.l.class));
        }
        return f72434b;
    }

    @Override // com.join.mgps.rpc.m
    public OemResponse<OemData.GiftGetCdkData> a(int uid, String token, String oid) {
        try {
            b7.l lVar = this.f72435a;
            if (lVar != null) {
                return lVar.a(uid, token, oid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.m
    public OemResponse<OemData.GiftDetailData> b(int uid, String oid) {
        try {
            b7.l lVar = this.f72435a;
            if (lVar != null) {
                return lVar.b(uid, oid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
