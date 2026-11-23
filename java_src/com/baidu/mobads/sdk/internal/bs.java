package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.ExpressAdData;
import com.baidu.mobads.sdk.api.ExpressResponse;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public class bs implements ExpressResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f7623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7624b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ExpressResponse.ExpressInteractionListener f7625c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExpressResponse.ExpressAdDownloadWindowListener f7626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExpressResponse.ExpressDislikeListener f7627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ExpressResponse.ExpressCloseListener f7628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final dg f7629g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a f7630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewGroup f7631i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ExpressAdData f7632j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f7633k;

    public bs(Context context, dg dgVar, a aVar) {
        this.f7623a = context;
        this.f7629g = dgVar;
        this.f7630h = aVar;
    }

    public void a(int i10) {
        this.f7624b = i10;
    }

    public void b() {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f7625c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdClick();
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void biddingFail(LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        if (this.f7629g != null) {
            String strM = this.f7633k;
            a aVar = this.f7630h;
            if (aVar != null) {
                strM = aVar.M();
            }
            this.f7629g.a(strM, false, linkedHashMap, biddingListener);
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void biddingSuccess(LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        dg dgVar;
        a aVar = this.f7630h;
        if (aVar == null || (dgVar = this.f7629g) == null) {
            return;
        }
        dgVar.a(aVar.M(), true, linkedHashMap, biddingListener);
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void bindInteractionActivity(Activity activity) {
        dg dgVar = this.f7629g;
        if (dgVar != null) {
            dgVar.b(activity);
        }
    }

    public void c() {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f7625c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdExposed();
        }
    }

    public void d() {
        ExpressResponse.ExpressDislikeListener expressDislikeListener = this.f7627e;
        if (expressDislikeListener != null) {
            expressDislikeListener.onDislikeWindowShow();
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void destroy() {
        a aVar;
        ViewGroup viewGroup;
        dg dgVar = this.f7629g;
        if (dgVar == null || (aVar = this.f7630h) == null || (viewGroup = this.f7631i) == null) {
            return;
        }
        dgVar.b(viewGroup, aVar);
    }

    public void e() {
        ExpressResponse.ExpressDislikeListener expressDislikeListener = this.f7627e;
        if (expressDislikeListener != null) {
            expressDislikeListener.onDislikeWindowClose();
        }
    }

    public void f() {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f7625c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdUnionClick();
        }
    }

    public void g() {
        ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener = this.f7626d;
        if (expressAdDownloadWindowListener != null) {
            expressAdDownloadWindowListener.onADPrivacyClick();
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public int getAdActionType() {
        return this.f7624b;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public ExpressAdData getAdData() {
        return this.f7632j;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public Object getAdDataForKey(String str) {
        if (this.f7630h != null) {
            return "request_id".equals(str) ? this.f7630h.Z() : this.f7630h.a(str);
        }
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public String getECPMLevel() {
        a aVar = this.f7630h;
        return aVar != null ? aVar.A() : "";
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public View getExpressAdView() {
        a aVar;
        if (this.f7631i == null && (aVar = this.f7630h) != null) {
            this.f7631i = this.f7629g.a(aVar);
        }
        return this.f7631i;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public String getPECPM() {
        a aVar = this.f7630h;
        return aVar != null ? aVar.B() : "";
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public int getStyleType() {
        a aVar = this.f7630h;
        if (aVar != null) {
            return aVar.w();
        }
        return 0;
    }

    public void h() {
        ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener = this.f7626d;
        if (expressAdDownloadWindowListener != null) {
            expressAdDownloadWindowListener.onADFunctionClick();
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public boolean isAdAvailable() {
        return this.f7630h != null && System.currentTimeMillis() - this.f7630h.z() <= this.f7630h.K();
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public boolean isReady(Context context) {
        return this.f7630h != null && System.currentTimeMillis() - this.f7630h.z() <= this.f7630h.K();
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void render() {
        a aVar;
        dg dgVar = this.f7629g;
        if (dgVar == null || (aVar = this.f7630h) == null) {
            return;
        }
        if (this.f7631i == null) {
            this.f7631i = dgVar.a(aVar);
        }
        this.f7629g.a(this.f7631i, this.f7630h);
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setAdCloseListener(ExpressResponse.ExpressCloseListener expressCloseListener) {
        this.f7628f = expressCloseListener;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setAdDislikeListener(ExpressResponse.ExpressDislikeListener expressDislikeListener) {
        this.f7627e = expressDislikeListener;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setAdPrivacyListener(ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener) {
        this.f7626d = expressAdDownloadWindowListener;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setExpectedSizePixel(int i10, int i11) {
        dg dgVar = this.f7629g;
        if (dgVar != null) {
            dgVar.a(i10, i11);
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setInteractionListener(ExpressResponse.ExpressInteractionListener expressInteractionListener) {
        this.f7625c = expressInteractionListener;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public boolean switchTheme(int i10) {
        dg dgVar = this.f7629g;
        if (dgVar != null) {
            return dgVar.a(this.f7631i, this.f7630h, i10);
        }
        return false;
    }

    public void a(String str) {
        this.f7633k = str;
    }

    public String a() {
        a aVar = this.f7630h;
        return aVar != null ? aVar.M() : "";
    }

    public void b(String str) {
        dg dgVar;
        a aVar = this.f7630h;
        if (aVar != null && (dgVar = this.f7629g) != null) {
            this.f7632j = new ExpressAdData(aVar, dgVar.g());
        }
        ExpressResponse.ExpressDislikeListener expressDislikeListener = this.f7627e;
        if (expressDislikeListener != null) {
            expressDislikeListener.onDislikeItemClick(str);
        }
    }

    public void a(View view, int i10, int i11) {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f7625c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdRenderSuccess(view, i10, i11);
        }
    }

    public void a(View view, String str, int i10) {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f7625c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdRenderFail(view, str, i10);
        }
    }

    public void b(boolean z10) {
        ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener = this.f7626d;
        if (expressAdDownloadWindowListener != null) {
            if (z10) {
                expressAdDownloadWindowListener.adDownloadWindowShow();
            } else {
                expressAdDownloadWindowListener.adDownloadWindowClose();
            }
        }
    }

    public void a(ExpressResponse expressResponse) {
        ExpressResponse.ExpressCloseListener expressCloseListener = this.f7628f;
        if (expressCloseListener != null) {
            expressCloseListener.onAdClose(expressResponse);
        }
    }

    public void a(boolean z10) {
        ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener = this.f7626d;
        if (expressAdDownloadWindowListener != null) {
            if (z10) {
                expressAdDownloadWindowListener.onADPermissionShow();
            } else {
                expressAdDownloadWindowListener.onADPermissionClose();
            }
        }
    }
}
