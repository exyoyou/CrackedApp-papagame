package com.facebook.imagepipeline.multiuri;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private ImageRequest f28206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private ImageRequest[] f28207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private ImageRequest f28208c;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private ImageRequest f28209a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private ImageRequest f28210b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private ImageRequest[] f28211c;

        public a d() {
            return new a(this);
        }

        public b e(@Nullable ImageRequest highResImageRequest) {
            this.f28210b = highResImageRequest;
            return this;
        }

        public b f(@Nullable ImageRequest... multiImageRequests) {
            this.f28211c = multiImageRequests;
            return this;
        }

        public b g(@Nullable ImageRequest lowResImageRequest) {
            this.f28209a = lowResImageRequest;
            return this;
        }

        private b() {
        }
    }

    public static b a() {
        return new b();
    }

    @Nullable
    public ImageRequest b() {
        return this.f28208c;
    }

    @Nullable
    public ImageRequest c() {
        return this.f28206a;
    }

    @Nullable
    public ImageRequest[] d() {
        return this.f28207b;
    }

    private a(b builder) {
        this.f28206a = builder.f28209a;
        this.f28208c = builder.f28210b;
        this.f28207b = builder.f28211c;
    }
}
