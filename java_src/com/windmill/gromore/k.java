package com.windmill.gromore;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
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
public final class k extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f86308a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    i.a f86309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f86310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    q f86311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TTAdNative f86312e;

    public k(i.a aVar, int i10) {
        this.f86309b = aVar;
        this.f86310c = i10;
    }

    private static int a(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // com.windmill.gromore.i
    public final void b() {
        this.f86309b = null;
        if (this.f86312e != null) {
            this.f86312e = null;
        }
        List<WMNativeAdData> list = this.f86308a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f86308a.clear();
        }
    }

    @Override // com.windmill.gromore.i
    public final List<WMNativeAdData> c() {
        return this.f86308a;
    }

    @Override // com.windmill.gromore.i
    public final void a(double d10) {
        TTDrawFeedAd tTDrawFeedAd;
        List<WMNativeAdData> list = this.f86308a;
        if (list == null || list.size() <= 0 || (tTDrawFeedAd = (TTDrawFeedAd) this.f86308a.get(0).getOriginNativeAdData()) == null) {
            return;
        }
        tTDrawFeedAd.win(Double.valueOf(d10));
    }

    @Override // com.windmill.gromore.i
    public final void a(double d10, String str, String str2) {
        TTDrawFeedAd tTDrawFeedAd;
        List<WMNativeAdData> list = this.f86308a;
        if (list == null || list.size() <= 0 || (tTDrawFeedAd = (TTDrawFeedAd) this.f86308a.get(0).getOriginNativeAdData()) == null) {
            return;
        }
        tTDrawFeedAd.loss(Double.valueOf(d10), str, str2);
    }

    @Override // com.windmill.gromore.i
    public final void a(Context context, final WMCustomNativeAdapter wMCustomNativeAdapter, final String str, Map<String, Object> map) {
        int i10;
        int i11;
        try {
            this.f86308a.clear();
            SigmobLog.i(k.class.getSimpleName() + " loadAd " + str);
            int iA = context.getResources().getDisplayMetrics().widthPixels;
            int iA2 = context.getResources().getDisplayMetrics().heightPixels;
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    if (obj != null && ((Integer) obj).intValue() != 0) {
                        iA = a(context, WMBidUtil.parseInt(String.valueOf(obj)).intValue());
                    }
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        iA2 = a(context, WMBidUtil.parseInt(String.valueOf(obj2)).intValue());
                    }
                    i10 = iA;
                    i11 = iA2;
                } catch (Exception e10) {
                    WMLogUtil.d(WMLogUtil.TAG, "expressViewWidth:" + e10.getMessage());
                    i10 = context.getResources().getDisplayMetrics().widthPixels;
                    i11 = context.getResources().getDisplayMetrics().heightPixels;
                }
            } else {
                i10 = iA;
                i11 = iA2;
            }
            this.f86312e = GroAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setImageAcceptedSize(i10, i11).setSupportDeepLink(true).setUserID("");
            userID.setAdCount(wMCustomNativeAdapter.getBiddingType() != 1 ? wMCustomNativeAdapter.getAdCount() : 1);
            this.f86312e.loadDrawFeedAd(userID.build(), new TTAdNative.DrawFeedAdListener() { // from class: com.windmill.gromore.k.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
                public final void onDrawFeedAdLoad(List<TTDrawFeedAd> list) {
                    boolean zBooleanValue;
                    if (list == null || list.isEmpty()) {
                        if (k.this.f86309b != null) {
                            k.this.f86309b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onDrawFeedAdLoad-----------" + list.size());
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        TTDrawFeedAd tTDrawFeedAd = list.get(i12);
                        MediationNativeManager mediationManager = tTDrawFeedAd.getMediationManager();
                        try {
                            Method method = mediationManager.getClass().getMethod("isExpress", new Class[0]);
                            zBooleanValue = method != null ? ((Boolean) method.invoke(mediationManager, new Object[0])).booleanValue() : false;
                        } catch (Exception unused) {
                        }
                        if (mediationManager != null && zBooleanValue) {
                            k kVar = k.this;
                            kVar.f86311d = n.a(tTDrawFeedAd, kVar.f86310c, str, 0);
                            k.this.f86308a.add(new e(tTDrawFeedAd, wMCustomNativeAdapter, k.this.f86311d));
                        }
                    }
                    if (k.this.f86308a.size() != 0) {
                        k kVar2 = k.this;
                        i.a aVar = kVar2.f86309b;
                        if (aVar != null) {
                            aVar.onNativeAdLoadSuccess(kVar2.f86308a, kVar2.f86311d);
                            return;
                        }
                        return;
                    }
                    if (k.this.f86309b != null) {
                        k.this.f86309b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads express is null:" + str));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
                public final void onError(int i12, String str2) {
                    i.a aVar = k.this.f86309b;
                    if (aVar != null) {
                        aVar.onNativeAdFailToLoad(new WMAdapterError(i12, GroAdapterProxy.getReason(str2), str2 + " codeId " + str));
                    }
                }
            });
        } catch (Throwable th) {
            if (this.f86309b != null) {
                this.f86309b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.gromore.i
    public final boolean a() {
        return this.f86308a.size() > 0;
    }
}
