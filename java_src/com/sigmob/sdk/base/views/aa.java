package com.sigmob.sdk.base.views;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* JADX INFO: loaded from: classes5.dex */
public class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BaseAdUnit f79821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f79822b;

    public interface a {
        void a();

        void b();
    }

    aa(BaseAdUnit adUnit, a listener) {
        this.f79821a = adUnit;
        this.f79822b = listener;
    }

    @JavascriptInterface
    public boolean canInstall(String apkName) {
        if (this.f79821a == null) {
            return false;
        }
        if (TextUtils.isEmpty(apkName)) {
            if (TextUtils.isEmpty(this.f79821a.getApkMd5())) {
                apkName = "";
            } else {
                apkName = this.f79821a.getApkMd5() + ".apk";
            }
            if (!TextUtils.isEmpty(this.f79821a.getApkName())) {
                apkName = this.f79821a.getApkName();
            }
        }
        return this.f79821a.canInstall(apkName);
    }

    @JavascriptInterface
    public boolean canOpen(String packageName) {
        BaseAdUnit baseAdUnit;
        return (!TextUtils.isEmpty(packageName) || (baseAdUnit = this.f79821a) == null) ? com.sigmob.sdk.base.o.a().b(packageName).booleanValue() : baseAdUnit.canOpen();
    }

    @JavascriptInterface
    public int getInteractionType() {
        BaseAdUnit baseAdUnit = this.f79821a;
        if (baseAdUnit == null) {
            return 0;
        }
        return baseAdUnit.getInteractionType();
    }

    @JavascriptInterface
    public int getSubInteractionType() {
        BaseAdUnit baseAdUnit = this.f79821a;
        if (baseAdUnit == null) {
            return 0;
        }
        return baseAdUnit.getsubInteractionType();
    }

    @JavascriptInterface
    public void hideSystemUI() {
        if (com.sigmob.sdk.base.utils.w.b(this.f79822b)) {
            this.f79822b.b();
        }
    }

    @JavascriptInterface
    public boolean isOpenListReport() {
        com.sigmob.sdk.base.o oVarA = com.sigmob.sdk.base.o.a();
        return (oVarA.U().isEmpty() || com.sigmob.sdk.base.services.b.a() || !oVarA.N().booleanValue()) ? false : true;
    }

    @JavascriptInterface
    public void onOpenListReport() {
        com.sigmob.sdk.base.services.b.c();
    }

    @JavascriptInterface
    public void showSystemUI() {
        if (com.sigmob.sdk.base.utils.w.b(this.f79822b)) {
            this.f79822b.a();
        }
    }
}
