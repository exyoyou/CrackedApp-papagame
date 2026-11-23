package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private dg f7877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7878b;

    public interface a {
        void a();

        void a(int i10, String str, NativeResponse nativeResponse);

        void a(NativeResponse nativeResponse);

        void a(NativeResponse nativeResponse, int i10);

        void a(List<NativeResponse> list);

        void b();

        void b(int i10, String str, NativeResponse nativeResponse);

        void b(NativeResponse nativeResponse);

        void c();
    }

    public interface b {
        void a(NativeResponse nativeResponse);
    }

    public g(Context context, String str, a aVar, boolean z10, int i10) {
        this(context, aVar, new dg(context, str, "feed", z10, i10));
    }

    public void a() {
        dg dgVar = this.f7877a;
        if (dgVar != null) {
            dgVar.p();
        }
    }

    public void b(boolean z10) {
        dg dgVar = this.f7877a;
        if (dgVar != null) {
            dgVar.d(z10);
        }
    }

    public void c(boolean z10) {
        dg dgVar = this.f7877a;
        if (dgVar != null) {
            dgVar.b(z10);
        }
    }

    public g(Context context, String str, BaiduNativeManager.ExpressAdListener expressAdListener, boolean z10, int i10) {
        dg dgVar = new dg(context, str, "feed", z10, i10);
        this.f7877a = dgVar;
        dgVar.a(expressAdListener);
        this.f7877a.a(1);
    }

    public void a(b bVar) {
        dg dgVar = this.f7877a;
        if (dgVar != null) {
            dgVar.a(bVar);
        }
    }

    public void b() {
        b((RequestParameters) null);
    }

    public void b(RequestParameters requestParameters) {
        if (requestParameters == null) {
            requestParameters = new RequestParameters.Builder().build();
        }
        dg dgVar = this.f7877a;
        if (dgVar != null) {
            dgVar.h(this.f7878b);
        }
        this.f7877a.a(requestParameters);
        this.f7877a.a();
    }

    public void a(boolean z10) {
        dg dgVar = this.f7877a;
        if (dgVar != null) {
            dgVar.c(z10);
        }
    }

    public g(Context context, String str, BaiduNativeManager.EntryAdListener entryAdListener, boolean z10, int i10) {
        dg dgVar = new dg(context, str, IAdInterListener.AdProdType.PRODUCT_SONES, z10, i10);
        this.f7877a = dgVar;
        dgVar.a(entryAdListener);
    }

    public void a(int i10) {
        dg dgVar = this.f7877a;
        if (dgVar != null) {
            dgVar.f7582r = i10;
        }
    }

    public g(Context context, String str, a aVar, boolean z10, int i10, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            if (str2.equals(IAdInterListener.AdProdType.PRODUCT_INSITE)) {
                this.f7877a = new dg(context, str, IAdInterListener.AdProdType.PRODUCT_INSITE, z10, i10);
            } else if (str2.equals(IAdInterListener.AdProdType.PRODUCT_SUG)) {
                this.f7877a = new dg(context, str, IAdInterListener.AdProdType.PRODUCT_SUG, z10, i10);
            } else if (str2.equals(IAdInterListener.AdProdType.PRODUCT_PREROLL)) {
                this.f7877a = new dg(context, str, "video", z10, i10);
            } else {
                this.f7877a = new dg(context, str, "feed", z10, i10);
            }
        }
        this.f7877a.a(aVar);
    }

    public String a(RequestParameters requestParameters) {
        if (this.f7877a == null) {
            return null;
        }
        if (requestParameters == null) {
            requestParameters = new RequestParameters.Builder().build();
        }
        this.f7877a.h(this.f7878b);
        this.f7877a.a(requestParameters);
        return this.f7877a.l();
    }

    public void b(String str) {
        this.f7878b = str;
    }

    public void a(String str) {
        dg dgVar = this.f7877a;
        if (dgVar != null) {
            dgVar.b(str);
        }
    }

    public g(Context context, a aVar, dg dgVar) {
        this.f7877a = dgVar;
        dgVar.a(aVar);
    }
}
