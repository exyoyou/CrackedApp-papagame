package com.windmill.gromore;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class l extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f86316a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    i.a f86317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f86318c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    q f86319d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TTAdNative f86320e;

    public l(i.a aVar, int i10) {
        this.f86317b = aVar;
        this.f86318c = i10;
    }

    @Override // com.windmill.gromore.i
    public final void a(double d10) {
        TTFeedAd tTFeedAd;
        List<WMNativeAdData> list = this.f86316a;
        if (list == null || list.size() <= 0 || (tTFeedAd = (TTFeedAd) this.f86316a.get(0).getOriginNativeAdData()) == null) {
            return;
        }
        tTFeedAd.win(Double.valueOf(d10));
    }

    @Override // com.windmill.gromore.i
    public final void b() {
        this.f86317b = null;
        if (this.f86320e != null) {
            this.f86320e = null;
        }
        List<WMNativeAdData> list = this.f86316a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f86316a.clear();
        }
    }

    @Override // com.windmill.gromore.i
    public final List<WMNativeAdData> c() {
        return this.f86316a;
    }

    @Override // com.windmill.gromore.i
    public final void a(double d10, String str, String str2) {
        TTFeedAd tTFeedAd;
        List<WMNativeAdData> list = this.f86316a;
        if (list == null || list.size() <= 0 || (tTFeedAd = (TTFeedAd) this.f86316a.get(0).getOriginNativeAdData()) == null) {
            return;
        }
        tTFeedAd.loss(Double.valueOf(d10), str, str2);
    }

    @Override // com.windmill.gromore.i
    public final void a(Context context, final WMCustomNativeAdapter wMCustomNativeAdapter, final String str, Map<String, Object> map) {
        try {
            this.f86316a.clear();
            SigmobLog.i(l.class.getSimpleName() + " loadAd " + str);
            int iIntValue = 0;
            int i10 = MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO;
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    int iIntValue2 = (obj == null || ((Integer) obj).intValue() == 0) ? MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO : WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        iIntValue = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                    }
                    i10 = iIntValue2;
                } catch (Exception e10) {
                    WMLogUtil.d(WMLogUtil.TAG, "expressViewWidth:" + e10.getMessage());
                }
            }
            this.f86320e = GroAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(i10, iIntValue).setSupportDeepLink(true).setUserID("");
            userID.setAdCount(wMCustomNativeAdapter.getBiddingType() != 1 ? wMCustomNativeAdapter.getAdCount() : 1);
            this.f86320e.loadFeedAd(userID.build(), new TTAdNative.FeedAdListener() { // from class: com.windmill.gromore.l.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onError(int i11, String str2) {
                    i.a aVar = l.this.f86317b;
                    if (aVar != null) {
                        aVar.onNativeAdFailToLoad(new WMAdapterError(i11, GroAdapterProxy.getReason(str2), str2 + " codeId " + str));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(List<TTFeedAd> list) {
                    boolean zBooleanValue;
                    if (list == null || list.isEmpty()) {
                        if (l.this.f86317b != null) {
                            l.this.f86317b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onFeedAdLoad-----------" + list.size());
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        TTFeedAd tTFeedAd = list.get(i11);
                        MediationNativeManager mediationManager = tTFeedAd.getMediationManager();
                        try {
                            Method method = mediationManager.getClass().getMethod("isExpress", new Class[0]);
                            zBooleanValue = method != null ? ((Boolean) method.invoke(mediationManager, new Object[0])).booleanValue() : false;
                        } catch (Exception unused) {
                        }
                        if (mediationManager != null) {
                            l lVar = l.this;
                            lVar.f86319d = n.a(tTFeedAd, lVar.f86318c, str, 0);
                            l.this.f86316a.add(zBooleanValue ? new d(tTFeedAd, wMCustomNativeAdapter, l.this.f86319d) : new j(tTFeedAd, wMCustomNativeAdapter, l.this.f86319d));
                        }
                    }
                    if (l.this.f86316a.size() != 0) {
                        l lVar2 = l.this;
                        i.a aVar = lVar2.f86317b;
                        if (aVar != null) {
                            aVar.onNativeAdLoadSuccess(lVar2.f86316a, lVar2.f86319d);
                            return;
                        }
                        return;
                    }
                    if (l.this.f86317b != null) {
                        l.this.f86317b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads express is null:" + str));
                    }
                }
            });
        } catch (Throwable th) {
            if (this.f86317b != null) {
                this.f86317b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.gromore.i
    public final boolean a() {
        return this.f86316a.size() > 0;
    }
}
