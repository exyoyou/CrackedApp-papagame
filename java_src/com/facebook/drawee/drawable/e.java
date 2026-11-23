package com.facebook.drawee.drawable;

import android.annotation.SuppressLint;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f27177f = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27178a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f27179b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private ColorFilter f27180c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27181d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f27182e = -1;

    @SuppressLint({"Range"})
    public void a(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        int i10 = this.f27178a;
        if (i10 != -1) {
            drawable.setAlpha(i10);
        }
        if (this.f27179b) {
            drawable.setColorFilter(this.f27180c);
        }
        int i11 = this.f27181d;
        if (i11 != -1) {
            drawable.setDither(i11 != 0);
        }
        int i12 = this.f27182e;
        if (i12 != -1) {
            drawable.setFilterBitmap(i12 != 0);
        }
    }

    public void b(int alpha) {
        this.f27178a = alpha;
    }

    public void c(@Nullable ColorFilter colorFilter) {
        this.f27180c = colorFilter;
        this.f27179b = colorFilter != null;
    }

    public void d(boolean z10) {
        this.f27181d = z10 ? 1 : 0;
    }

    public void e(boolean z10) {
        this.f27182e = z10 ? 1 : 0;
    }
}
