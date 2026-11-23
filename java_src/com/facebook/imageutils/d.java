package com.facebook.imageutils;

import android.graphics.ColorSpace;
import android.util.Pair;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Pair<Integer, Integer> f28768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final ColorSpace f28769b;

    public d(int width, int height, @Nullable ColorSpace colorSpace) {
        this.f28768a = (width == -1 || height == -1) ? null : new Pair<>(Integer.valueOf(width), Integer.valueOf(height));
        this.f28769b = colorSpace;
    }

    @Nullable
    public ColorSpace a() {
        return this.f28769b;
    }

    @Nullable
    public Pair<Integer, Integer> b() {
        return this.f28768a;
    }
}
