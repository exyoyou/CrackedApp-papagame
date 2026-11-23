package kotlinx.coroutines.internal;

import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.n0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@JvmInline
public final class o0<S extends n0<S>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Object f93519a;

    private /* synthetic */ o0(Object obj) {
        this.f93519a = obj;
    }

    public static final /* synthetic */ o0 a(Object obj) {
        return new o0(obj);
    }

    @NotNull
    public static <S extends n0<S>> Object b(@Nullable Object obj) {
        return obj;
    }

    public static boolean c(Object obj, Object obj2) {
        return (obj2 instanceof o0) && Intrinsics.areEqual(obj, ((o0) obj2).j());
    }

    public static final boolean d(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    public static /* synthetic */ void e() {
    }

    @NotNull
    public static final S f(Object obj) {
        if (obj == f.f93495b) {
            throw new IllegalStateException("Does not contain segment".toString());
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (S) obj;
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return obj == f.f93495b;
    }

    public static String i(Object obj) {
        return "SegmentOrClosed(value=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f93519a, obj);
    }

    public int hashCode() {
        return g(this.f93519a);
    }

    public final /* synthetic */ Object j() {
        return this.f93519a;
    }

    public String toString() {
        return i(this.f93519a);
    }
}
