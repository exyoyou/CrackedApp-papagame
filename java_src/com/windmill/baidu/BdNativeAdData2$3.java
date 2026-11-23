package com.windmill.baidu;

import com.baidu.mobads.sdk.api.NativeResponse;
import com.windmill.sdk.natives.WMNativeAdData;

/* JADX INFO: loaded from: classes8.dex */
class BdNativeAdData2$3 implements NativeResponse.AdDislikeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ WMNativeAdData.DislikeInteractionCallback f85904a;

    public void onDislikeClick() {
        WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f85904a;
        if (dislikeInteractionCallback != null) {
            dislikeInteractionCallback.onSelected(0, "baidu", true);
        }
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDislikeListener
    public void onDislikeItemClick(String str) {
        WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f85904a;
        if (dislikeInteractionCallback != null) {
            dislikeInteractionCallback.onSelected(0, "baidu", true);
        }
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDislikeListener
    public void onDislikeWindowClose() {
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDislikeListener
    public void onDislikeWindowShow() {
    }
}
