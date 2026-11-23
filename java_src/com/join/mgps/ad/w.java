package com.join.mgps.ad;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.join.mgps.pref.PrefDef_;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class w extends c<TTNativeExpressAd> implements TTAdSdk.InitCallback, TTAdNative.NativeExpressAdListener {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private TTAdNative f58470m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List<TTNativeExpressAd> f58471n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f58472o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f58473p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AdSlot f58474q;

    class a implements TTNativeExpressAd.AdInteractionListener {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdClicked(View view, int i10) {
            c.a<T> aVar = w.this.f58356k;
            if (aVar != 0) {
                aVar.onAdClick();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.AdInteractionListener
        public void onAdDismiss() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdShow(View view, int i10) {
            c.a<T> aVar = w.this.f58356k;
            if (aVar != 0) {
                aVar.onAdShow();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderFail(View view, String s10, int i10) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderSuccess(View view, float v10, float v11) {
        }
    }

    public w(Context ctx, String appId, String posId) {
        super(GlobalSetting.TT_SDK_WRAPPER, ctx, appId, posId);
        this.f58471n = new ArrayList();
        this.f58472o = false;
        this.f58473p = false;
    }

    private void f(int count, int width, int height) {
        this.f58474q = new AdSlot.Builder().setCodeId(this.f58354i).setAdCount(count).setExpressViewAcceptedSize(width, height).build();
    }

    @Override // com.join.mgps.ad.c
    public void a() {
        if (new PrefDef_(this.f58352g).sdkInit().d().booleanValue()) {
            return;
        }
        com.join.mgps.ad.adapter.f.d(this.f58352g, this.f58353h, new e6.a() { // from class: com.join.mgps.ad.v
            @Override // e6.a
            public final void a() {
                this.f58469a.onInitSuccess();
            }
        });
    }

    @Override // com.join.mgps.ad.c
    public void b(int count, int width, int height) {
        try {
            if (new PrefDef_(this.f58352g).sdkInit().d().booleanValue()) {
                return;
            }
            this.f58472o = false;
            f(count, width, height);
            if (this.f58473p) {
                return;
            }
            this.f58473p = true;
            if (this.f58470m == null && TTAdSdk.getAdManager() != null) {
                this.f58470m = TTAdSdk.getAdManager().createAdNative(this.f58352g);
            }
            TTAdNative tTAdNative = this.f58470m;
            if (tTAdNative != null) {
                tTAdNative.loadNativeExpressAd(this.f58474q, this);
            } else {
                onError(-1, "广告加载错误");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f58473p = false;
            onError(-1, "广告加载错误");
        }
    }

    @Override // com.join.mgps.ad.c
    public void c() {
        List<TTNativeExpressAd> list = this.f58471n;
        if (list != null) {
            Iterator<TTNativeExpressAd> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
        }
        this.f58471n = null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
    public void fail(int code, String msg) {
        onError(code, msg);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.join.mgps.ad.o, com.join.mgps.ad.m, com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
    public void onADLoaded(List<TTNativeExpressAd> list) {
        super.onADLoaded(list);
        this.f58472o = true;
        this.f58473p = false;
        if (this.f58471n == null || list == null) {
            return;
        }
        Iterator<TTNativeExpressAd> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().setExpressInteractionListener((TTNativeExpressAd.AdInteractionListener) new a());
        }
        this.f58471n.addAll(list);
        c.a<T> aVar = this.f58356k;
        if (aVar != 0) {
            aVar.onADLoaded((List<T>) list);
        }
    }

    @Override // com.join.mgps.ad.o, com.join.mgps.ad.m
    public void onError(int err, String msg) {
        super.onError(err, msg);
        this.f58472o = false;
        this.f58473p = false;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
    public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
        onADLoaded(list);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
    public void success() {
        onInitSuccess();
    }
}
