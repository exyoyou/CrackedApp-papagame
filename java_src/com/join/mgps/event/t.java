package com.join.mgps.event;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final a f68216c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f68217d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f68218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f68219b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public t(int i10, boolean z10) {
        this.f68218a = i10;
        this.f68219b = z10;
    }

    public static /* synthetic */ t d(t tVar, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = tVar.f68218a;
        }
        if ((i11 & 2) != 0) {
            z10 = tVar.f68219b;
        }
        return tVar.c(i10, z10);
    }

    public final int a() {
        return this.f68218a;
    }

    public final boolean b() {
        return this.f68219b;
    }

    @NotNull
    public final t c(int i10, boolean z10) {
        return new t(i10, z10);
    }

    public final int e() {
        return this.f68218a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f68218a == tVar.f68218a && this.f68219b == tVar.f68219b;
    }

    public final boolean f() {
        return this.f68219b;
    }

    public int hashCode() {
        return (this.f68218a * 31) + r2.a.a(this.f68219b);
    }

    @NotNull
    public String toString() {
        return "EMessageStateEvent(event=" + this.f68218a + ", state=" + this.f68219b + ')';
    }

    public /* synthetic */ t(int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? false : z10);
    }
}
