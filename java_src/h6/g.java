package h6;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f91404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f91405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private String f91406c;

    public g(int i10, int i11, @NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f91404a = i10;
        this.f91405b = i11;
        this.f91406c = title;
    }

    public static /* synthetic */ g e(g gVar, int i10, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = gVar.f91404a;
        }
        if ((i12 & 2) != 0) {
            i11 = gVar.f91405b;
        }
        if ((i12 & 4) != 0) {
            str = gVar.f91406c;
        }
        return gVar.d(i10, i11, str);
    }

    public final int a() {
        return this.f91404a;
    }

    public final int b() {
        return this.f91405b;
    }

    @NotNull
    public final String c() {
        return this.f91406c;
    }

    @NotNull
    public final g d(int i10, int i11, @NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new g(i10, i11, title);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f91404a == gVar.f91404a && this.f91405b == gVar.f91405b && Intrinsics.areEqual(this.f91406c, gVar.f91406c);
    }

    public final int f() {
        return this.f91404a;
    }

    public final int g() {
        return this.f91405b;
    }

    @NotNull
    public final String h() {
        return this.f91406c;
    }

    public int hashCode() {
        return (((this.f91404a * 31) + this.f91405b) * 31) + this.f91406c.hashCode();
    }

    public final void i(int i10) {
        this.f91404a = i10;
    }

    public final void j(int i10) {
        this.f91405b = i10;
    }

    public final void k(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f91406c = str;
    }

    @NotNull
    public String toString() {
        return "HMMenuItem(icon=" + this.f91404a + ", iconSelected=" + this.f91405b + ", title=" + this.f91406c + ')';
    }
}
