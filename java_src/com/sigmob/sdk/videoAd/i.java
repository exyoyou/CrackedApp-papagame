package com.sigmob.sdk.videoAd;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes3.dex */
public class i extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.sigmob.sdk.base.views.u f81819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f81820b;

    public i(Context context) {
        super(context);
        com.sigmob.sdk.base.views.u uVar = new com.sigmob.sdk.base.views.u(context);
        this.f81819a = uVar;
        setImageDrawable(uVar);
        this.f81820b = Dips.dipsToIntPixels(2.0f, context);
    }

    public void a() {
        this.f81819a.a();
        this.f81819a.a(0);
    }

    @Deprecated
    com.sigmob.sdk.base.views.u getImageViewDrawable() {
        return this.f81819a;
    }

    public void setAnchorId(int anchorId) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f81820b);
        layoutParams.addRule(8, anchorId);
        setLayoutParams(layoutParams);
    }

    @Deprecated
    void setImageViewDrawable(com.sigmob.sdk.base.views.u drawable) {
        this.f81819a = drawable;
    }

    public void a(int progress) {
        this.f81819a.a(progress);
    }

    public void a(int duration, int skipOffset) {
        this.f81819a.a(duration, skipOffset);
        setVisibility(0);
    }
}
