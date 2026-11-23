package com.facebook.imagepipeline.request;

import android.net.Uri;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.facebook.common.internal.h;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.common.RotationOptions;
import java.io.File;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public class ImageRequest {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static boolean f28709w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static boolean f28710x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final com.facebook.common.internal.f<ImageRequest, Uri> f28711y = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f28712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CacheChoice f28713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Uri f28714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f28715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private File f28716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f28717f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f28718g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f28719h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.facebook.imagepipeline.common.c f28720i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.common.e f28721j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final RotationOptions f28722k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.common.a f28723l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Priority f28724m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final RequestLevel f28725n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f28726o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f28727p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f28728q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private final Boolean f28729r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private final d f28730s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private final j4.f f28731t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final Boolean f28732u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f28733v;

    public enum CacheChoice {
        SMALL,
        DEFAULT
    }

    public @interface CachesLocationsMasks {
        public static final int BITMAP_READ = 1;
        public static final int BITMAP_WRITE = 2;
        public static final int DISK_READ = 16;
        public static final int DISK_WRITE = 32;
        public static final int ENCODED_READ = 4;
        public static final int ENCODED_WRITE = 8;
    }

    public enum RequestLevel {
        FULL_FETCH(1),
        DISK_CACHE(2),
        ENCODED_MEMORY_CACHE(3),
        BITMAP_MEMORY_CACHE(4);

        private int mValue;

        RequestLevel(int value) {
            this.mValue = value;
        }

        public static RequestLevel getMax(RequestLevel requestLevel1, RequestLevel requestLevel2) {
            return requestLevel1.getValue() > requestLevel2.getValue() ? requestLevel1 : requestLevel2;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    static class a implements com.facebook.common.internal.f<ImageRequest, Uri> {
        a() {
        }

        @Override // com.facebook.common.internal.f
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Uri apply(@Nullable ImageRequest arg) {
            if (arg != null) {
                return arg.w();
            }
            return null;
        }
    }

    protected ImageRequest(ImageRequestBuilder builder) {
        this.f28713b = builder.f();
        Uri uriR = builder.r();
        this.f28714c = uriR;
        this.f28715d = y(uriR);
        this.f28717f = builder.v();
        this.f28718g = builder.t();
        this.f28719h = builder.j();
        this.f28720i = builder.i();
        this.f28721j = builder.o();
        this.f28722k = builder.q() == null ? RotationOptions.a() : builder.q();
        this.f28723l = builder.e();
        this.f28724m = builder.n();
        this.f28725n = builder.k();
        this.f28726o = builder.g();
        this.f28727p = builder.s();
        this.f28728q = builder.u();
        this.f28729r = builder.Q();
        this.f28730s = builder.l();
        this.f28731t = builder.m();
        this.f28732u = builder.p();
        this.f28733v = builder.h();
    }

    public static void C(boolean cacheHashcode) {
        f28710x = cacheHashcode;
    }

    public static void D(boolean useCachedHashcodeInEquals) {
        f28709w = useCachedHashcodeInEquals;
    }

    @Nullable
    public static ImageRequest a(@Nullable File file) {
        if (file == null) {
            return null;
        }
        return b(com.facebook.common.util.f.d(file));
    }

    @Nullable
    public static ImageRequest b(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return ImageRequestBuilder.x(uri).a();
    }

    @Nullable
    public static ImageRequest c(@Nullable String uriString) {
        if (uriString == null || uriString.length() == 0) {
            return null;
        }
        return b(Uri.parse(uriString));
    }

    private static int y(final Uri uri) {
        if (uri == null) {
            return -1;
        }
        if (com.facebook.common.util.f.n(uri)) {
            return 0;
        }
        if (com.facebook.common.util.f.l(uri)) {
            return j3.a.f(j3.a.b(uri.getPath())) ? 2 : 3;
        }
        if (com.facebook.common.util.f.k(uri)) {
            return 4;
        }
        if (com.facebook.common.util.f.h(uri)) {
            return 5;
        }
        if (com.facebook.common.util.f.m(uri)) {
            return 6;
        }
        if (com.facebook.common.util.f.g(uri)) {
            return 7;
        }
        return com.facebook.common.util.f.o(uri) ? 8 : -1;
    }

    public boolean A() {
        return this.f28727p;
    }

    public boolean B() {
        return this.f28728q;
    }

    @Nullable
    public Boolean E() {
        return this.f28729r;
    }

    @Deprecated
    public boolean d() {
        return this.f28722k.h();
    }

    @Nullable
    public com.facebook.imagepipeline.common.a e() {
        return this.f28723l;
    }

    public boolean equals(@Nullable Object o10) {
        if (!(o10 instanceof ImageRequest)) {
            return false;
        }
        ImageRequest imageRequest = (ImageRequest) o10;
        if (f28709w) {
            int i10 = this.f28712a;
            int i11 = imageRequest.f28712a;
            if (i10 != 0 && i11 != 0 && i10 != i11) {
                return false;
            }
        }
        if (this.f28718g != imageRequest.f28718g || this.f28727p != imageRequest.f28727p || this.f28728q != imageRequest.f28728q || !h.a(this.f28714c, imageRequest.f28714c) || !h.a(this.f28713b, imageRequest.f28713b) || !h.a(this.f28716e, imageRequest.f28716e) || !h.a(this.f28723l, imageRequest.f28723l) || !h.a(this.f28720i, imageRequest.f28720i) || !h.a(this.f28721j, imageRequest.f28721j) || !h.a(this.f28724m, imageRequest.f28724m) || !h.a(this.f28725n, imageRequest.f28725n) || !h.a(Integer.valueOf(this.f28726o), Integer.valueOf(imageRequest.f28726o)) || !h.a(this.f28729r, imageRequest.f28729r) || !h.a(this.f28732u, imageRequest.f28732u) || !h.a(this.f28722k, imageRequest.f28722k) || this.f28719h != imageRequest.f28719h) {
            return false;
        }
        d dVar = this.f28730s;
        com.facebook.cache.common.c cVarA = dVar != null ? dVar.a() : null;
        d dVar2 = imageRequest.f28730s;
        return h.a(cVarA, dVar2 != null ? dVar2.a() : null) && this.f28733v == imageRequest.f28733v;
    }

    public CacheChoice f() {
        return this.f28713b;
    }

    public int g() {
        return this.f28726o;
    }

    public int h() {
        return this.f28733v;
    }

    public int hashCode() {
        boolean z10 = f28710x;
        int iC = z10 ? this.f28712a : 0;
        if (iC == 0) {
            d dVar = this.f28730s;
            iC = h.c(this.f28713b, this.f28714c, Boolean.valueOf(this.f28718g), this.f28723l, this.f28724m, this.f28725n, Integer.valueOf(this.f28726o), Boolean.valueOf(this.f28727p), Boolean.valueOf(this.f28728q), this.f28720i, this.f28729r, this.f28721j, this.f28722k, dVar != null ? dVar.a() : null, this.f28732u, Integer.valueOf(this.f28733v), Boolean.valueOf(this.f28719h));
            if (z10) {
                this.f28712a = iC;
            }
        }
        return iC;
    }

    public com.facebook.imagepipeline.common.c i() {
        return this.f28720i;
    }

    public boolean j() {
        return this.f28719h;
    }

    public boolean k() {
        return this.f28718g;
    }

    public RequestLevel l() {
        return this.f28725n;
    }

    @Nullable
    public d m() {
        return this.f28730s;
    }

    public int n() {
        com.facebook.imagepipeline.common.e eVar = this.f28721j;
        if (eVar != null) {
            return eVar.f27799b;
        }
        return 2048;
    }

    public int o() {
        com.facebook.imagepipeline.common.e eVar = this.f28721j;
        if (eVar != null) {
            return eVar.f27798a;
        }
        return 2048;
    }

    public Priority p() {
        return this.f28724m;
    }

    public boolean q() {
        return this.f28717f;
    }

    @Nullable
    public j4.f r() {
        return this.f28731t;
    }

    @Nullable
    public com.facebook.imagepipeline.common.e s() {
        return this.f28721j;
    }

    @Nullable
    public Boolean t() {
        return this.f28732u;
    }

    public String toString() {
        return h.e(this).f(ContentProviderManager.PROVIDER_URI, this.f28714c).f("cacheChoice", this.f28713b).f("decodeOptions", this.f28720i).f("postprocessor", this.f28730s).f("priority", this.f28724m).f("resizeOptions", this.f28721j).f("rotationOptions", this.f28722k).f("bytesRange", this.f28723l).f("resizingAllowedOverride", this.f28732u).g("progressiveRenderingEnabled", this.f28717f).g("localThumbnailPreviewsEnabled", this.f28718g).g("loadThumbnailOnly", this.f28719h).f("lowestPermittedRequestLevel", this.f28725n).d("cachesDisabled", this.f28726o).g("isDiskCacheEnabled", this.f28727p).g("isMemoryCacheEnabled", this.f28728q).f("decodePrefetches", this.f28729r).d("delayMs", this.f28733v).toString();
    }

    public RotationOptions u() {
        return this.f28722k;
    }

    public synchronized File v() {
        if (this.f28716e == null) {
            this.f28716e = new File(this.f28714c.getPath());
        }
        return this.f28716e;
    }

    public Uri w() {
        return this.f28714c;
    }

    public int x() {
        return this.f28715d;
    }

    public boolean z(int cacheMask) {
        return (cacheMask & g()) == 0;
    }
}
