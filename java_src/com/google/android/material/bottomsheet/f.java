package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
class f extends WindowInsetsAnimationCompat.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f29689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f29690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f29691c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f29692d;

    public f(View view) {
        super(0);
        this.f29692d = new int[2];
        this.f29689a = view;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onEnd(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f29689a.setTranslationY(0.0f);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onPrepare(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f29689a.getLocationOnScreen(this.f29692d);
        this.f29690b = this.f29692d[1];
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    @NonNull
    public WindowInsetsCompat onProgress(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list) {
        for (WindowInsetsAnimationCompat windowInsetsAnimationCompat : list) {
            if ((windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                this.f29689a.setTranslationY(com.google.android.material.animation.b.c(this.f29691c, 0, windowInsetsAnimationCompat.getInterpolatedFraction()));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    @NonNull
    public WindowInsetsAnimationCompat.BoundsCompat onStart(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat, @NonNull WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        this.f29689a.getLocationOnScreen(this.f29692d);
        int i10 = this.f29690b - this.f29692d[1];
        this.f29691c = i10;
        this.f29689a.setTranslationY(i10);
        return boundsCompat;
    }
}
