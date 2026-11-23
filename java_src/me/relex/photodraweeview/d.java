package me.relex.photodraweeview;

import android.view.GestureDetector;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface d {
    public static final float O1 = 3.0f;
    public static final float P1 = 1.75f;
    public static final float Q1 = 1.0f;
    public static final long S1 = 200;

    float getMaximumScale();

    float getMediumScale();

    float getMinimumScale();

    e getOnPhotoTapListener();

    h getOnViewTapListener();

    float getScale();

    void setAllowParentInterceptOnEdge(boolean z10);

    void setMaximumScale(float f10);

    void setMediumScale(float f10);

    void setMinimumScale(float f10);

    void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener);

    void setOnLongClickListener(View.OnLongClickListener onLongClickListener);

    void setOnPhotoTapListener(e eVar);

    void setOnScaleChangeListener(f fVar);

    void setOnViewTapListener(h hVar);

    void setScale(float f10);

    void setScale(float f10, float f11, float f12, boolean z10);

    void setScale(float f10, boolean z10);

    void setZoomTransitionDuration(long j10);

    void update(int i10, int i11);
}
