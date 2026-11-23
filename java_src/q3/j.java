package q3;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class j {

    @Nullable
    private String A;

    @Nullable
    private b4.d B;

    @Nullable
    private b4.c.a C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private String f96504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private String f96505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private ImageRequest f96506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Object f96507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.image.g f96508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private ImageRequest f96509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private ImageRequest f96510g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private ImageRequest[] f96511h;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private String f96520q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f96521r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private Throwable f96524u;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f96512i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f96513j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f96514k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f96515l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f96516m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f96517n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f96518o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f96519p = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f96522s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f96523t = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f96525v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f96526w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f96527x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f96528y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f96529z = -1;

    public void A(int onScreenHeightPx) {
        this.f96523t = onScreenHeightPx;
    }

    public void B(int onScreenWidthPx) {
        this.f96522s = onScreenWidthPx;
    }

    public void C(boolean prefetch) {
        this.f96521r = prefetch;
    }

    public void D(@Nullable String requestId) {
        this.f96505b = requestId;
    }

    public void E(@Nullable String ultimateProducerName) {
        this.f96520q = ultimateProducerName;
    }

    public void F(long visibilityEventTimeMs) {
        this.f96527x = visibilityEventTimeMs;
    }

    public void G(boolean visible) {
        this.f96526w = visible ? 1 : 2;
    }

    public f H() {
        return new f(this.f96504a, this.f96505b, this.f96506c, this.f96507d, this.f96508e, this.f96509f, this.f96510g, this.f96511h, this.f96512i, this.f96513j, this.f96514k, this.f96515l, this.f96516m, this.f96517n, this.f96518o, this.f96519p, this.f96520q, this.f96521r, this.f96522s, this.f96523t, this.f96524u, this.f96526w, this.f96527x, this.f96528y, this.A, this.f96529z, this.B, this.C);
    }

    @Nullable
    public b4.d a() {
        return this.B;
    }

    @Nullable
    public Object b() {
        return this.C;
    }

    public long c() {
        return this.f96529z;
    }

    public int d() {
        return this.f96525v;
    }

    public void e() {
        this.f96505b = null;
        this.f96506c = null;
        this.f96507d = null;
        this.f96508e = null;
        this.f96509f = null;
        this.f96510g = null;
        this.f96511h = null;
        this.f96519p = 1;
        this.f96520q = null;
        this.f96521r = false;
        this.f96522s = -1;
        this.f96523t = -1;
        this.f96524u = null;
        this.f96525v = -1;
        this.f96526w = -1;
        this.A = null;
        this.B = null;
        this.C = null;
        f();
    }

    public void f() {
        this.f96517n = -1L;
        this.f96518o = -1L;
        this.f96512i = -1L;
        this.f96514k = -1L;
        this.f96515l = -1L;
        this.f96516m = -1L;
        this.f96527x = -1L;
        this.f96528y = -1L;
        this.f96529z = -1L;
    }

    public void g(@Nullable Object callerContext) {
        this.f96507d = callerContext;
    }

    public void h(@Nullable String componentTag) {
        this.A = componentTag;
    }

    public void i(long controllerCancelTimeMs) {
        this.f96516m = controllerCancelTimeMs;
    }

    public void j(long controllerFailureTimeMs) {
        this.f96515l = controllerFailureTimeMs;
    }

    public void k(long controllerFinalImageSetTimeMs) {
        this.f96514k = controllerFinalImageSetTimeMs;
    }

    public void l(@Nullable String controllerId) {
        this.f96504a = controllerId;
    }

    public void m(@Nullable ImageRequest imageRequest, @Nullable ImageRequest lowResImageRequest, @Nullable ImageRequest[] firstAvailableImageRequests) {
        this.f96509f = imageRequest;
        this.f96510g = lowResImageRequest;
        this.f96511h = firstAvailableImageRequests;
    }

    public void n(long controllerIntermediateImageSetTimeMs) {
        this.f96513j = controllerIntermediateImageSetTimeMs;
    }

    public void o(long controllerSubmitTimeMs) {
        this.f96512i = controllerSubmitTimeMs;
    }

    public void p(b4.d dimensionsInfo) {
        this.B = dimensionsInfo;
    }

    public void q(@Nullable Throwable errorThrowable) {
        this.f96524u = errorThrowable;
    }

    public void r(@Nullable b4.c.a extraData) {
        this.C = extraData;
    }

    public void s(long imageDrawTimeMs) {
        this.f96529z = imageDrawTimeMs;
    }

    public void t(@Nullable com.facebook.imagepipeline.image.g imageInfo) {
        this.f96508e = imageInfo;
    }

    public void u(int imageLoadStatus) {
        this.f96525v = imageLoadStatus;
    }

    public void v(int imageOrigin) {
        this.f96519p = imageOrigin;
    }

    public void w(@Nullable ImageRequest imageRequest) {
        this.f96506c = imageRequest;
    }

    public void x(long imageRequestEndTimeMs) {
        this.f96518o = imageRequestEndTimeMs;
    }

    public void y(long imageRequestStartTimeMs) {
        this.f96517n = imageRequestStartTimeMs;
    }

    public void z(long invisibilityEventTimeMs) {
        this.f96528y = invisibilityEventTimeMs;
    }
}
