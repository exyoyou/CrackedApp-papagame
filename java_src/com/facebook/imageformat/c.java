package com.facebook.imageformat;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f27545c = new c(t7.a.f97139c, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final String f27546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f27547b;

    public interface a {
        @Nullable
        c a(@Nonnull byte[] headerBytes, int headerSize);

        int b();
    }

    public c(String name, @Nullable String fileExtension) {
        this.f27547b = name;
        this.f27546a = fileExtension;
    }

    @Nullable
    public String a() {
        return this.f27546a;
    }

    public String b() {
        return this.f27547b;
    }

    public String toString() {
        return b();
    }
}
