package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f27574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private CloseableReference<Bitmap> f27575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private List<CloseableReference<Bitmap>> f27576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27577d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private m4.a f27578e;

    g(d image) {
        this.f27574a = image;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f a() {
        try {
            return new f(this);
        } finally {
            CloseableReference.h(this.f27575b);
            this.f27575b = null;
            CloseableReference.i(this.f27576c);
            this.f27576c = null;
        }
    }

    @Nullable
    public m4.a b() {
        return this.f27578e;
    }

    @Nullable
    public List<CloseableReference<Bitmap>> c() {
        return CloseableReference.g(this.f27576c);
    }

    public int d() {
        return this.f27577d;
    }

    public d e() {
        return this.f27574a;
    }

    @Nullable
    public CloseableReference<Bitmap> f() {
        return CloseableReference.f(this.f27575b);
    }

    public g g(@Nullable m4.a bitmapTransformation) {
        this.f27578e = bitmapTransformation;
        return this;
    }

    public g h(@Nullable List<CloseableReference<Bitmap>> decodedFrames) {
        this.f27576c = CloseableReference.g(decodedFrames);
        return this;
    }

    public g i(int frameForPreview) {
        this.f27577d = frameForPreview;
        return this;
    }

    public g j(@Nullable CloseableReference<Bitmap> previewBitmap) {
        this.f27575b = CloseableReference.f(previewBitmap);
        return this;
    }
}
