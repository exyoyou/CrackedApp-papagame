package com.windmill.sdk.widget;

import android.content.Context;
import android.text.TextUtils;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BannerViewManager extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BannerBaseView f87417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f87418b;

    public BannerViewManager(Context context, int width, int height, WMNativeAdData nativeAdData, Map<String, Object> serverExtra, ViewInteractionListener listener) {
        super(nativeAdData, serverExtra, listener);
        this.f87418b = false;
        String nativeTemplateId = getNativeTemplateId();
        if (TextUtils.isEmpty(nativeTemplateId)) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "nativeTemplateId is null"));
            return;
        }
        nativeTemplateId.hashCode();
        if (nativeTemplateId.equals("7002001")) {
            this.f87417a = new BannerView_7002001(context, width, height, this);
        } else {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "nativeTemplateId is not find"));
        }
    }

    private void a(WMAdapterError adapterError) {
        if (this.f87418b) {
            return;
        }
        this.f87418b = true;
        ViewInteractionListener viewInteractionListener = this.listener;
        if (viewInteractionListener == null || !(viewInteractionListener instanceof BannerViewInteractionListener)) {
            return;
        }
        ((BannerViewInteractionListener) viewInteractionListener).onAdRenderError(adapterError);
    }

    public void render() {
        ViewInteractionListener viewInteractionListener;
        BannerBaseView bannerBaseView = this.f87417a;
        if (bannerBaseView == null) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "render bannerView is null"));
            return;
        }
        bannerBaseView.renderView();
        if (this.f87418b || (viewInteractionListener = this.listener) == null || !(viewInteractionListener instanceof BannerViewInteractionListener)) {
            return;
        }
        ((BannerViewInteractionListener) viewInteractionListener).onAdRenderSuccess(this.f87417a);
    }
}
