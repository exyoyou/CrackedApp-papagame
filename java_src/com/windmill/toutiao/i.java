package com.windmill.toutiao;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
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
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class i extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f87812a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    f.a f87813b;

    public i(f.a aVar) {
        this.f87813b = aVar;
    }

    private static int a(Context context, float f10) {
        float f11 = context.getResources().getDisplayMetrics().density;
        if (f11 <= 0.0f) {
            f11 = 1.0f;
        }
        return (int) ((f10 / f11) + 0.5f);
    }

    @Override // com.windmill.toutiao.f
    public final void b() {
        this.f87813b = null;
    }

    @Override // com.windmill.toutiao.f
    public final List<WMNativeAdData> c() {
        return this.f87812a;
    }

    @Override // com.windmill.toutiao.f
    public final Map<String, Object> d() {
        TTNativeExpressAd tTNativeExpressAd;
        List<WMNativeAdData> list = this.f87812a;
        if (list == null || list.size() <= 0 || (tTNativeExpressAd = (TTNativeExpressAd) ((b) this.f87812a.get(0)).getOriginNativeAdData()) == null) {
            return null;
        }
        return tTNativeExpressAd.getMediaExtraInfo();
    }

    private static DisplayMetrics a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    @Override // com.windmill.toutiao.f
    public final void a(double d10) {
        TTNativeExpressAd tTNativeExpressAd;
        List<WMNativeAdData> list = this.f87812a;
        if (list == null || list.size() <= 0 || (tTNativeExpressAd = (TTNativeExpressAd) ((b) this.f87812a.get(0)).getOriginNativeAdData()) == null) {
            return;
        }
        tTNativeExpressAd.win(Double.valueOf(d10));
    }

    @Override // com.windmill.toutiao.f
    public final void a(double d10, String str, String str2) {
        TTNativeExpressAd tTNativeExpressAd;
        List<WMNativeAdData> list = this.f87812a;
        if (list == null || list.size() <= 0 || (tTNativeExpressAd = (TTNativeExpressAd) ((b) this.f87812a.get(0)).getOriginNativeAdData()) == null) {
            return;
        }
        tTNativeExpressAd.loss(Double.valueOf(d10), str, str2);
    }

    @Override // com.windmill.toutiao.f
    public final void a(Context context, final WMCustomNativeAdapter wMCustomNativeAdapter, final String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87812a.clear();
            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
            int i10 = a(context).widthPixels;
            int i11 = a(context).heightPixels;
            float fA = a(context, i10);
            float fA2 = a(context, i11);
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    if (obj != null && ((Integer) obj).intValue() != 0) {
                        fA = Float.parseFloat(String.valueOf(obj));
                    }
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        fA2 = Float.parseFloat(String.valueOf(obj2));
                    }
                } catch (Exception e10) {
                    WMLogUtil.d(WMLogUtil.TAG, "expressViewWidth:" + e10.getMessage());
                }
            }
            WMLogUtil.d(WMLogUtil.TAG, fA + "-----expressViewWidth--------expressViewHeight-------:" + fA2);
            AdSlot.Builder expressViewAcceptedSize = new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(fA, fA2);
            if (wMCustomNativeAdapter.getBiddingType() == 0) {
                expressViewAcceptedSize.withBid(wMCustomNativeAdapter.getHbResponseStr());
            }
            if (wMCustomNativeAdapter.getBiddingType() == 1) {
                expressViewAcceptedSize.setAdCount(1);
            } else {
                expressViewAcceptedSize.setAdCount(wMCustomNativeAdapter.getAdCount());
            }
            tTAdNative.loadExpressDrawFeedAd(expressViewAcceptedSize.build(), new TTAdNative.NativeExpressAdListener() { // from class: com.windmill.toutiao.i.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                public final void onError(int i12, String str2) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onError---------:" + i12 + ":" + str2);
                    f.a aVar = i.this.f87813b;
                    if (aVar != null) {
                        aVar.onNativeAdFailToLoad(new WMAdapterError(i12, TouTiaoAdapterProxy.getReason(str2), str2 + " codeId " + str));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                public final void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                    Map<String, Object> mediaExtraInfo;
                    if (list == null || list.isEmpty()) {
                        if (i.this.f87813b != null) {
                            i.this.f87813b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onNativeExpressAdLoad---------" + list.size());
                    Object obj3 = null;
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        TTNativeExpressAd tTNativeExpressAd = list.get(i12);
                        i.this.f87812a.add(new b(tTNativeExpressAd, wMCustomNativeAdapter));
                        if (obj3 == null && (mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo()) != null) {
                            obj3 = mediaExtraInfo.get("price");
                        }
                    }
                    i iVar = i.this;
                    f.a aVar = iVar.f87813b;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(iVar.f87812a, obj3);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callLoadSuccess(list);
                    }
                }
            });
        } catch (Throwable th) {
            if (this.f87813b != null) {
                this.f87813b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.toutiao.f
    public final boolean a() {
        return this.f87812a.size() > 0;
    }
}
