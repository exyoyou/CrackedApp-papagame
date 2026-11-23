package com.facebook.imagepipeline.image;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class i {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final i f28055g = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Uri f28056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final EncodedImageOrigin f28057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final Object f28058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f28059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f28060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f28061f;

    private i() {
        this.f28056a = null;
        this.f28057b = EncodedImageOrigin.NOT_SET;
        this.f28058c = null;
        this.f28059d = -1;
        this.f28060e = -1;
        this.f28061f = -1;
    }

    @Nullable
    public Object a() {
        return this.f28058c;
    }

    public int b() {
        return this.f28060e;
    }

    @Nullable
    public EncodedImageOrigin c() {
        return this.f28057b;
    }

    public int d() {
        return this.f28061f;
    }

    @Nullable
    public Uri e() {
        return this.f28056a;
    }

    public int f() {
        return this.f28059d;
    }

    public i(Uri sourceUri, EncodedImageOrigin origin, @Nullable Object callerContext, int width, int height, int size) {
        this.f28056a = sourceUri;
        this.f28057b = origin;
        this.f28058c = callerContext;
        this.f28059d = width;
        this.f28060e = height;
        this.f28061f = size;
    }
}
