package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.czhj.sdk.logger.SigmobLog;
import com.qq.e.ads.banner2.UnifiedBannerADListener;
import com.qq.e.ads.banner2.UnifiedBannerView;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomBannerAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GDTBannerAdapter extends WMCustomBannerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UnifiedBannerView f86005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f86006b = false;

    public static int dip2px(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        UnifiedBannerView unifiedBannerView = this.f86005a;
        if (unifiedBannerView != null) {
            unifiedBannerView.destroy();
            this.f86005a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void gdtNoadNotify(String str, HashMap<String, Object> map) {
        GdtUtil.noAdReplace(str, map);
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public View getBannerView() {
        return this.f86005a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86005a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        if (this.f86005a == null) {
            return null;
        }
        HashMap map = new HashMap();
        WMLogUtil.i(getClass().getSimpleName() + "------getMediaExtraOption " + this.f86005a.getExtraInfo());
        if (this.f86005a.getExtraInfo() != null && this.f86005a.getExtraInfo().get("request_id") != null) {
            map.put("request_id", this.f86005a.getExtraInfo().get("request_id").toString());
        }
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public String getS2sResultUrl(boolean z10, String str, HashMap<String, String> map) {
        WMLogUtil.i(getClass().getSimpleName() + "------getS2sResultUrl " + map);
        return !TextUtils.isEmpty(str) ? GdtUtil.s2sMacroReplace(str, GDTAdapterProxy.castBiddingInfo(z10, map)) : super.getS2sResultUrl(z10, str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            UnifiedBannerView unifiedBannerView = this.f86005a;
            if (unifiedBannerView != null) {
                return unifiedBannerView.isValid();
            }
            return false;
        } catch (Throwable th) {
            SigmobLog.e("GDT isReady error", th);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00fb A[Catch: all -> 0x0154, TryCatch #1 {all -> 0x0154, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x001a, B:9:0x001e, B:13:0x0032, B:15:0x003a, B:17:0x0043, B:20:0x004b, B:22:0x0053, B:24:0x005c, B:42:0x00aa, B:44:0x00e6, B:46:0x00ee, B:47:0x00f0, B:49:0x00fb, B:50:0x0109, B:52:0x0115, B:54:0x011f, B:55:0x0124, B:51:0x010c, B:57:0x0143, B:34:0x0072, B:38:0x00a0), top: B:64:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x010c A[Catch: all -> 0x0154, TryCatch #1 {all -> 0x0154, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x001a, B:9:0x001e, B:13:0x0032, B:15:0x003a, B:17:0x0043, B:20:0x004b, B:22:0x0053, B:24:0x005c, B:42:0x00aa, B:44:0x00e6, B:46:0x00ee, B:47:0x00f0, B:49:0x00fb, B:50:0x0109, B:52:0x0115, B:54:0x011f, B:55:0x0124, B:51:0x010c, B:57:0x0143, B:34:0x0072, B:38:0x00a0), top: B:64:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x011f A[Catch: all -> 0x0154, TryCatch #1 {all -> 0x0154, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x001a, B:9:0x001e, B:13:0x0032, B:15:0x003a, B:17:0x0043, B:20:0x004b, B:22:0x0053, B:24:0x005c, B:42:0x00aa, B:44:0x00e6, B:46:0x00ee, B:47:0x00f0, B:49:0x00fb, B:50:0x0109, B:52:0x0115, B:54:0x011f, B:55:0x0124, B:51:0x010c, B:57:0x0143, B:34:0x0072, B:38:0x00a0), top: B:64:0x0005 }] */
    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        int i10;
        int iIntValue;
        int iIntValue2;
        String str;
        Object obj;
        UnifiedBannerADListener unifiedBannerADListener;
        UnifiedBannerView unifiedBannerView;
        LoadAdParams loadAdParams;
        try {
            this.f86006b = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is null "));
                return;
            }
            if (!(context instanceof Activity)) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is not activity "));
                return;
            }
            if (map != null) {
                try {
                    Object obj2 = map.get(WMConstants.AD_WIDTH);
                    iIntValue = (obj2 == null || ((Integer) obj2).intValue() == 0) ? 0 : ((Integer) obj2).intValue();
                    try {
                        Object obj3 = map.get(WMConstants.AD_HEIGHT);
                        iIntValue2 = (obj3 == null || ((Integer) obj3).intValue() == 0) ? 0 : ((Integer) obj3).intValue();
                    } catch (Exception e10) {
                        e = e10;
                        i10 = 0;
                        e.printStackTrace();
                        iIntValue2 = i10;
                        if (iIntValue > 0) {
                            str = (String) map2.get("placementId");
                            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + iIntValue + ":" + iIntValue2);
                            obj = map2.get("showDownloadDialog");
                            if (obj != null) {
                                this.f86006b = true;
                            }
                            unifiedBannerADListener = new UnifiedBannerADListener() { // from class: com.windmill.gdt.GDTBannerAdapter.1
                                @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                                public final void onADClicked() {
                                    SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADClicked()");
                                    GDTBannerAdapter.this.callBannerAdClick();
                                }

                                @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                                public final void onADClosed() {
                                    SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADClose()");
                                    GDTBannerAdapter.this.callBannerAdClosed();
                                }

                                @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                                public final void onADExposure() {
                                    SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADExposure()");
                                    GDTBannerAdapter.this.callBannerAdShow();
                                }

                                @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                                public final void onADLeftApplication() {
                                    SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADLeftApplication()");
                                }

                                @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                                public final void onADReceive() {
                                    SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADReceive()");
                                    if (GDTBannerAdapter.this.f86005a != null && GDTBannerAdapter.this.f86006b) {
                                        GDTBannerAdapter.this.f86005a.setDownloadConfirmListener(GDTAdapterProxy.DOWNLOAD_CONFIRM_LISTENER);
                                    }
                                    if (GDTBannerAdapter.this.f86005a != null && GDTBannerAdapter.this.getBiddingType() == 1) {
                                        GDTBannerAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(GDTBannerAdapter.this.f86005a.getECPM())));
                                    }
                                    GDTBannerAdapter gDTBannerAdapter = GDTBannerAdapter.this;
                                    gDTBannerAdapter.callLoadSuccess(gDTBannerAdapter.f86005a);
                                }

                                @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                                public final void onNoAD(AdError adError) {
                                    SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onError " + adError.getErrorCode() + ":" + adError.getErrorMsg());
                                    GDTBannerAdapter.this.callLoadFail(new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg()));
                                }
                            };
                            if (getBiddingType() == 0) {
                                unifiedBannerView = new UnifiedBannerView((Activity) context, str, unifiedBannerADListener, null, getHbResponseStr());
                            } else {
                                unifiedBannerView = new UnifiedBannerView((Activity) context, str, unifiedBannerADListener);
                            }
                            this.f86005a = unifiedBannerView;
                            loadAdParams = GdtUtil.getLoadAdParams(getClass(), map2);
                            if (loadAdParams != null) {
                                this.f86005a.setLoadAdParams(loadAdParams);
                            }
                            this.f86005a.setLayoutParams(new FrameLayout.LayoutParams(dip2px(context, iIntValue), dip2px(context, iIntValue2)));
                            this.f86005a.setRefresh(0);
                            this.f86005a.loadAD();
                            return;
                        }
                        callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with adSize is error"));
                    }
                } catch (Exception e11) {
                    e = e11;
                    i10 = 0;
                    iIntValue = 0;
                }
            } else {
                iIntValue2 = 0;
                iIntValue = 0;
            }
            if (iIntValue == 0 || iIntValue2 == 0) {
                try {
                    String str2 = (String) map2.get(WMConstants.AD_SIZE);
                    iIntValue = WMBidUtil.parseInt(str2.substring(0, str2.indexOf("x"))).intValue();
                    iIntValue2 = WMBidUtil.parseInt(str2.substring(str2.indexOf("x") + 1)).intValue();
                } catch (Exception e12) {
                    i10 = iIntValue2;
                    e = e12;
                    e.printStackTrace();
                    iIntValue2 = i10;
                }
            }
            if (iIntValue > 0 && iIntValue2 > 0) {
                str = (String) map2.get("placementId");
                SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + iIntValue + ":" + iIntValue2);
                obj = map2.get("showDownloadDialog");
                if (obj != null && obj.equals("1")) {
                    this.f86006b = true;
                }
                unifiedBannerADListener = new UnifiedBannerADListener() { // from class: com.windmill.gdt.GDTBannerAdapter.1
                    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                    public final void onADClicked() {
                        SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADClicked()");
                        GDTBannerAdapter.this.callBannerAdClick();
                    }

                    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                    public final void onADClosed() {
                        SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADClose()");
                        GDTBannerAdapter.this.callBannerAdClosed();
                    }

                    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                    public final void onADExposure() {
                        SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADExposure()");
                        GDTBannerAdapter.this.callBannerAdShow();
                    }

                    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                    public final void onADLeftApplication() {
                        SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADLeftApplication()");
                    }

                    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                    public final void onADReceive() {
                        SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onADReceive()");
                        if (GDTBannerAdapter.this.f86005a != null && GDTBannerAdapter.this.f86006b) {
                            GDTBannerAdapter.this.f86005a.setDownloadConfirmListener(GDTAdapterProxy.DOWNLOAD_CONFIRM_LISTENER);
                        }
                        if (GDTBannerAdapter.this.f86005a != null && GDTBannerAdapter.this.getBiddingType() == 1) {
                            GDTBannerAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(GDTBannerAdapter.this.f86005a.getECPM())));
                        }
                        GDTBannerAdapter gDTBannerAdapter = GDTBannerAdapter.this;
                        gDTBannerAdapter.callLoadSuccess(gDTBannerAdapter.f86005a);
                    }

                    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
                    public final void onNoAD(AdError adError) {
                        SigmobLog.i(GDTBannerAdapter.this.getClass().getSimpleName() + " onError " + adError.getErrorCode() + ":" + adError.getErrorMsg());
                        GDTBannerAdapter.this.callLoadFail(new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg()));
                    }
                };
                if (getBiddingType() == 0) {
                    unifiedBannerView = new UnifiedBannerView((Activity) context, str, unifiedBannerADListener, null, getHbResponseStr());
                } else {
                    unifiedBannerView = new UnifiedBannerView((Activity) context, str, unifiedBannerADListener);
                }
                this.f86005a = unifiedBannerView;
                loadAdParams = GdtUtil.getLoadAdParams(getClass(), map2);
                if (loadAdParams != null) {
                    this.f86005a.setLoadAdParams(loadAdParams);
                }
                this.f86005a.setLayoutParams(new FrameLayout.LayoutParams(dip2px(context, iIntValue), dip2px(context, iIntValue2)));
                this.f86005a.setRefresh(0);
                this.f86005a.loadAD();
                return;
            }
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with adSize is error"));
        } catch (Throwable th) {
            SigmobLog.i(getClass().getSimpleName() + " catch throwable " + th);
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + "----notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f86005a == null || !isReady()) {
                WMLogUtil.i("---失败 没有广告或者超时：");
                GdtNotifyBiddingResult.notifyNativeBiddingResult(z10, map, null, this);
                return;
            }
            HashMap<String, Object> mapNotifyMap = GdtNotifyBiddingResult.notifyMap(z10, map, this);
            SigmobLog.i(getClass().getSimpleName() + "----notifyBiddingResult-----3:" + mapNotifyMap);
            if (z10) {
                this.f86005a.sendWinNotification(mapNotifyMap);
            } else {
                this.f86005a.sendLossNotification(mapNotifyMap);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
