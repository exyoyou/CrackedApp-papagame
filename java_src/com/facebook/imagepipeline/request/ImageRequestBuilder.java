package com.facebook.imagepipeline.request;

import android.net.Uri;
import com.facebook.common.internal.i;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class ImageRequestBuilder {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private j4.f f28747n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f28750q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f28734a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageRequest.RequestLevel f28735b = ImageRequest.RequestLevel.FULL_FETCH;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28736c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.common.e f28737d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private RotationOptions f28738e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.facebook.imagepipeline.common.c f28739f = com.facebook.imagepipeline.common.c.a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageRequest.CacheChoice f28740g = ImageRequest.CacheChoice.DEFAULT;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f28741h = ImagePipelineConfig.getDefaultImageRequestConfig().isProgressiveRenderingEnabled();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f28742i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f28743j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Priority f28744k = Priority.HIGH;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private d f28745l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private Boolean f28746m = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.common.a f28748o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private Boolean f28749p = null;

    public static class BuilderException extends RuntimeException {
        public BuilderException(String message) {
            super("Invalid request builder: " + message);
        }
    }

    private ImageRequestBuilder() {
    }

    private ImageRequestBuilder B(int cachesDisabled) {
        this.f28736c = cachesDisabled;
        return this;
    }

    public static ImageRequestBuilder d(ImageRequest imageRequest) {
        return x(imageRequest.w()).D(imageRequest.i()).z(imageRequest.e()).A(imageRequest.f()).F(imageRequest.k()).E(imageRequest.j()).G(imageRequest.l()).B(imageRequest.g()).H(imageRequest.m()).I(imageRequest.q()).K(imageRequest.p()).L(imageRequest.s()).J(imageRequest.r()).N(imageRequest.u()).O(imageRequest.E()).C(imageRequest.h());
    }

    public static ImageRequestBuilder w(int resId) {
        return x(com.facebook.common.util.f.f(resId));
    }

    public static ImageRequestBuilder x(Uri uri) {
        return new ImageRequestBuilder().P(uri);
    }

    public ImageRequestBuilder A(ImageRequest.CacheChoice cacheChoice) {
        this.f28740g = cacheChoice;
        return this;
    }

    public ImageRequestBuilder C(int delayMs) {
        this.f28750q = delayMs;
        return this;
    }

    public ImageRequestBuilder D(com.facebook.imagepipeline.common.c imageDecodeOptions) {
        this.f28739f = imageDecodeOptions;
        return this;
    }

    public ImageRequestBuilder E(boolean loadThumbnailOnly) {
        this.f28743j = loadThumbnailOnly;
        return this;
    }

    public ImageRequestBuilder F(boolean enabled) {
        this.f28742i = enabled;
        return this;
    }

    public ImageRequestBuilder G(ImageRequest.RequestLevel requestLevel) {
        this.f28735b = requestLevel;
        return this;
    }

    public ImageRequestBuilder H(@Nullable d postprocessor) {
        this.f28745l = postprocessor;
        return this;
    }

    public ImageRequestBuilder I(boolean enabled) {
        this.f28741h = enabled;
        return this;
    }

    public ImageRequestBuilder J(@Nullable j4.f requestListener) {
        this.f28747n = requestListener;
        return this;
    }

    public ImageRequestBuilder K(Priority requestPriority) {
        this.f28744k = requestPriority;
        return this;
    }

    public ImageRequestBuilder L(@Nullable com.facebook.imagepipeline.common.e resizeOptions) {
        this.f28737d = resizeOptions;
        return this;
    }

    public ImageRequestBuilder M(@Nullable Boolean resizingAllowedOverride) {
        this.f28749p = resizingAllowedOverride;
        return this;
    }

    public ImageRequestBuilder N(@Nullable RotationOptions rotationOptions) {
        this.f28738e = rotationOptions;
        return this;
    }

    public ImageRequestBuilder O(@Nullable Boolean shouldDecodePrefetches) {
        this.f28746m = shouldDecodePrefetches;
        return this;
    }

    public ImageRequestBuilder P(Uri uri) {
        i.i(uri);
        this.f28734a = uri;
        return this;
    }

    @Nullable
    public Boolean Q() {
        return this.f28746m;
    }

    protected void R() {
        Uri uri = this.f28734a;
        if (uri == null) {
            throw new BuilderException("Source must be set!");
        }
        if (com.facebook.common.util.f.m(uri)) {
            if (!this.f28734a.isAbsolute()) {
                throw new BuilderException("Resource URI path must be absolute.");
            }
            if (this.f28734a.getPath().isEmpty()) {
                throw new BuilderException("Resource URI must not be empty");
            }
            try {
                Integer.parseInt(this.f28734a.getPath().substring(1));
            } catch (NumberFormatException unused) {
                throw new BuilderException("Resource URI path must be a resource id.");
            }
        }
        if (com.facebook.common.util.f.h(this.f28734a) && !this.f28734a.isAbsolute()) {
            throw new BuilderException("Asset URI path must be absolute.");
        }
    }

    public ImageRequest a() {
        R();
        return new ImageRequest(this);
    }

    public ImageRequestBuilder b() {
        this.f28736c |= 48;
        return this;
    }

    public ImageRequestBuilder c() {
        this.f28736c |= 15;
        return this;
    }

    @Nullable
    public com.facebook.imagepipeline.common.a e() {
        return this.f28748o;
    }

    public ImageRequest.CacheChoice f() {
        return this.f28740g;
    }

    public int g() {
        return this.f28736c;
    }

    public int h() {
        return this.f28750q;
    }

    public com.facebook.imagepipeline.common.c i() {
        return this.f28739f;
    }

    public boolean j() {
        return this.f28743j;
    }

    public ImageRequest.RequestLevel k() {
        return this.f28735b;
    }

    @Nullable
    public d l() {
        return this.f28745l;
    }

    @Nullable
    public j4.f m() {
        return this.f28747n;
    }

    public Priority n() {
        return this.f28744k;
    }

    @Nullable
    public com.facebook.imagepipeline.common.e o() {
        return this.f28737d;
    }

    @Nullable
    public Boolean p() {
        return this.f28749p;
    }

    @Nullable
    public RotationOptions q() {
        return this.f28738e;
    }

    public Uri r() {
        return this.f28734a;
    }

    public boolean s() {
        return (this.f28736c & 48) == 0 && com.facebook.common.util.f.n(this.f28734a);
    }

    public boolean t() {
        return this.f28742i;
    }

    public boolean u() {
        return (this.f28736c & 15) == 0;
    }

    public boolean v() {
        return this.f28741h;
    }

    @Deprecated
    public ImageRequestBuilder y(boolean enabled) {
        return enabled ? N(RotationOptions.a()) : N(RotationOptions.d());
    }

    public ImageRequestBuilder z(@Nullable com.facebook.imagepipeline.common.a bytesRange) {
        this.f28748o = bytesRange;
        return this;
    }
}
