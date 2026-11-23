package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class g extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f86134a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f86135b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    d.a f86136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    WMCustomNativeAdapter f86137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f86138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NativeUnifiedAD f86139f;

    public g(boolean z10, WMCustomNativeAdapter wMCustomNativeAdapter, d.a aVar) {
        this.f86138e = z10;
        this.f86137d = wMCustomNativeAdapter;
        this.f86136c = aVar;
    }

    @Override // com.windmill.gdt.d
    public final void a(Activity activity) {
        e eVar;
        WeakReference<Activity> weakReference;
        NativeUnifiedADData nativeUnifiedADData;
        List<WMNativeAdData> list = this.f86134a;
        if (list != null) {
            for (WMNativeAdData wMNativeAdData : list) {
                if ((wMNativeAdData instanceof e) && (weakReference = (eVar = (e) wMNativeAdData).f86107b) != null && activity.equals(weakReference.get()) && (nativeUnifiedADData = eVar.f86106a) != null) {
                    nativeUnifiedADData.resume();
                }
            }
        }
    }

    @Override // com.windmill.gdt.d
    public final void b() {
        List<WMNativeAdData> list = this.f86134a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f86134a.clear();
        }
        if (this.f86139f != null) {
            this.f86139f = null;
        }
    }

    @Override // com.windmill.gdt.d
    public final List<WMNativeAdData> c() {
        return this.f86134a;
    }

    @Override // com.windmill.gdt.d
    public final Map<String, Object> d() {
        List<WMNativeAdData> list = this.f86134a;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return GDTAdapterProxy.getRequestId(((e) this.f86134a.get(0)).f86106a.getExtraInfo());
    }

    @Override // com.windmill.gdt.d
    public final void a(Context context, final String str, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            this.f86134a.clear();
            this.f86135b = false;
            SigmobLog.i(g.class.getSimpleName() + " loadAd " + str);
            NativeADUnifiedListener nativeADUnifiedListener = new NativeADUnifiedListener() { // from class: com.windmill.gdt.g.1
                @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
                public final void onADLoaded(List<NativeUnifiedADData> list) {
                    SigmobLog.i(g.this.f86137d.getClass().getSimpleName() + " onADLoad()");
                    if (list == null || list.isEmpty()) {
                        if (g.this.f86136c != null) {
                            g.this.f86136c.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    int ecpm = 0;
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        NativeUnifiedADData nativeUnifiedADData = list.get(i10);
                        if (nativeUnifiedADData != null && g.this.f86135b) {
                            nativeUnifiedADData.setDownloadConfirmListener(GDTAdapterProxy.DOWNLOAD_CONFIRM_LISTENER);
                        }
                        g gVar = g.this;
                        g.this.f86134a.add(new e(nativeUnifiedADData, gVar.f86137d, map2, gVar.f86138e));
                        if (ecpm == 0 && nativeUnifiedADData != null) {
                            ecpm = nativeUnifiedADData.getECPM();
                        }
                    }
                    g gVar2 = g.this;
                    d.a aVar = gVar2.f86136c;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(gVar2.f86134a, ecpm);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter = g.this.f86137d;
                    if (wMCustomNativeAdapter != null) {
                        wMCustomNativeAdapter.callLoadSuccess(list);
                    }
                }

                @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
                public final void onNoAD(AdError adError) {
                    SigmobLog.i(g.this.f86137d.getClass().getSimpleName() + " onNoAD " + adError.getErrorCode() + ":" + adError.getErrorMsg());
                    if (g.this.f86136c != null) {
                        g.this.f86136c.onNativeAdFailToLoad(new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg()));
                    }
                }
            };
            this.f86139f = this.f86137d.getBiddingType() == 0 ? new NativeUnifiedAD(context, str, nativeADUnifiedListener, this.f86137d.getHbResponseStr()) : new NativeUnifiedAD(context, str, nativeADUnifiedListener);
            NativeUnifiedAD nativeUnifiedAD = this.f86139f;
            if (map2 != null) {
                Object obj = map2.get("showDownloadDialog");
                if (obj == null || !obj.equals("1")) {
                    this.f86135b = false;
                } else {
                    this.f86135b = true;
                }
                Object obj2 = map2.get(WMConstants.MIN_VIDEO_DURATION);
                Object obj3 = map2.get(WMConstants.MAX_VIDEO_DURATION);
                if (!TextUtils.isEmpty((CharSequence) obj2)) {
                    try {
                        int iIntValue = WMBidUtil.parseInt(obj2).intValue();
                        if (iIntValue >= 5) {
                            nativeUnifiedAD.setMinVideoDuration(iIntValue);
                        }
                    } catch (Exception unused) {
                        nativeUnifiedAD.setMinVideoDuration(5);
                    }
                }
                if (!TextUtils.isEmpty((CharSequence) obj3)) {
                    try {
                        int iIntValue2 = WMBidUtil.parseInt(obj3).intValue();
                        if (iIntValue2 <= 60) {
                            nativeUnifiedAD.setMaxVideoDuration(iIntValue2);
                        }
                    } catch (Exception unused2) {
                        nativeUnifiedAD.setMaxVideoDuration(60);
                    }
                }
            }
            LoadAdParams loadAdParams = GdtUtil.getLoadAdParams(g.class, map2);
            if (loadAdParams != null) {
                this.f86139f.loadData(this.f86137d.getAdCount(), loadAdParams);
            } else {
                this.f86139f.loadData(this.f86137d.getAdCount());
            }
        } catch (Throwable th) {
            SigmobLog.i(g.class.getSimpleName() + " catch throwable " + th);
            d.a aVar = this.f86136c;
            if (aVar != null) {
                aVar.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.gdt.d
    public final boolean a() {
        return this.f86134a.size() > 0;
    }
}
