package com.windmill.baidu;

import com.baidu.mobads.sdk.api.NativeResponse;
import com.windmill.sdk.base.WMLogUtil;

/* JADX INFO: loaded from: classes8.dex */
class BdNativeAdData2$1 implements NativeResponse.AdInteractionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f85903a;

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
    public void adActReward(int i10) {
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
    public void adActRewardSuccess() {
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
    public void onADExposed() {
        if (i.a() != null && i.b() != null) {
            i.a().onADExposed(i.b().getAdInFo(this.f85903a));
        }
        WMLogUtil.d(WMLogUtil.TAG, "onADExposed:" + i.c().getTitle());
        if (i.b() != null) {
            i.b().callNativeAdShow(this.f85903a);
        }
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
    public void onADExposureFailed(int i10) {
        WMLogUtil.d(WMLogUtil.TAG, "onADExposureFailed:".concat(String.valueOf(i10)));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
    public void onADStatusChanged() {
        WMLogUtil.d(WMLogUtil.TAG, "onADStatusChanged()");
        if (i.c().getAdActionType() != 2 || i.d() == null) {
            return;
        }
        int downloadStatus = i.c().getDownloadStatus();
        if (downloadStatus >= 0 && downloadStatus <= 100) {
            i.d().onDownloadActive(100L, downloadStatus, "", "");
            return;
        }
        if (downloadStatus == 101) {
            i.d().onDownloadFinished(100L, "", "");
            return;
        }
        if (downloadStatus == 102) {
            i.d().onDownloadPaused(100L, 50L, "", "");
            return;
        }
        if (downloadStatus == 103) {
            i.d().onInstalled("", "");
        } else if (downloadStatus == 104) {
            i.d().onDownloadFailed(100L, 1L, "", "");
        } else {
            i.d().onIdle();
        }
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
    public void onAdClick() {
        if (i.a() != null && i.b() != null) {
            i.a().onADClicked(i.b().getAdInFo(this.f85903a));
        }
        WMLogUtil.d(WMLogUtil.TAG, "onAdClick:" + i.c().getTitle());
        if (i.b() != null) {
            i.b().callNativeAdClick(this.f85903a);
        }
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
    public void onAdUnionClick() {
        WMLogUtil.d(WMLogUtil.TAG, "onAdUnionClick()");
    }
}
