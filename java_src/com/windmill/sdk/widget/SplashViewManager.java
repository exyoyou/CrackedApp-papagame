package com.windmill.sdk.widget;

import android.text.TextUtils;
import android.view.ViewGroup;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class SplashViewManager extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f87516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f87518c;

    public SplashViewManager(int width, int height, WMNativeAdData nativeAdData, Map<String, Object> serverExtra, ViewInteractionListener listener) {
        super(nativeAdData, serverExtra, listener);
        this.f87516a = false;
        this.f87517b = width;
        this.f87518c = height;
    }

    private void a(WMAdapterError adapterError) {
        if (this.f87516a) {
            return;
        }
        this.f87516a = true;
        ViewInteractionListener viewInteractionListener = this.listener;
        if (viewInteractionListener != null) {
            viewInteractionListener.onAdShowError(adapterError);
        }
    }

    public void show(ViewGroup viewGroup) {
        try {
            if (viewGroup == null) {
                a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "show splashView is null"));
                return;
            }
            String nativeTemplateId = getNativeTemplateId();
            if (TextUtils.isEmpty(nativeTemplateId)) {
                a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "nativeTemplateId is null"));
                return;
            }
            if (((nativeTemplateId.hashCode() == -1449390735 && nativeTemplateId.equals("2002001")) ? (byte) 0 : (byte) -1) != 0) {
                a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "nativeTemplateId is not find"));
                return;
            }
            SplashView_2002001 splashView_2002001 = new SplashView_2002001(viewGroup.getContext(), this.f87517b, this.f87518c, this);
            splashView_2002001.startCountDown();
            viewGroup.removeAllViews();
            viewGroup.addView(splashView_2002001);
        } catch (Exception e10) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "show viewGroup is null " + e10.getMessage()));
        }
    }
}
