package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
@Immutable
public class h0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f28102n = 4194304;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f28103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k0 f28104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f28105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.common.memory.c f28106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f28107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k0 f28108f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j0 f28109g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final k0 f28110h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f28111i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f28112j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f28113k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f28114l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f28115m;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private j0 f28116a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private k0 f28117b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private j0 f28118c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private com.facebook.common.memory.c f28119d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        private j0 f28120e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Nullable
        private k0 f28121f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        private j0 f28122g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        private k0 f28123h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Nullable
        private String f28124i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f28125j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f28126k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f28127l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f28128m;

        public h0 m() {
            return new h0(this);
        }

        public b n(int bitmapPoolMaxBitmapSize) {
            this.f28126k = bitmapPoolMaxBitmapSize;
            return this;
        }

        public b o(int bitmapPoolMaxPoolSize) {
            this.f28125j = bitmapPoolMaxPoolSize;
            return this;
        }

        public b p(j0 bitmapPoolParams) {
            this.f28116a = (j0) com.facebook.common.internal.i.i(bitmapPoolParams);
            return this;
        }

        public b q(k0 bitmapPoolStatsTracker) {
            this.f28117b = (k0) com.facebook.common.internal.i.i(bitmapPoolStatsTracker);
            return this;
        }

        public b r(String bitmapPoolType) {
            this.f28124i = bitmapPoolType;
            return this;
        }

        public b s(j0 flexByteArrayPoolParams) {
            this.f28118c = flexByteArrayPoolParams;
            return this;
        }

        public b t(boolean ignoreBitmapPoolHardCap) {
            this.f28128m = ignoreBitmapPoolHardCap;
            return this;
        }

        public b u(com.facebook.common.memory.c memoryTrimmableRegistry) {
            this.f28119d = memoryTrimmableRegistry;
            return this;
        }

        public b v(j0 memoryChunkPoolParams) {
            this.f28120e = (j0) com.facebook.common.internal.i.i(memoryChunkPoolParams);
            return this;
        }

        public b w(k0 memoryChunkPoolStatsTracker) {
            this.f28121f = (k0) com.facebook.common.internal.i.i(memoryChunkPoolStatsTracker);
            return this;
        }

        public b x(boolean registerLruBitmapPoolAsMemoryTrimmable) {
            this.f28127l = registerLruBitmapPoolAsMemoryTrimmable;
            return this;
        }

        public b y(j0 commonByteArrayPoolParams) {
            this.f28122g = (j0) com.facebook.common.internal.i.i(commonByteArrayPoolParams);
            return this;
        }

        public b z(k0 smallByteArrayPoolStatsTracker) {
            this.f28123h = (k0) com.facebook.common.internal.i.i(smallByteArrayPoolStatsTracker);
            return this;
        }

        private b() {
        }
    }

    public static b n() {
        return new b();
    }

    public int a() {
        return this.f28113k;
    }

    public int b() {
        return this.f28112j;
    }

    public j0 c() {
        return this.f28103a;
    }

    public k0 d() {
        return this.f28104b;
    }

    public String e() {
        return this.f28111i;
    }

    public j0 f() {
        return this.f28105c;
    }

    public j0 g() {
        return this.f28107e;
    }

    public k0 h() {
        return this.f28108f;
    }

    public com.facebook.common.memory.c i() {
        return this.f28106d;
    }

    public j0 j() {
        return this.f28109g;
    }

    public k0 k() {
        return this.f28110h;
    }

    public boolean l() {
        return this.f28115m;
    }

    public boolean m() {
        return this.f28114l;
    }

    private h0(b builder) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PoolConfig()");
        }
        this.f28103a = builder.f28116a == null ? p.a() : builder.f28116a;
        this.f28104b = builder.f28117b == null ? e0.h() : builder.f28117b;
        this.f28105c = builder.f28118c == null ? r.b() : builder.f28118c;
        this.f28106d = builder.f28119d == null ? com.facebook.common.memory.d.c() : builder.f28119d;
        this.f28107e = builder.f28120e == null ? s.a() : builder.f28120e;
        this.f28108f = builder.f28121f == null ? e0.h() : builder.f28121f;
        this.f28109g = builder.f28122g == null ? q.a() : builder.f28122g;
        this.f28110h = builder.f28123h == null ? e0.h() : builder.f28123h;
        this.f28111i = builder.f28124i == null ? "legacy" : builder.f28124i;
        this.f28112j = builder.f28125j;
        this.f28113k = builder.f28126k > 0 ? builder.f28126k : 4194304;
        this.f28114l = builder.f28127l;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        this.f28115m = builder.f28128m;
    }
}
