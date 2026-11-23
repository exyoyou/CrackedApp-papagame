package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f28099b = 384;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f28100a;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f28101a;

        public h a() {
            return new h(this);
        }

        public int b() {
            return this.f28101a;
        }

        public b c(int maxBitmapCount) {
            this.f28101a = maxBitmapCount;
            return this;
        }

        private b() {
            this.f28101a = 384;
        }
    }

    public h(b builder) {
        this.f28100a = 384;
        this.f28100a = builder.b();
    }

    public static b b() {
        return new b();
    }

    public int a() {
        return this.f28100a;
    }

    public void c(int maxBitmapCount) {
        this.f28100a = maxBitmapCount;
    }
}
