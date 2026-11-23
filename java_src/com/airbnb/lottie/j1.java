package com.airbnb.lottie;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, String> f5681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final LottieAnimationView f5682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final LottieDrawable f5683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5684d;

    @VisibleForTesting
    j1() {
        this.f5681a = new HashMap();
        this.f5684d = true;
        this.f5682b = null;
        this.f5683c = null;
    }

    private void d() {
        LottieAnimationView lottieAnimationView = this.f5682b;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
        LottieDrawable lottieDrawable = this.f5683c;
        if (lottieDrawable != null) {
            lottieDrawable.invalidateSelf();
        }
    }

    public String a(String str) {
        return str;
    }

    public String b(String str, String str2) {
        return a(str2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final String c(String str, String str2) {
        if (this.f5684d && this.f5681a.containsKey(str2)) {
            return this.f5681a.get(str2);
        }
        String strB = b(str, str2);
        if (this.f5684d) {
            this.f5681a.put(str2, strB);
        }
        return strB;
    }

    public void e() {
        this.f5681a.clear();
        d();
    }

    public void f(String str) {
        this.f5681a.remove(str);
        d();
    }

    public void g(boolean z10) {
        this.f5684d = z10;
    }

    public void h(String str, String str2) {
        this.f5681a.put(str, str2);
        d();
    }

    public j1(LottieAnimationView lottieAnimationView) {
        this.f5681a = new HashMap();
        this.f5684d = true;
        this.f5682b = lottieAnimationView;
        this.f5683c = null;
    }

    public j1(LottieDrawable lottieDrawable) {
        this.f5681a = new HashMap();
        this.f5684d = true;
        this.f5683c = lottieDrawable;
        this.f5682b = null;
    }
}
