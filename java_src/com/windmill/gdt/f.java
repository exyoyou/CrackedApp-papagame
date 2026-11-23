package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.logger.SigmobLog;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class f extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f86127a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f86128b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    d.a f86129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    WMCustomNativeAdapter f86130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private NativeExpressAD f86131e;

    public f(WMCustomNativeAdapter wMCustomNativeAdapter, d.a aVar) {
        this.f86130d = wMCustomNativeAdapter;
        this.f86129c = aVar;
    }

    @Override // com.windmill.gdt.d
    public final void a(Activity activity) {
    }

    @Override // com.windmill.gdt.d
    public final void b() {
        List<WMNativeAdData> list = this.f86127a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f86127a.clear();
        }
        if (this.f86131e != null) {
            this.f86131e = null;
        }
    }

    @Override // com.windmill.gdt.d
    public final List<WMNativeAdData> c() {
        return this.f86127a;
    }

    @Override // com.windmill.gdt.d
    public final Map<String, Object> d() {
        try {
            List<WMNativeAdData> list = this.f86127a;
            if (list == null || list.size() <= 0) {
                return null;
            }
            HashMap map = new HashMap();
            NativeExpressADView nativeExpressADView = ((b) this.f86127a.get(0)).f86082a;
            if (nativeExpressADView.getExtraInfo() != null && nativeExpressADView.getExtraInfo().get("request_id") != null) {
                map.put("request_id", nativeExpressADView.getExtraInfo().get("request_id").toString());
            }
            WMLogUtil.i(f.class.getSimpleName() + "------getMediaExtraOption " + nativeExpressADView.getExtraInfo() + " " + map);
            return map;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.windmill.gdt.d
    public final void a(Context context, final String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86127a.clear();
            this.f86128b = false;
            SigmobLog.i(f.class.getSimpleName() + " loadAd " + str);
            int iIntValue = -2;
            int i10 = -1;
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    int iIntValue2 = (obj == null || ((Integer) obj).intValue() == 0) ? -1 : ((Integer) obj).intValue();
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        iIntValue = ((Integer) obj2).intValue();
                    }
                    i10 = iIntValue2;
                } catch (Exception unused) {
                }
            }
            WMLogUtil.d(WMLogUtil.TAG, i10 + "-----expressViewWidth--------expressViewHeight-------:" + iIntValue);
            NativeExpressAD.NativeExpressADListener nativeExpressADListener = new NativeExpressAD.NativeExpressADListener() { // from class: com.windmill.gdt.f.1
                @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                public final void onADClicked(NativeExpressADView nativeExpressADView) {
                    WMCustomNativeAdapter wMCustomNativeAdapter;
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onADClicked---------" + nativeExpressADView.toString());
                    List<WMNativeAdData> list = f.this.f86127a;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    for (int i11 = 0; i11 < f.this.f86127a.size(); i11++) {
                        WMNativeAdData wMNativeAdData = f.this.f86127a.get(i11);
                        b bVar = (b) wMNativeAdData;
                        NativeExpressADView nativeExpressADView2 = (NativeExpressADView) bVar.getExpressAdView();
                        if (nativeExpressADView2 != null && nativeExpressADView2.equals(nativeExpressADView) && (wMCustomNativeAdapter = f.this.f86130d) != null) {
                            AdInfo adInFo = wMCustomNativeAdapter.getAdInFo(bVar);
                            WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener = bVar.f86083b;
                            if (nativeAdInteractionListener != null) {
                                nativeAdInteractionListener.onADClicked(adInFo);
                            }
                            d.a aVar = f.this.f86129c;
                            if (aVar != null) {
                                aVar.onADClicked(wMNativeAdData);
                            }
                        }
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                public final void onADClosed(NativeExpressADView nativeExpressADView) {
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback;
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onADClosed---------" + nativeExpressADView.toString());
                    List<WMNativeAdData> list = f.this.f86127a;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    for (int i11 = 0; i11 < f.this.f86127a.size(); i11++) {
                        b bVar = (b) f.this.f86127a.get(i11);
                        NativeExpressADView nativeExpressADView2 = (NativeExpressADView) bVar.getExpressAdView();
                        if (nativeExpressADView2 != null && nativeExpressADView2.equals(nativeExpressADView) && (dislikeInteractionCallback = bVar.f86084c) != null) {
                            dislikeInteractionCallback.onSelected(0, MediationConstant.ADN_GDT, true);
                        }
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                public final void onADExposure(NativeExpressADView nativeExpressADView) {
                    WMCustomNativeAdapter wMCustomNativeAdapter;
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onADExposure---------" + nativeExpressADView.toString());
                    List<WMNativeAdData> list = f.this.f86127a;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    for (int i11 = 0; i11 < f.this.f86127a.size(); i11++) {
                        WMNativeAdData wMNativeAdData = f.this.f86127a.get(i11);
                        b bVar = (b) wMNativeAdData;
                        NativeExpressADView nativeExpressADView2 = (NativeExpressADView) bVar.getExpressAdView();
                        if (nativeExpressADView2 != null && nativeExpressADView2.equals(nativeExpressADView) && (wMCustomNativeAdapter = f.this.f86130d) != null) {
                            AdInfo adInFo = wMCustomNativeAdapter.getAdInFo(bVar);
                            WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener = bVar.f86083b;
                            if (nativeAdInteractionListener != null) {
                                nativeAdInteractionListener.onADExposed(adInFo);
                            }
                            d.a aVar = f.this.f86129c;
                            if (aVar != null) {
                                aVar.onADExposure(wMNativeAdData);
                            }
                        }
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                public final void onADLeftApplication(NativeExpressADView nativeExpressADView) {
                }

                @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                public final void onADLoaded(List<NativeExpressADView> list) {
                    WMLogUtil.d(WMLogUtil.TAG, "onADLoad()");
                    if (list == null || list.isEmpty()) {
                        WMLogUtil.d(WMLogUtil.TAG, "-----------onADLoaded---------".concat(String.valueOf(list)));
                        if (f.this.f86129c != null) {
                            f.this.f86129c.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    int ecpm = 0;
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        NativeExpressADView nativeExpressADView = list.get(i11);
                        if (nativeExpressADView != null && f.this.f86128b) {
                            nativeExpressADView.setDownloadConfirmListener(GDTAdapterProxy.DOWNLOAD_CONFIRM_LISTENER);
                        }
                        f.this.f86127a.add(new b(nativeExpressADView, f.this.f86130d));
                        if (ecpm == 0 && nativeExpressADView != null) {
                            ecpm = nativeExpressADView.getECPM();
                        }
                    }
                    f fVar = f.this;
                    d.a aVar = fVar.f86129c;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(fVar.f86127a, ecpm);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter = f.this.f86130d;
                    if (wMCustomNativeAdapter != null) {
                        wMCustomNativeAdapter.callLoadSuccess(list);
                    }
                }

                @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
                public final void onNoAD(AdError adError) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onNoAD---------" + adError.toString());
                    if (f.this.f86129c != null) {
                        f.this.f86129c.onNativeAdFailToLoad(new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg()));
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                public final void onRenderFail(NativeExpressADView nativeExpressADView) {
                    WMCustomNativeAdapter wMCustomNativeAdapter;
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onRenderFail---------" + nativeExpressADView.toString());
                    List<WMNativeAdData> list = f.this.f86127a;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    for (int i11 = 0; i11 < f.this.f86127a.size(); i11++) {
                        WMNativeAdData wMNativeAdData = f.this.f86127a.get(i11);
                        b bVar = (b) wMNativeAdData;
                        NativeExpressADView nativeExpressADView2 = (NativeExpressADView) bVar.getExpressAdView();
                        if (nativeExpressADView2 != null && nativeExpressADView2.equals(nativeExpressADView) && (wMCustomNativeAdapter = f.this.f86130d) != null) {
                            AdInfo adInFo = wMCustomNativeAdapter.getAdInFo(bVar);
                            if (bVar.f86083b != null) {
                                WindMillError windMillError = WindMillError.ERROR_AD_ADAPTER_PLAY;
                                windMillError.setMessage("gdt ad onRenderFail");
                                bVar.f86083b.onADError(adInFo, windMillError);
                            }
                            if (f.this.f86129c != null) {
                                f.this.f86129c.onRenderFail(wMNativeAdData, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "gdt onRenderFail"));
                            }
                        }
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                public final void onRenderSuccess(NativeExpressADView nativeExpressADView) {
                    WMCustomNativeAdapter wMCustomNativeAdapter;
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onRenderSuccess---------" + nativeExpressADView.toString());
                    List<WMNativeAdData> list = f.this.f86127a;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    for (int i11 = 0; i11 < f.this.f86127a.size(); i11++) {
                        b bVar = (b) f.this.f86127a.get(i11);
                        NativeExpressADView nativeExpressADView2 = (NativeExpressADView) bVar.getExpressAdView();
                        if (nativeExpressADView2 != null && nativeExpressADView2.equals(nativeExpressADView) && (wMCustomNativeAdapter = f.this.f86130d) != null) {
                            AdInfo adInFo = wMCustomNativeAdapter.getAdInFo(bVar);
                            WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener = bVar.f86083b;
                            if (nativeAdInteractionListener != null) {
                                nativeAdInteractionListener.onADRenderSuccess(adInFo, nativeExpressADView, nativeExpressADView.getWidth(), nativeExpressADView.getHeight());
                            }
                        }
                    }
                }
            };
            this.f86131e = this.f86130d.getBiddingType() == 0 ? new NativeExpressAD(context, new ADSize(i10, iIntValue), str, nativeExpressADListener, this.f86130d.getHbResponseStr()) : new NativeExpressAD(context, new ADSize(i10, iIntValue), str, nativeExpressADListener);
            LoadAdParams loadAdParams = GdtUtil.getLoadAdParams(f.class, map2);
            if (loadAdParams != null) {
                this.f86131e.setAdParams(loadAdParams);
            }
            NativeExpressAD nativeExpressAD = this.f86131e;
            if (map2 != null) {
                Object obj3 = map2.get("showDownloadDialog");
                if (obj3 == null || !obj3.equals("1")) {
                    this.f86128b = false;
                } else {
                    this.f86128b = true;
                }
                Object obj4 = map2.get(WMConstants.AUTO_PLAY_POLICY);
                Object obj5 = map2.get(WMConstants.AUTO_PLAY_MUTED);
                Object obj6 = map2.get(WMConstants.DETAIL_PAGE_MUTED);
                VideoOption.Builder builder = new VideoOption.Builder();
                if (!TextUtils.isEmpty((CharSequence) obj4)) {
                    if (obj4.equals(t7.a.f97141e)) {
                        builder.setAutoPlayPolicy(0);
                    } else if (obj4.equals("ALWAYS")) {
                        builder.setAutoPlayPolicy(1);
                    } else if (obj4.equals("NEVER")) {
                        builder.setAutoPlayPolicy(2);
                    }
                }
                if (!TextUtils.isEmpty((CharSequence) obj5)) {
                    if (obj5.equals("1")) {
                        builder.setAutoPlayMuted(true);
                    } else if (obj5.equals("0")) {
                        builder.setAutoPlayMuted(false);
                    }
                }
                if (!TextUtils.isEmpty((CharSequence) obj6)) {
                    if (obj6.equals("1")) {
                        builder.setDetailPageMuted(true);
                    } else if (obj6.equals("0")) {
                        builder.setDetailPageMuted(false);
                    }
                }
                nativeExpressAD.setVideoOption(builder.build());
                Object obj7 = map2.get(WMConstants.MIN_VIDEO_DURATION);
                Object obj8 = map2.get(WMConstants.MAX_VIDEO_DURATION);
                if (!TextUtils.isEmpty((CharSequence) obj7)) {
                    try {
                        int iIntValue3 = WMBidUtil.parseInt(obj7).intValue();
                        if (iIntValue3 >= 5) {
                            nativeExpressAD.setMinVideoDuration(iIntValue3);
                        }
                    } catch (Exception unused2) {
                        nativeExpressAD.setMinVideoDuration(5);
                    }
                }
                if (!TextUtils.isEmpty((CharSequence) obj8)) {
                    try {
                        int iIntValue4 = WMBidUtil.parseInt(obj8).intValue();
                        if (iIntValue4 <= 60) {
                            nativeExpressAD.setMaxVideoDuration(iIntValue4);
                        }
                    } catch (Exception unused3) {
                        nativeExpressAD.setMaxVideoDuration(60);
                    }
                }
            }
            this.f86131e.loadAD(this.f86130d.getAdCount());
        } catch (Throwable th) {
            SigmobLog.i(f.class.getSimpleName() + " catch throwable " + th);
            d.a aVar = this.f86129c;
            if (aVar != null) {
                aVar.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.gdt.d
    public final boolean a() {
        return this.f86127a.size() > 0;
    }
}
