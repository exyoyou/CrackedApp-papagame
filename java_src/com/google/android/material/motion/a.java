package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class a<V extends View> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f31030g = "MaterialBackHelper";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f31031h = 300;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f31032i = 150;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f31033j = 100;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final TimeInterpolator f31034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    protected final V f31035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f31036c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final int f31037d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final int f31038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private BackEventCompat f31039f;

    public a(@NonNull V v10) {
        this.f31035b = v10;
        Context context = v10.getContext();
        this.f31034a = j.g(context, R.attr.motionEasingStandardDecelerateInterpolator, PathInterpolatorCompat.create(0.0f, 0.0f, 0.0f, 1.0f));
        this.f31036c = j.f(context, R.attr.motionDurationMedium2, 300);
        this.f31037d = j.f(context, R.attr.motionDurationShort3, 150);
        this.f31038e = j.f(context, R.attr.motionDurationShort2, 100);
    }

    public float a(float f10) {
        return this.f31034a.getInterpolation(f10);
    }

    @Nullable
    protected BackEventCompat b() {
        BackEventCompat backEventCompat = this.f31039f;
        this.f31039f = null;
        return backEventCompat;
    }

    @Nullable
    public BackEventCompat c() {
        BackEventCompat backEventCompat = this.f31039f;
        this.f31039f = null;
        return backEventCompat;
    }

    protected void d(@NonNull BackEventCompat backEventCompat) {
        this.f31039f = backEventCompat;
    }

    @Nullable
    protected BackEventCompat e(@NonNull BackEventCompat backEventCompat) {
        BackEventCompat backEventCompat2 = this.f31039f;
        this.f31039f = backEventCompat;
        return backEventCompat2;
    }
}
