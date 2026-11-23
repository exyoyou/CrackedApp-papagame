package com.facebook.cache.disk;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.common.internal.l;
import com.facebook.common.internal.m;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f26754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l<File> f26756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f26757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f26758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f26759f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final g f26760g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CacheErrorLogger f26761h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final CacheEventListener f26762i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final f3.b f26763j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final Context f26764k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f26765l;

    class a implements l<File> {
        a() {
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public File get() {
            com.facebook.common.internal.i.i(b.this.f26764k);
            return b.this.f26764k.getApplicationContext().getCacheDir();
        }
    }

    /* JADX INFO: renamed from: com.facebook.cache.disk.b$b, reason: collision with other inner class name */
    public static class C0555b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f26767a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f26768b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private l<File> f26769c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f26770d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f26771e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f26772f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private g f26773g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        private CacheErrorLogger f26774h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Nullable
        private CacheEventListener f26775i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @Nullable
        private f3.b f26776j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f26777k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        @Nullable
        private final Context f26778l;

        /* synthetic */ C0555b(Context context, a aVar) {
            this(context);
        }

        public b n() {
            return new b(this);
        }

        public C0555b o(String baseDirectoryName) {
            this.f26768b = baseDirectoryName;
            return this;
        }

        public C0555b p(final File baseDirectoryPath) {
            this.f26769c = m.a(baseDirectoryPath);
            return this;
        }

        public C0555b q(l<File> baseDirectoryPathSupplier) {
            this.f26769c = baseDirectoryPathSupplier;
            return this;
        }

        public C0555b r(CacheErrorLogger cacheErrorLogger) {
            this.f26774h = cacheErrorLogger;
            return this;
        }

        public C0555b s(CacheEventListener cacheEventListener) {
            this.f26775i = cacheEventListener;
            return this;
        }

        public C0555b t(f3.b diskTrimmableRegistry) {
            this.f26776j = diskTrimmableRegistry;
            return this;
        }

        public C0555b u(g supplier) {
            this.f26773g = supplier;
            return this;
        }

        public C0555b v(boolean indexEnabled) {
            this.f26777k = indexEnabled;
            return this;
        }

        public C0555b w(long maxCacheSize) {
            this.f26770d = maxCacheSize;
            return this;
        }

        public C0555b x(long maxCacheSizeOnLowDiskSpace) {
            this.f26771e = maxCacheSizeOnLowDiskSpace;
            return this;
        }

        public C0555b y(long maxCacheSizeOnVeryLowDiskSpace) {
            this.f26772f = maxCacheSizeOnVeryLowDiskSpace;
            return this;
        }

        public C0555b z(int version) {
            this.f26767a = version;
            return this;
        }

        private C0555b(@Nullable Context context) {
            this.f26767a = 1;
            this.f26768b = "image_cache";
            this.f26770d = 41943040L;
            this.f26771e = 10485760L;
            this.f26772f = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
            this.f26773g = new com.facebook.cache.disk.a();
            this.f26778l = context;
        }
    }

    protected b(C0555b builder) {
        Context context = builder.f26778l;
        this.f26764k = context;
        com.facebook.common.internal.i.p((builder.f26769c == null && context == null) ? false : true, "Either a non-null context or a base directory path or supplier must be provided.");
        if (builder.f26769c == null && context != null) {
            builder.f26769c = new a();
        }
        this.f26754a = builder.f26767a;
        this.f26755b = (String) com.facebook.common.internal.i.i(builder.f26768b);
        this.f26756c = (l) com.facebook.common.internal.i.i(builder.f26769c);
        this.f26757d = builder.f26770d;
        this.f26758e = builder.f26771e;
        this.f26759f = builder.f26772f;
        this.f26760g = (g) com.facebook.common.internal.i.i(builder.f26773g);
        this.f26761h = builder.f26774h == null ? com.facebook.cache.common.h.b() : builder.f26774h;
        this.f26762i = builder.f26775i == null ? com.facebook.cache.common.i.i() : builder.f26775i;
        this.f26763j = builder.f26776j == null ? f3.c.c() : builder.f26776j;
        this.f26765l = builder.f26777k;
    }

    public static C0555b m(@Nullable Context context) {
        return new C0555b(context, null);
    }

    public String b() {
        return this.f26755b;
    }

    public l<File> c() {
        return this.f26756c;
    }

    public CacheErrorLogger d() {
        return this.f26761h;
    }

    public CacheEventListener e() {
        return this.f26762i;
    }

    public long f() {
        return this.f26757d;
    }

    public f3.b g() {
        return this.f26763j;
    }

    @Nullable
    public Context getContext() {
        return this.f26764k;
    }

    public g h() {
        return this.f26760g;
    }

    public boolean i() {
        return this.f26765l;
    }

    public long j() {
        return this.f26758e;
    }

    public long k() {
        return this.f26759f;
    }

    public int l() {
        return this.f26754a;
    }
}
