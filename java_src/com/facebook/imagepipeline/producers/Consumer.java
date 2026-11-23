package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public interface Consumer<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f28238a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f28239b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f28240c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f28241d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f28242e = 8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f28243f = 16;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Status {
    }

    void a();

    void b(@Nullable T newResult, int status);

    void c(float progress);

    void onFailure(Throwable t10);
}
