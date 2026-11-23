package com.join.mgps.adapter;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final String f64034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final String f64035b;

    /* JADX WARN: Multi-variable type inference failed */
    public z() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ z d(z zVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = zVar.f64034a;
        }
        if ((i10 & 2) != 0) {
            str2 = zVar.f64035b;
        }
        return zVar.c(str, str2);
    }

    @NotNull
    public final String a() {
        return this.f64034a;
    }

    @Nullable
    public final String b() {
        return this.f64035b;
    }

    @NotNull
    public final z c(@NotNull String title, @Nullable String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new z(title, str);
    }

    @Nullable
    public final String e() {
        return this.f64035b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return Intrinsics.areEqual(this.f64034a, zVar.f64034a) && Intrinsics.areEqual(this.f64035b, zVar.f64035b);
    }

    @NotNull
    public final String f() {
        return this.f64034a;
    }

    public int hashCode() {
        int iHashCode = this.f64034a.hashCode() * 31;
        String str = this.f64035b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        return "DiscoverBean(title=" + this.f64034a + ", intro=" + this.f64035b + ')';
    }

    public z(@NotNull String title, @Nullable String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f64034a = title;
        this.f64035b = str;
    }

    public /* synthetic */ z(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2);
    }
}
