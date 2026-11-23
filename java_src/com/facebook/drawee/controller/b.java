package com.facebook.drawee.controller;

import android.graphics.drawable.Animatable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class b<INFO> implements c<INFO> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c<Object> f27115b = new b();

    public static <INFO> c<INFO> a() {
        return (c<INFO>) f27115b;
    }

    @Override // com.facebook.drawee.controller.c
    public void onFailure(String id2, Throwable throwable) {
    }

    @Override // com.facebook.drawee.controller.c
    public void onFinalImageSet(String id2, @Nullable INFO imageInfo, @Nullable Animatable animatable) {
    }

    @Override // com.facebook.drawee.controller.c
    public void onIntermediateImageFailed(String id2, Throwable throwable) {
    }

    @Override // com.facebook.drawee.controller.c
    public void onIntermediateImageSet(String id2, @Nullable INFO imageInfo) {
    }

    @Override // com.facebook.drawee.controller.c
    public void onRelease(String id2) {
    }

    @Override // com.facebook.drawee.controller.c
    public void onSubmit(String id2, Object callerContext) {
    }
}
