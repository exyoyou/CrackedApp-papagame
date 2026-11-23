package com.facebook.imagepipeline.image;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a extends c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.animated.base.f f28023e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28024f;

    public a(com.facebook.imagepipeline.animated.base.f imageResult) {
        this(imageResult, true);
    }

    @Override // com.facebook.imagepipeline.image.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            com.facebook.imagepipeline.animated.base.f fVar = this.f28023e;
            if (fVar == null) {
                return;
            }
            this.f28023e = null;
            fVar.a();
        }
    }

    @Override // com.facebook.imagepipeline.image.c
    public synchronized int d() {
        com.facebook.imagepipeline.animated.base.f fVar;
        fVar = this.f28023e;
        return fVar == null ? 0 : fVar.f().a();
    }

    @Override // com.facebook.imagepipeline.image.c
    public boolean e() {
        return this.f28024f;
    }

    @Override // com.facebook.imagepipeline.image.g
    public synchronized int getHeight() {
        com.facebook.imagepipeline.animated.base.f fVar;
        fVar = this.f28023e;
        return fVar == null ? 0 : fVar.f().getHeight();
    }

    @Override // com.facebook.imagepipeline.image.g
    public synchronized int getWidth() {
        com.facebook.imagepipeline.animated.base.f fVar;
        fVar = this.f28023e;
        return fVar == null ? 0 : fVar.f().getWidth();
    }

    @Nullable
    public synchronized com.facebook.imagepipeline.animated.base.d h() {
        com.facebook.imagepipeline.animated.base.f fVar;
        fVar = this.f28023e;
        return fVar == null ? null : fVar.f();
    }

    @Override // com.facebook.imagepipeline.image.c
    public synchronized boolean isClosed() {
        return this.f28023e == null;
    }

    @Nullable
    public synchronized com.facebook.imagepipeline.animated.base.f j() {
        return this.f28023e;
    }

    public a(com.facebook.imagepipeline.animated.base.f imageResult, boolean isStateful) {
        this.f28023e = imageResult;
        this.f28024f = isStateful;
    }
}
