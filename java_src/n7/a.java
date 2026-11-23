package n7;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f94483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final String f94484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final T f94485c;

    public a(int i10, @Nullable String str, @Nullable T t10) {
        this.f94483a = i10;
        this.f94484b = str;
        this.f94485c = t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ a e(a aVar, int i10, String str, Object obj, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = aVar.f94483a;
        }
        if ((i11 & 2) != 0) {
            str = aVar.f94484b;
        }
        if ((i11 & 4) != 0) {
            obj = aVar.f94485c;
        }
        return aVar.d(i10, str, obj);
    }

    public final int a() {
        return this.f94483a;
    }

    @Nullable
    public final String b() {
        return this.f94484b;
    }

    @Nullable
    public final T c() {
        return this.f94485c;
    }

    @NotNull
    public final a<T> d(int i10, @Nullable String str, @Nullable T t10) {
        return new a<>(i10, str, t10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f94483a == aVar.f94483a && Intrinsics.areEqual(this.f94484b, aVar.f94484b) && Intrinsics.areEqual(this.f94485c, aVar.f94485c);
    }

    @Nullable
    public final T f() {
        return this.f94485c;
    }

    @Nullable
    public final String g() {
        return this.f94484b;
    }

    public final int h() {
        return this.f94483a;
    }

    public int hashCode() {
        int i10 = this.f94483a * 31;
        String str = this.f94484b;
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        T t10 = this.f94485c;
        return iHashCode + (t10 != null ? t10.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BaseResp(status=" + this.f94483a + ", message=" + this.f94484b + ", data=" + this.f94485c + ')';
    }
}
