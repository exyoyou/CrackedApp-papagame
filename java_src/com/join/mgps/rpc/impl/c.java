package com.join.mgps.rpc.impl;

import com.join.mgps.dto.ArchiveDataBean;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class c implements com.join.mgps.rpc.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f72410b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.c f72411a;

    public c(b7.c server) {
        this.f72411a = server;
    }

    public static c k() {
        if (f72410b == null) {
            f72410b = new c((b7.c) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72403z).create(b7.c.class));
        }
        return f72410b;
    }

    @Override // com.join.mgps.rpc.d
    public ArchiveEvaluteDataBean a(Map<String, String> args) {
        b7.c cVar = this.f72411a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.a(args).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ArchiveResponseMain<ArchiveResponseMessage> b(Map<String, String> args) {
        b7.c cVar = this.f72411a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.b(args).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ArchiveResponseMain<ArchiveResponseMessage> c(Map<String, String> args) {
        b7.c cVar = this.f72411a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.c(args).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ArchiveResponseMain<ArchiveResponseMessage> d(Map<String, String> args) {
        b7.c cVar = this.f72411a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.d(args).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ArchiveDownDataBean e(Map<String, String> args) {
        b7.c cVar = this.f72411a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.e(args).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ArchiveShopDataBean f(Map<String, String> args) {
        b7.c cVar = this.f72411a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.h(args).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ArchiveDataBean g(Map<String, String> args) {
        b7.c cVar = this.f72411a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.f(args).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ArchiveShopDataBean h(Map<String, String> args) {
        b7.c cVar = this.f72411a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.g(args).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ArchiveNumDataBean i(Map<String, String> args) {
        b7.c cVar = this.f72411a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.i(args).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public b7.c j() {
        return this.f72411a;
    }
}
