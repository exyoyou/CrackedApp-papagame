package com.windmill.toutiao;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class k extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f87822a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    f.a f87823b;

    public k(f.a aVar) {
        this.f87823b = aVar;
    }

    @Override // com.windmill.toutiao.f
    public final void a(double d10) {
        TTNativeExpressAd tTNativeExpressAd;
        List<WMNativeAdData> list = this.f87822a;
        if (list == null || list.size() <= 0 || (tTNativeExpressAd = (TTNativeExpressAd) ((a) this.f87822a.get(0)).getOriginNativeAdData()) == null) {
            return;
        }
        tTNativeExpressAd.win(Double.valueOf(d10));
    }

    @Override // com.windmill.toutiao.f
    public final void b() {
        List<WMNativeAdData> list = this.f87822a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f87822a.clear();
        }
        this.f87823b = null;
    }

    @Override // com.windmill.toutiao.f
    public final List<WMNativeAdData> c() {
        return this.f87822a;
    }

    @Override // com.windmill.toutiao.f
    public final Map<String, Object> d() {
        TTNativeExpressAd tTNativeExpressAd;
        List<WMNativeAdData> list = this.f87822a;
        if (list == null || list.size() <= 0 || (tTNativeExpressAd = (TTNativeExpressAd) ((a) this.f87822a.get(0)).getOriginNativeAdData()) == null) {
            return null;
        }
        return tTNativeExpressAd.getMediaExtraInfo();
    }

    @Override // com.windmill.toutiao.f
    public final void a(double d10, String str, String str2) {
        TTNativeExpressAd tTNativeExpressAd;
        List<WMNativeAdData> list = this.f87822a;
        if (list == null || list.size() <= 0 || (tTNativeExpressAd = (TTNativeExpressAd) ((a) this.f87822a.get(0)).getOriginNativeAdData()) == null) {
            return;
        }
        tTNativeExpressAd.loss(Double.valueOf(d10), str, str2);
    }

    @Override // com.windmill.toutiao.f
    public final void a(Context context, final WMCustomNativeAdapter wMCustomNativeAdapter, final String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87822a.clear();
            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
            float f10 = 0.0f;
            float f11 = 340.0f;
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    float f12 = (obj == null || ((Integer) obj).intValue() == 0) ? 340.0f : Float.parseFloat(String.valueOf(obj));
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        f10 = Float.parseFloat(String.valueOf(obj2));
                    }
                    f11 = f12;
                } catch (Exception e10) {
                    WMLogUtil.d(WMLogUtil.TAG, "expressViewWidth:" + e10.getMessage());
                }
            }
            WMLogUtil.d(WMLogUtil.TAG, f11 + "-----expressViewWidth--------expressViewHeight-------:" + f10);
            AdSlot.Builder expressViewAcceptedSize = new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(f11, f10);
            if (wMCustomNativeAdapter.getBiddingType() == 0) {
                expressViewAcceptedSize.withBid(wMCustomNativeAdapter.getHbResponseStr());
            }
            if (wMCustomNativeAdapter.getBiddingType() == 1) {
                expressViewAcceptedSize.setAdCount(1);
            } else {
                expressViewAcceptedSize.setAdCount(wMCustomNativeAdapter.getAdCount());
            }
            tTAdNative.loadNativeExpressAd(expressViewAcceptedSize.build(), new TTAdNative.NativeExpressAdListener() { // from class: com.windmill.toutiao.k.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                public final void onError(int i10, String str2) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onError---------:" + i10 + ":" + str2);
                    f.a aVar = k.this.f87823b;
                    if (aVar != null) {
                        aVar.onNativeAdFailToLoad(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str2), str2 + " codeId " + str));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                public final void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                    Map<String, Object> mediaExtraInfo;
                    if (list == null || list.isEmpty()) {
                        if (k.this.f87823b != null) {
                            k.this.f87823b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onNativeExpressAdLoad---------" + list.size());
                    Object obj3 = null;
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        TTNativeExpressAd tTNativeExpressAd = list.get(i10);
                        k.this.f87822a.add(new a(tTNativeExpressAd, wMCustomNativeAdapter));
                        if (obj3 == null && (mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo()) != null) {
                            obj3 = mediaExtraInfo.get("price");
                        }
                    }
                    k kVar = k.this;
                    f.a aVar = kVar.f87823b;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(kVar.f87822a, obj3);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callLoadSuccess(list);
                    }
                }
            });
        } catch (Throwable th) {
            if (this.f87823b != null) {
                this.f87823b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.toutiao.f
    public final boolean a() {
        return this.f87822a.size() > 0;
    }
}
