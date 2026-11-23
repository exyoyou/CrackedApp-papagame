package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @Nullable
    public final Object f92359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Function1<Throwable, Unit> f92360b;

    /* JADX WARN: Multi-variable type inference failed */
    public c0(@Nullable Object obj, @NotNull Function1<? super Throwable, Unit> function1) {
        this.f92359a = obj;
        this.f92360b = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ c0 d(c0 c0Var, Object obj, Function1 function1, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = c0Var.f92359a;
        }
        if ((i10 & 2) != 0) {
            function1 = c0Var.f92360b;
        }
        return c0Var.c(obj, function1);
    }

    @Nullable
    public final Object a() {
        return this.f92359a;
    }

    @NotNull
    public final Function1<Throwable, Unit> b() {
        return this.f92360b;
    }

    @NotNull
    public final c0 c(@Nullable Object obj, @NotNull Function1<? super Throwable, Unit> function1) {
        return new c0(obj, function1);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return Intrinsics.areEqual(this.f92359a, c0Var.f92359a) && Intrinsics.areEqual(this.f92360b, c0Var.f92360b);
    }

    public int hashCode() {
        Object obj = this.f92359a;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.f92360b.hashCode();
    }

    @NotNull
    public String toString() {
        return "CompletedWithCancellation(result=" + this.f92359a + ", onCancellation=" + this.f92360b + ')';
    }
}
