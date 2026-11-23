package com.join.mgps.ad;

import android.content.Context;
import com.join.mgps.pref.PrefDef_;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.util.AdError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class e extends c<NativeExpressADView> implements NativeExpressAD.NativeExpressADListener {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static boolean f58371q;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private NativeExpressAD f58372m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List<NativeExpressADView> f58373n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f58374o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f58375p;

    public e(Context ctx, String appId, String posId) {
        super("GDT", ctx, appId, posId);
        this.f58373n = new ArrayList();
        this.f58374o = false;
        this.f58375p = false;
    }

    @Override // com.join.mgps.ad.c
    public void a() {
        try {
            if (new PrefDef_(this.f58352g).sdkInit().d().booleanValue()) {
                return;
            }
            if (f58371q) {
                onInitSuccess();
            } else {
                GDTAdSdk.init(this.f58352g, this.f58353h);
                GlobalSetting.setChannel(1);
                GlobalSetting.setEnableMediationTool(true);
                f58371q = true;
                onInitSuccess();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.ad.c
    public void b(int count, int width, int height) {
        this.f58374o = false;
        try {
            if (new PrefDef_(this.f58352g).sdkInit().d().booleanValue() || this.f58375p) {
                return;
            }
            this.f58375p = true;
            if (this.f58372m == null) {
                this.f58372m = new NativeExpressAD(this.f58352g, new ADSize(width, height), this.f58354i, this);
            }
            this.f58372m.loadAD(count);
        } catch (Exception e10) {
            e10.printStackTrace();
            onError(-1, "广告初始化错误");
        }
    }

    @Override // com.join.mgps.ad.c
    public void c() {
        List<NativeExpressADView> list = this.f58373n;
        if (list != null) {
            Iterator<NativeExpressADView> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
        }
        this.f58373n = null;
    }

    @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
    public void onADClicked(NativeExpressADView nativeExpressADView) {
        c.a<T> aVar = this.f58356k;
        if (aVar != 0) {
            aVar.onAdClick();
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
    public void onADClosed(NativeExpressADView nativeExpressADView) {
        c.a<T> aVar = this.f58356k;
        if (aVar != 0) {
            aVar.a((T) nativeExpressADView);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
    public void onADExposure(NativeExpressADView nativeExpressADView) {
        c.a<T> aVar = this.f58356k;
        if (aVar != 0) {
            aVar.onAdShow();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
    public void onADLeftApplication(NativeExpressADView nativeExpressADView) {
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.join.mgps.ad.o, com.join.mgps.ad.m, com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
    public void onADLoaded(List<NativeExpressADView> list) {
        this.f58374o = true;
        this.f58375p = false;
        List<NativeExpressADView> list2 = this.f58373n;
        if (list2 != null) {
            list2.addAll(list);
            c.a<T> aVar = this.f58356k;
            if (aVar != 0) {
                aVar.onADLoaded((List<T>) list);
            }
        }
    }

    @Override // com.join.mgps.ad.o, com.join.mgps.ad.m
    public void onError(int err, String msg) {
        super.onError(err, msg);
        this.f58374o = false;
        this.f58375p = false;
    }

    @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
    public void onNoAD(AdError adError) {
        this.f58374o = false;
        this.f58375p = false;
    }

    @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
    public void onRenderFail(NativeExpressADView nativeExpressADView) {
    }

    @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
    public void onRenderSuccess(NativeExpressADView nativeExpressADView) {
    }
}
