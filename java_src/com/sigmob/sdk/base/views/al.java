package com.sigmob.sdk.base.views;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class al extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private u f79916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f79917b;

    public al(Context context) {
        super(context);
        u uVar = new u(context);
        this.f79916a = uVar;
        setImageDrawable(uVar);
        this.f79917b = Dips.dipsToIntPixels(2.0f, context);
    }

    public void a(int progress) {
        this.f79916a.a(progress);
    }

    @Deprecated
    u getImageViewDrawable() {
        return this.f79916a;
    }

    public void setAnchorId(int anchorId) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f79917b);
        layoutParams.addRule(12, anchorId);
        setLayoutParams(layoutParams);
    }

    @Deprecated
    void setImageViewDrawable(u drawable) {
        this.f79916a = drawable;
    }

    public void a(int duration, int skipOffset) {
        this.f79916a.a(duration, skipOffset);
        setVisibility(0);
    }
}
