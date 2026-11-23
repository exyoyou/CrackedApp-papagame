package com.byazt.tm;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import com.byazt.aq.x;
import com.bytedance.component.sdk.annotation.ColorInt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 2194})
public class DynamicRoot extends DynamicBaseWidgetImp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public tt f20303c;

    public DynamicRoot(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public tt c(Bitmap bitmap) {
        c cVar = new c(bitmap, this.f20303c);
        this.f20303c = cVar;
        return cVar;
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public GradientDrawable getDrawable() {
        tt ttVar = new tt();
        this.f20303c = ttVar;
        return ttVar;
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        return super.x();
    }

    @Override // com.byazt.tm.DynamicBaseWidget
    public GradientDrawable c(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        tt ttVar = new tt(orientation, iArr);
        this.f20303c = ttVar;
        return ttVar;
    }
}
