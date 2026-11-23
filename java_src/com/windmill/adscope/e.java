package com.windmill.adscope;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.beizi.fusion.NativeAd;
import com.beizi.fusion.NativeAdListener;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class e extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    NativeAd f85838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<WMNativeAdData> f85839b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    d.a f85840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    WMCustomNativeAdapter f85841d;

    public e(WMCustomNativeAdapter wMCustomNativeAdapter, d.a aVar) {
        this.f85841d = wMCustomNativeAdapter;
        this.f85840c = aVar;
    }

    private static float e() {
        float f10 = Resources.getSystem().getDisplayMetrics().density;
        float f11 = Resources.getSystem().getDisplayMetrics().widthPixels;
        if (f10 <= 0.0f) {
            f10 = 1.0f;
        }
        return (f11 / f10) + 0.5f;
    }

    @Override // com.windmill.adscope.d
    public final void a(Context context, final String str, Map<String, Object> map, Map<String, Object> map2) {
        float fE;
        int iIntValue;
        try {
            this.f85839b.clear();
            SigmobLog.i(e.class.getSimpleName() + " loadAd " + str);
            float fE2 = e();
            float fIntValue = 0.0f;
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    if (obj != null && ((Integer) obj).intValue() != 0) {
                        fE2 = ((Integer) obj).intValue();
                    }
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        fIntValue = ((Integer) obj2).intValue();
                    }
                    fE = fE2;
                } catch (Exception unused) {
                    fE = e();
                }
            } else {
                fE = fE2;
            }
            try {
                Object obj3 = map2.get(WMConstants.AD_TEMPLATE_TYPE);
                iIntValue = obj3 != null ? WMBidUtil.parseInt(obj3).intValue() : 1;
            } catch (Exception e10) {
                e10.printStackTrace();
                iIntValue = 1;
            }
            WMLogUtil.d(WMLogUtil.TAG, fE + "-----expressViewWidth--------expressViewHeight-------:" + fIntValue);
            NativeAd nativeAd = new NativeAd(context, str, new NativeAdListener() { // from class: com.windmill.adscope.e.1
                @Override // com.beizi.fusion.NativeAdListener
                public final void onAdClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onAdClick---------");
                    List<WMNativeAdData> list = e.this.f85839b;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    for (int i10 = 0; i10 < e.this.f85839b.size(); i10++) {
                        WMNativeAdData wMNativeAdData = e.this.f85839b.get(i10);
                        a aVar = (a) wMNativeAdData;
                        AdInfo adInFo = e.this.f85841d.getAdInFo(aVar);
                        WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener = aVar.f85831a;
                        if (nativeAdInteractionListener != null) {
                            nativeAdInteractionListener.onADClicked(adInFo);
                        }
                        d.a aVar2 = e.this.f85840c;
                        if (aVar2 != null) {
                            aVar2.onADClicked(wMNativeAdData);
                        }
                    }
                }

                @Override // com.beizi.fusion.NativeAdListener
                public final void onAdClosed() {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onAdClosed---------");
                }

                @Override // com.beizi.fusion.NativeAdListener
                public final void onAdFailed(int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onAdFailed---------".concat(String.valueOf(i10)));
                    if (e.this.f85840c != null) {
                        e.this.f85840c.onNativeAdFailToLoad(new WMAdapterError(i10, "onAdFailed"));
                    }
                }

                @Override // com.beizi.fusion.NativeAdListener
                public final void onAdLoaded(View view) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onAdLoaded---------".concat(String.valueOf(view)));
                    if (view == null) {
                        if (e.this.f85840c != null) {
                            e.this.f85840c.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "view is null " + str));
                            return;
                        }
                        return;
                    }
                    NativeAd nativeAd2 = e.this.f85838a;
                    int ecpm = nativeAd2 != null ? nativeAd2.getECPM() : 0;
                    e.this.f85839b.add(new a(view, e.this.f85841d));
                    e eVar = e.this;
                    d.a aVar = eVar.f85840c;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(eVar.f85839b, ecpm);
                    }
                }

                @Override // com.beizi.fusion.NativeAdListener
                public final void onAdShown() {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onAdShown---------");
                    List<WMNativeAdData> list = e.this.f85839b;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    for (int i10 = 0; i10 < e.this.f85839b.size(); i10++) {
                        WMNativeAdData wMNativeAdData = e.this.f85839b.get(i10);
                        a aVar = (a) wMNativeAdData;
                        AdInfo adInFo = e.this.f85841d.getAdInFo(aVar);
                        WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener = aVar.f85831a;
                        if (nativeAdInteractionListener != null) {
                            nativeAdInteractionListener.onADExposed(adInFo);
                        }
                        d.a aVar2 = e.this.f85840c;
                        if (aVar2 != null) {
                            aVar2.onADExposure(wMNativeAdData);
                        }
                    }
                }

                @Override // com.beizi.fusion.NativeAdListener
                public final void onAdClosed(View view) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onAdClosed---------".concat(String.valueOf(view)));
                    List<WMNativeAdData> list = e.this.f85839b;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    for (int i10 = 0; i10 < e.this.f85839b.size(); i10++) {
                        WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = ((a) e.this.f85839b.get(i10)).f85832b;
                        if (dislikeInteractionCallback != null) {
                            dislikeInteractionCallback.onSelected(0, "adscope", true);
                        }
                    }
                }
            }, 5000L, iIntValue);
            this.f85838a = nativeAd;
            nativeAd.loadAd(fE, fIntValue);
        } catch (Throwable th) {
            SigmobLog.i(e.class.getSimpleName() + " catch throwable " + th);
            d.a aVar = this.f85840c;
            if (aVar != null) {
                aVar.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.adscope.d
    public final void b() {
        NativeAd nativeAd = this.f85838a;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.f85838a = null;
        }
        List<WMNativeAdData> list = this.f85839b;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f85839b.clear();
        }
    }

    @Override // com.windmill.adscope.d
    public final void c() {
        NativeAd nativeAd = this.f85838a;
        if (nativeAd != null) {
            nativeAd.resume();
        }
    }

    @Override // com.windmill.adscope.d
    public final List<WMNativeAdData> d() {
        return this.f85839b;
    }

    @Override // com.windmill.adscope.d
    public final boolean a() {
        return this.f85839b.size() > 0;
    }
}
