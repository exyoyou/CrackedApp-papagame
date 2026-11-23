package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes5.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    @ColorRes
    private final int[] f30144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final o f30145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @AttrRes
    private final int f30146c;

    public static class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private o f30148b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        @ColorRes
        private int[] f30147a = new int[0];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @AttrRes
        private int f30149c = R.attr.colorPrimary;

        @NonNull
        public q d() {
            return new q(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b e(@AttrRes int i10) {
            this.f30149c = i10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b f(@Nullable o oVar) {
            this.f30148b = oVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b g(@NonNull @ColorRes int[] iArr) {
            this.f30147a = iArr;
            return this;
        }
    }

    @NonNull
    public static q a() {
        return new b().f(o.c()).d();
    }

    @AttrRes
    public int b() {
        return this.f30146c;
    }

    @Nullable
    public o c() {
        return this.f30145b;
    }

    @NonNull
    @ColorRes
    public int[] d() {
        return this.f30144a;
    }

    @StyleRes
    int e(@StyleRes int i10) {
        o oVar = this.f30145b;
        return (oVar == null || oVar.e() == 0) ? i10 : this.f30145b.e();
    }

    private q(b bVar) {
        this.f30144a = bVar.f30147a;
        this.f30145b = bVar.f30148b;
        this.f30146c = bVar.f30149c;
    }
}
