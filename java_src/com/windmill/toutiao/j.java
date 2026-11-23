package com.windmill.toutiao;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class j extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f87817a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    f.a f87818b;

    public j(f.a aVar) {
        this.f87818b = aVar;
    }

    @Override // com.windmill.toutiao.f
    public final void a(double d10) {
        TTFeedAd tTFeedAd;
        List<WMNativeAdData> list = this.f87817a;
        if (list == null || list.size() <= 0 || (tTFeedAd = (TTFeedAd) ((h) this.f87817a.get(0)).getOriginNativeAdData()) == null) {
            return;
        }
        tTFeedAd.win(Double.valueOf(d10));
    }

    @Override // com.windmill.toutiao.f
    public final void b() {
        this.f87818b = null;
    }

    @Override // com.windmill.toutiao.f
    public final List<WMNativeAdData> c() {
        return this.f87817a;
    }

    @Override // com.windmill.toutiao.f
    public final Map<String, Object> d() {
        TTFeedAd tTFeedAd;
        List<WMNativeAdData> list = this.f87817a;
        if (list == null || list.size() <= 0 || (tTFeedAd = (TTFeedAd) ((h) this.f87817a.get(0)).getOriginNativeAdData()) == null) {
            return null;
        }
        return tTFeedAd.getMediaExtraInfo();
    }

    @Override // com.windmill.toutiao.f
    public final void a(double d10, String str, String str2) {
        TTFeedAd tTFeedAd;
        List<WMNativeAdData> list = this.f87817a;
        if (list == null || list.size() <= 0 || (tTFeedAd = (TTFeedAd) ((h) this.f87817a.get(0)).getOriginNativeAdData()) == null) {
            return;
        }
        tTFeedAd.loss(Double.valueOf(d10), str, str2);
    }

    @Override // com.windmill.toutiao.f
    public final void a(Context context, final WMCustomNativeAdapter wMCustomNativeAdapter, final String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87817a.clear();
            SigmobLog.i(j.class.getSimpleName() + " loadAd " + str);
            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setImageAcceptedSize(1080, 1920).setSupportDeepLink(true).setUserID("");
            userID.setAdCount(wMCustomNativeAdapter.getBiddingType() != 1 ? wMCustomNativeAdapter.getAdCount() : 1);
            if (wMCustomNativeAdapter.getBiddingType() == 0) {
                userID.withBid(wMCustomNativeAdapter.getHbResponseStr());
            }
            tTAdNative.loadDrawFeedAd(userID.build(), new TTAdNative.DrawFeedAdListener() { // from class: com.windmill.toutiao.j.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
                public final void onDrawFeedAdLoad(List<TTDrawFeedAd> list) {
                    Map<String, Object> mediaExtraInfo;
                    if (list == null || list.isEmpty()) {
                        if (j.this.f87818b != null) {
                            j.this.f87818b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onFeedAdLoad-----------" + list.size());
                    Object obj = null;
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        TTDrawFeedAd tTDrawFeedAd = list.get(i10);
                        j.this.f87817a.add(new h(tTDrawFeedAd, wMCustomNativeAdapter));
                        if (obj == null && (mediaExtraInfo = tTDrawFeedAd.getMediaExtraInfo()) != null) {
                            obj = mediaExtraInfo.get("price");
                        }
                    }
                    j jVar = j.this;
                    f.a aVar = jVar.f87818b;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(jVar.f87817a, obj);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callLoadSuccess(list);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
                public final void onError(int i10, String str2) {
                    f.a aVar = j.this.f87818b;
                    if (aVar != null) {
                        aVar.onNativeAdFailToLoad(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str2), str2 + " codeId " + str));
                    }
                }
            });
        } catch (Throwable th) {
            if (this.f87818b != null) {
                this.f87818b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.toutiao.f
    public final boolean a() {
        return this.f87817a.size() > 0;
    }
}
