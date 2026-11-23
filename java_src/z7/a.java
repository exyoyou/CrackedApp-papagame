package z7;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f97726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f97727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final String f97728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private T f97729d;

    public a(int i10, int i11, @Nullable String str) {
        this.f97726a = i10;
        this.f97727b = i11;
        this.f97728c = str;
    }

    public static /* synthetic */ a e(a aVar, int i10, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = aVar.f97726a;
        }
        if ((i12 & 2) != 0) {
            i11 = aVar.f97727b;
        }
        if ((i12 & 4) != 0) {
            str = aVar.f97728c;
        }
        return aVar.d(i10, i11, str);
    }

    public final int a() {
        return this.f97726a;
    }

    public final int b() {
        return this.f97727b;
    }

    @Nullable
    public final String c() {
        return this.f97728c;
    }

    @NotNull
    public final a<T> d(int i10, int i11, @Nullable String str) {
        return new a<>(i10, i11, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f97726a == aVar.f97726a && this.f97727b == aVar.f97727b && Intrinsics.areEqual(this.f97728c, aVar.f97728c);
    }

    public final int f() {
        return this.f97726a;
    }

    @Nullable
    public final T g() {
        return this.f97729d;
    }

    public final int h() {
        return this.f97727b;
    }

    public int hashCode() {
        int i10 = ((this.f97726a * 31) + this.f97727b) * 31;
        String str = this.f97728c;
        return i10 + (str == null ? 0 : str.hashCode());
    }

    @Nullable
    public final String i() {
        return this.f97728c;
    }

    public final void j(@Nullable T t10) {
        this.f97729d = t10;
    }

    @NotNull
    public String toString() {
        return "ResponseMain(code=" + this.f97726a + ", error=" + this.f97727b + ", message=" + this.f97728c + ')';
    }
}
