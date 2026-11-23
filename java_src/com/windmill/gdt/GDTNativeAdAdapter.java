package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GDTNativeAdAdapter extends WMCustomNativeAdapter implements d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f86053a;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        d dVar = this.f86053a;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void gdtNoadNotify(String str, HashMap<String, Object> map) {
        GdtUtil.noAdReplace(str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        return this.f86053a.d();
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public List<WMNativeAdData> getNativeAdDataList() {
        d dVar = this.f86053a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public String getS2sResultUrl(boolean z10, String str, HashMap<String, String> map) {
        WMLogUtil.i(getClass().getSimpleName() + "------getS2sResultUrl " + map);
        return !TextUtils.isEmpty(str) ? GdtUtil.s2sMacroReplace(str, GDTAdapterProxy.castBiddingInfo(z10, map)) : super.getS2sResultUrl(z10, str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            d dVar = this.f86053a;
            if (dVar != null) {
                return dVar.a();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        d gVar;
        try {
            String str = (String) map2.get("placementId");
            setAdapterServerExtra(map2);
            int nativeType = getNativeType();
            int nativeAdType = getNativeAdType();
            SigmobLog.i(getClass().getSimpleName() + "---loadAd:" + str + " hashCode: " + hashCode() + ":" + nativeAdType + ":" + map2);
            if (nativeAdType != 0) {
                if (nativeAdType != 1) {
                    callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeAdType"));
                    return;
                }
                if (nativeType == 2) {
                    this.f86053a = new g(true, this, this);
                } else {
                    if (nativeType != 1) {
                        callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeType"));
                        return;
                    }
                    gVar = new g(false, this, this);
                }
                this.f86053a.a(context, str, map, map2);
            }
            gVar = new f(this, this);
            this.f86053a = gVar;
            this.f86053a.a(context, str, map, map2);
        } catch (Throwable th) {
            SigmobLog.i(getClass().getSimpleName() + " catch throwable " + th);
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + "---notifyBiddingResult:" + z10 + ":" + str);
        try {
            GdtNotifyBiddingResult.notifyNativeBiddingResult(z10, map, null, this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.gdt.d.a
    public void onADClicked(WMNativeAdData wMNativeAdData) {
        callNativeAdClick(wMNativeAdData);
    }

    @Override // com.windmill.gdt.d.a
    public void onADExposure(WMNativeAdData wMNativeAdData) {
        callNativeAdShow(wMNativeAdData);
    }

    @Override // com.windmill.gdt.d.a
    public void onNativeAdFailToLoad(WMAdapterError wMAdapterError) {
        SigmobLog.i(getClass().getSimpleName() + " onNativeAdFailToLoad:" + wMAdapterError.toString());
        callLoadFail(wMAdapterError);
    }

    @Override // com.windmill.gdt.d.a
    public void onNativeAdLoadSuccess(List<WMNativeAdData> list, int i10) {
        SigmobLog.i(getClass().getSimpleName() + " onNativeAdLoadSuccess:" + i10);
        if (this.f86053a != null && getBiddingType() == 1) {
            callLoadBiddingSuccess(new BidPrice(String.valueOf(i10)));
        }
        callLoadSuccess(list);
    }

    @Override // com.windmill.gdt.d.a
    public void onRenderFail(WMNativeAdData wMNativeAdData, WMAdapterError wMAdapterError) {
        callNativeAdShowError(wMNativeAdData, wMAdapterError);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onResume(Activity activity) {
        d dVar = this.f86053a;
        if (dVar != null) {
            dVar.a(activity);
        }
    }
}
