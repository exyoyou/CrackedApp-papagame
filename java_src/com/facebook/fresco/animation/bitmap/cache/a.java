package com.facebook.fresco.animation.bitmap.cache;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a implements com.facebook.cache.common.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f27416c = "anim://";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f27417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f27418b;

    public a(int imageId) {
        this(imageId, false);
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f27417a;
    }

    @Override // com.facebook.cache.common.c
    public boolean b() {
        return false;
    }

    @Override // com.facebook.cache.common.c
    public boolean c(Uri uri) {
        return uri.toString().startsWith(this.f27417a);
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(@Nullable Object o10) {
        if (!this.f27418b) {
            return super.equals(o10);
        }
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return this.f27417a.equals(((a) o10).f27417a);
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return !this.f27418b ? super.hashCode() : this.f27417a.hashCode();
    }

    public a(int imageId, boolean deepEquals) {
        this.f27417a = f27416c + imageId;
        this.f27418b = deepEquals;
    }
}
