package com.windmill.toutiao;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.Constants;
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
public final class l extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f87827a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    f.a f87828b;

    public l(f.a aVar) {
        this.f87828b = aVar;
    }

    @Override // com.windmill.toutiao.f
    public final void a(double d10) {
        TTFeedAd tTFeedAd;
        List<WMNativeAdData> list = this.f87827a;
        if (list == null || list.size() <= 0 || (tTFeedAd = (TTFeedAd) ((g) this.f87827a.get(0)).getOriginNativeAdData()) == null) {
            return;
        }
        tTFeedAd.win(Double.valueOf(d10));
    }

    @Override // com.windmill.toutiao.f
    public final void b() {
        List<WMNativeAdData> list = this.f87827a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f87827a.clear();
        }
        this.f87828b = null;
    }

    @Override // com.windmill.toutiao.f
    public final List<WMNativeAdData> c() {
        return this.f87827a;
    }

    @Override // com.windmill.toutiao.f
    public final Map<String, Object> d() {
        TTFeedAd tTFeedAd;
        List<WMNativeAdData> list = this.f87827a;
        if (list == null || list.size() <= 0 || (tTFeedAd = (TTFeedAd) ((g) this.f87827a.get(0)).getOriginNativeAdData()) == null) {
            return null;
        }
        return tTFeedAd.getMediaExtraInfo();
    }

    @Override // com.windmill.toutiao.f
    public final void a(double d10, String str, String str2) {
        TTFeedAd tTFeedAd;
        List<WMNativeAdData> list = this.f87827a;
        if (list == null || list.size() <= 0 || (tTFeedAd = (TTFeedAd) ((g) this.f87827a.get(0)).getOriginNativeAdData()) == null) {
            return;
        }
        tTFeedAd.loss(Double.valueOf(d10), str, str2);
    }

    @Override // com.windmill.toutiao.f
    public final void a(Context context, final WMCustomNativeAdapter wMCustomNativeAdapter, final String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87827a.clear();
            SigmobLog.i(l.class.getSimpleName() + " loadAd " + str);
            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setSupportDeepLink(true).setUserID("");
            Object obj = map2.get(WMConstants.IMAGE_TYPE);
            if (obj == null || obj.equals("") || obj.equals("0")) {
                userID.setImageAcceptedSize(690, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT);
            } else {
                userID.setImageAcceptedSize(Constants.CHECK_PLAYING_CID_ACTION, 150);
            }
            if (wMCustomNativeAdapter.getBiddingType() == 0) {
                userID.withBid(wMCustomNativeAdapter.getHbResponseStr());
            }
            if (wMCustomNativeAdapter.getBiddingType() == 1) {
                userID.setAdCount(1);
            } else {
                userID.setAdCount(wMCustomNativeAdapter.getAdCount());
            }
            tTAdNative.loadFeedAd(userID.build(), new TTAdNative.FeedAdListener() { // from class: com.windmill.toutiao.l.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onError(int i10, String str2) {
                    f.a aVar = l.this.f87828b;
                    if (aVar != null) {
                        aVar.onNativeAdFailToLoad(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str2), str2 + " codeId " + str));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(List<TTFeedAd> list) {
                    Map<String, Object> mediaExtraInfo;
                    if (list == null || list.isEmpty()) {
                        if (l.this.f87828b != null) {
                            l.this.f87828b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onFeedAdLoad-----------" + list.size());
                    Object obj2 = null;
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        TTFeedAd tTFeedAd = list.get(i10);
                        l.this.f87827a.add(new g(tTFeedAd, wMCustomNativeAdapter));
                        if (obj2 == null && (mediaExtraInfo = tTFeedAd.getMediaExtraInfo()) != null) {
                            obj2 = mediaExtraInfo.get("price");
                        }
                    }
                    l lVar = l.this;
                    f.a aVar = lVar.f87828b;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(lVar.f87827a, obj2);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callLoadSuccess(list);
                    }
                }
            });
        } catch (Throwable th) {
            if (this.f87828b != null) {
                this.f87828b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.toutiao.f
    public final boolean a() {
        return this.f87827a.size() > 0;
    }
}
