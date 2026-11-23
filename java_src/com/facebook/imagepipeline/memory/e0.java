package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e0 implements k0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static e0 f28087h;

    private e0() {
    }

    public static synchronized e0 h() {
        if (f28087h == null) {
            f28087h = new e0();
        }
        return f28087h;
    }

    @Override // com.facebook.imagepipeline.memory.k0
    public void a(int size) {
    }

    @Override // com.facebook.imagepipeline.memory.k0
    public void b(int bucketedSize) {
    }

    @Override // com.facebook.imagepipeline.memory.k0
    public void c() {
    }

    @Override // com.facebook.imagepipeline.memory.k0
    public void d() {
    }

    @Override // com.facebook.imagepipeline.memory.k0
    public void e(int sizeInBytes) {
    }

    @Override // com.facebook.imagepipeline.memory.k0
    public void f(int sizeInBytes) {
    }

    @Override // com.facebook.imagepipeline.memory.k0
    public void g(BasePool basePool) {
    }
}
