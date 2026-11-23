package com.sigmob.sdk.splash;

import android.content.Context;
import android.widget.RelativeLayout;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;

/* JADX INFO: loaded from: classes3.dex */
class b extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f81680a;

    public interface a {
        void onAdWillShow();
    }

    public b(Context context) {
        super(context);
    }

    public static b a(Context context, BaseAdUnit adUnit) {
        MaterialMeta material;
        Integer num;
        if (context == null || adUnit == null || (material = adUnit.getMaterial()) == null || (num = material.creative_type) == null) {
            return null;
        }
        return num.intValue() == com.sigmob.sdk.base.common.n.CreativeTypeSplashVideo.a() ? new h(context, adUnit) : new c(context);
    }

    public void b() {
    }

    public void c() {
    }

    public int getDuration() {
        return this.f81680a;
    }

    public void setAspectRatio(float aspectRatio) {
    }

    public void a() {
        setVisibility(0);
    }

    public boolean a(BaseAdUnit adUnit, a listener) {
        return false;
    }
}
