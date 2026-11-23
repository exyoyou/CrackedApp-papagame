package com.join.mgps.rpc.impl;

import com.join.mgps.dto.AccountGetVoucherResult;
import com.join.mgps.dto.AccountPaBiBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PapayWalletResultMain;
import com.join.mgps.dto.PayActivityConfig;
import com.join.mgps.dto.ResultMyVoucherBean;
import com.join.mgps.dto.ResultMyVoucherGameBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class n implements com.join.mgps.rpc.o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static n f72436b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.m f72437a;

    public n(b7.m service) {
        this.f72437a = service;
    }

    public static n i() {
        if (f72436b == null) {
            f72436b = new n((b7.m) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72349j).create(b7.m.class));
        }
        return f72436b;
    }

    @Override // com.join.mgps.rpc.o
    public PapayVoucherResultMain<AccountGetVoucherResult> a(Map<String, String> params) {
        try {
            b7.m mVar = this.f72437a;
            if (mVar != null) {
                return mVar.a(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.o
    public PapayWalletResultMain b(Map<String, String> params) {
        try {
            b7.m mVar = this.f72437a;
            if (mVar != null) {
                return mVar.b(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.o
    public PapayVoucherResultMain<ResultMyVoucherGameBean> c(Map<String, String> params) {
        try {
            b7.m mVar = this.f72437a;
            if (mVar != null) {
                return mVar.c(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.o
    public PapayWalletResultMain d(Map<String, String> params) {
        try {
            b7.m mVar = this.f72437a;
            if (mVar != null) {
                return mVar.d(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.o
    public PapayVoucherResultMain<PayActivityConfig> e(Map<String, String> params) {
        try {
            b7.m mVar = this.f72437a;
            if (mVar != null) {
                return mVar.e(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.o
    public PapayVoucherResultMain<ResultMyVoucherBean> f(Map<String, String> params) {
        try {
            b7.m mVar = this.f72437a;
            if (mVar != null) {
                return mVar.f(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.o
    public PapayVoucherResultMain<ResultMyVoucherBean> g(Map<String, String> params) {
        try {
            b7.m mVar = this.f72437a;
            if (mVar != null) {
                return mVar.g(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.o
    public PapayVoucherResultMain<AccountPaBiBean> h(Map<String, String> params) {
        try {
            b7.m mVar = this.f72437a;
            if (mVar != null) {
                return mVar.h(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
