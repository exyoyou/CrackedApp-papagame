package q3;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class f {
    public static final int C = -1;

    @Nullable
    private final b4.d A;

    @Nullable
    private b4.c.a B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final String f96467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final String f96468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final Object f96469c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final ImageRequest f96470d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.image.g f96471e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final ImageRequest f96472f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final ImageRequest f96473g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final ImageRequest[] f96474h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f96475i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f96476j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f96477k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f96478l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f96479m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final long f96480n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f96481o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f96482p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private final String f96483q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f96484r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f96485s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f96486t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final Throwable f96487u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f96488v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final long f96489w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final long f96490x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private final String f96491y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final long f96492z;

    public f(@Nullable String controllerId, @Nullable String requestId, @Nullable ImageRequest imageRequest, @Nullable Object callerContext, @Nullable com.facebook.imagepipeline.image.g imageInfo, @Nullable ImageRequest controllerImageRequest, @Nullable ImageRequest controllerLowResImageRequest, @Nullable ImageRequest[] controllerFirstAvailableImageRequests, long controllerSubmitTimeMs, long controllerIntermediateImageSetTimeMs, long controllerFinalImageSetTimeMs, long controllerFailureTimeMs, long controllerCancelTimeMs, long imageRequestStartTimeMs, long imageRequestEndTimeMs, int imageOrigin, @Nullable String ultimateProducerName, boolean isPrefetch, int onScreenWidthPx, int onScreenHeightPx, @Nullable Throwable errorThrowable, int visibilityState, long visibilityEventTimeMs, long invisibilityEventTime, @Nullable String componentTag, long imageDrawTimeMs, @Nullable b4.d dimensionsInfo, @Nullable b4.c.a extraData) {
        this.f96467a = controllerId;
        this.f96468b = requestId;
        this.f96470d = imageRequest;
        this.f96469c = callerContext;
        this.f96471e = imageInfo;
        this.f96472f = controllerImageRequest;
        this.f96473g = controllerLowResImageRequest;
        this.f96474h = controllerFirstAvailableImageRequests;
        this.f96475i = controllerSubmitTimeMs;
        this.f96476j = controllerIntermediateImageSetTimeMs;
        this.f96477k = controllerFinalImageSetTimeMs;
        this.f96478l = controllerFailureTimeMs;
        this.f96479m = controllerCancelTimeMs;
        this.f96480n = imageRequestStartTimeMs;
        this.f96481o = imageRequestEndTimeMs;
        this.f96482p = imageOrigin;
        this.f96483q = ultimateProducerName;
        this.f96484r = isPrefetch;
        this.f96485s = onScreenWidthPx;
        this.f96486t = onScreenHeightPx;
        this.f96487u = errorThrowable;
        this.f96488v = visibilityState;
        this.f96489w = visibilityEventTimeMs;
        this.f96490x = invisibilityEventTime;
        this.f96491y = componentTag;
        this.f96492z = imageDrawTimeMs;
        this.A = dimensionsInfo;
        this.B = extraData;
    }

    @Nullable
    public String A() {
        return this.f96483q;
    }

    public long B() {
        return this.f96489w;
    }

    public int C() {
        return this.f96488v;
    }

    public boolean D() {
        return this.f96484r;
    }

    public void E(b4.c.a extraData) {
        this.B = extraData;
    }

    public String a() {
        return com.facebook.common.internal.h.e(this).f("controller ID", this.f96467a).f("request ID", this.f96468b).f("controller image request", this.f96472f).f("controller low res image request", this.f96473g).f("controller first available image requests", this.f96474h).e("controller submit", this.f96475i).e("controller final image", this.f96477k).e("controller failure", this.f96478l).e("controller cancel", this.f96479m).e("start time", this.f96480n).e("end time", this.f96481o).f("origin", e.b(this.f96482p)).f("ultimateProducerName", this.f96483q).g("prefetch", this.f96484r).f("caller context", this.f96469c).f("image request", this.f96470d).f("image info", this.f96471e).d("on-screen width", this.f96485s).d("on-screen height", this.f96486t).d("visibility state", this.f96488v).f("component tag", this.f96491y).e("visibility event", this.f96489w).e("invisibility event", this.f96490x).e("image draw event", this.f96492z).f("dimensions info", this.A).f("extra data", this.B).toString();
    }

    @Nullable
    public Object b() {
        return this.f96469c;
    }

    @Nullable
    public String c() {
        return this.f96491y;
    }

    public long d() {
        return this.f96478l;
    }

    public long e() {
        return this.f96477k;
    }

    @Nullable
    public ImageRequest[] f() {
        return this.f96474h;
    }

    @Nullable
    public String g() {
        return this.f96467a;
    }

    @Nullable
    public ImageRequest h() {
        return this.f96472f;
    }

    public long i() {
        return this.f96476j;
    }

    @Nullable
    public ImageRequest j() {
        return this.f96473g;
    }

    public long k() {
        return this.f96475i;
    }

    @Nullable
    public b4.d l() {
        return this.A;
    }

    @Nullable
    public Throwable m() {
        return this.f96487u;
    }

    @Nullable
    public b4.c.a n() {
        return this.B;
    }

    public long o() {
        if (t() == -1 || u() == -1) {
            return -1L;
        }
        return t() - u();
    }

    public long p() {
        return this.f96492z;
    }

    @Nullable
    public com.facebook.imagepipeline.image.g q() {
        return this.f96471e;
    }

    public int r() {
        return this.f96482p;
    }

    @Nullable
    public ImageRequest s() {
        return this.f96470d;
    }

    public long t() {
        return this.f96481o;
    }

    public long u() {
        return this.f96480n;
    }

    public long v() {
        if (i() == -1 || k() == -1) {
            return -1L;
        }
        return i() - k();
    }

    public long w() {
        return this.f96490x;
    }

    public int x() {
        return this.f96486t;
    }

    public int y() {
        return this.f96485s;
    }

    @Nullable
    public String z() {
        return this.f96468b;
    }
}
