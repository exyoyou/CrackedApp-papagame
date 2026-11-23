package com.facebook.fresco.animation.backend;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface a extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f27380a = -1;

    int a();

    void clear();

    int d();

    int e();

    void f(Rect bounds);

    void g(@Nullable ColorFilter colorFilter);

    void i(@IntRange(from = 0, to = 255) int alpha);

    boolean j(Drawable parent, Canvas canvas, int frameNumber);
}
