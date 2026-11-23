package com.windmill.sdk.widget;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class InterstitialViewManager extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static a f87474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static a f87475e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f87476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Intent f87477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f87478c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f87479f;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:6:0x002e  */
    public InterstitialViewManager(Context context, WMNativeAdData nativeAdData, Map<String, Object> serverExtra, ViewInteractionListener listener) {
        super(nativeAdData, serverExtra, listener);
        byte b10 = 0;
        this.f87476a = false;
        String nativeTemplateId = getNativeTemplateId();
        this.f87478c = context;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("---TemplateId: ");
        sb2.append(nativeTemplateId);
        f87474d = this;
        f87475e = this;
        if (TextUtils.isEmpty(nativeTemplateId)) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "nativeTemplateId is null"));
        }
        nativeTemplateId.hashCode();
        switch (nativeTemplateId.hashCode()) {
            case 326540148:
                if (!nativeTemplateId.equals("4012001")) {
                    b10 = -1;
                }
                break;
            case 326540149:
                if (!nativeTemplateId.equals("4012002")) {
                    b10 = -1;
                } else {
                    b10 = 1;
                }
                break;
            case 326540150:
                if (!nativeTemplateId.equals("4012003")) {
                    b10 = -1;
                } else {
                    b10 = 2;
                }
                break;
            case 354245778:
                if (!nativeTemplateId.equals("4102001")) {
                    b10 = -1;
                } else {
                    b10 = 3;
                }
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
                this.f87477b = new Intent(context, (Class<?>) InterstitialView_4012001.class);
                break;
            case 1:
                this.f87477b = new Intent(context, (Class<?>) InterstitialView_4012002.class);
                break;
            case 2:
                this.f87477b = new Intent(context, (Class<?>) InterstitialView_4012003.class);
                break;
            case 3:
                this.f87477b = new Intent(context, (Class<?>) InterstitialView_4102001.class);
                break;
            default:
                a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "nativeTemplateId is not find " + nativeTemplateId + " " + serverExtra));
                break;
        }
    }

    private void a(WMAdapterError adapterError) {
        if (this.f87476a) {
            return;
        }
        this.f87476a = true;
        ViewInteractionListener viewInteractionListener = this.listener;
        if (viewInteractionListener != null) {
            viewInteractionListener.onAdShowError(adapterError);
        }
    }

    public static a getBaseControl() {
        if (f87474d == null) {
            f87474d = f87475e;
        }
        f87475e = null;
        return f87474d;
    }

    @Override // com.windmill.sdk.widget.a
    public void destroy() {
        super.destroy();
        this.f87478c = null;
        this.f87477b = null;
        f87474d = null;
        f87475e = null;
    }

    public void setTips(String tips) {
        this.f87479f = tips;
    }

    public void show() {
        if (this.f87477b == null || this.f87478c == null) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "interstitialView is null"));
            return;
        }
        if (!TextUtils.isEmpty(this.f87479f)) {
            Bundle bundle = new Bundle();
            bundle.putString("tips", this.f87479f);
            this.f87477b.putExtras(bundle);
        }
        this.f87478c.startActivity(this.f87477b);
    }
}
