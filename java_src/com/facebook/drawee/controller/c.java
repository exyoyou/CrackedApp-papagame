package com.facebook.drawee.controller;

import android.graphics.drawable.Animatable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface c<INFO> {
    void onFailure(String id2, Throwable throwable);

    void onFinalImageSet(String id2, @Nullable INFO imageInfo, @Nullable Animatable animatable);

    void onIntermediateImageFailed(String id2, Throwable throwable);

    void onIntermediateImageSet(String id2, @Nullable INFO imageInfo);

    void onRelease(String id2);

    void onSubmit(String id2, Object callerContext);
}
