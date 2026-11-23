package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CompletedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,681:1\n1#2:682\n*E\n"})
final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @Nullable
    public final Object f92319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    @Nullable
    public final m f92320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    @Nullable
    public final Function1<Throwable, Unit> f92321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @JvmField
    @Nullable
    public final Object f92322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @JvmField
    @Nullable
    public final Throwable f92323e;

    /* JADX WARN: Multi-variable type inference failed */
    public a0(@Nullable Object obj, @Nullable m mVar, @Nullable Function1<? super Throwable, Unit> function1, @Nullable Object obj2, @Nullable Throwable th) {
        this.f92319a = obj;
        this.f92320b = mVar;
        this.f92321c = function1;
        this.f92322d = obj2;
        this.f92323e = th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ a0 g(a0 a0Var, Object obj, m mVar, Function1 function1, Object obj2, Throwable th, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = a0Var.f92319a;
        }
        if ((i10 & 2) != 0) {
            mVar = a0Var.f92320b;
        }
        m mVar2 = mVar;
        if ((i10 & 4) != 0) {
            function1 = a0Var.f92321c;
        }
        Function1 function2 = function1;
        if ((i10 & 8) != 0) {
            obj2 = a0Var.f92322d;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th = a0Var.f92323e;
        }
        return a0Var.f(obj, mVar2, function2, obj4, th);
    }

    @Nullable
    public final Object a() {
        return this.f92319a;
    }

    @Nullable
    public final m b() {
        return this.f92320b;
    }

    @Nullable
    public final Function1<Throwable, Unit> c() {
        return this.f92321c;
    }

    @Nullable
    public final Object d() {
        return this.f92322d;
    }

    @Nullable
    public final Throwable e() {
        return this.f92323e;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return Intrinsics.areEqual(this.f92319a, a0Var.f92319a) && Intrinsics.areEqual(this.f92320b, a0Var.f92320b) && Intrinsics.areEqual(this.f92321c, a0Var.f92321c) && Intrinsics.areEqual(this.f92322d, a0Var.f92322d) && Intrinsics.areEqual(this.f92323e, a0Var.f92323e);
    }

    @NotNull
    public final a0 f(@Nullable Object obj, @Nullable m mVar, @Nullable Function1<? super Throwable, Unit> function1, @Nullable Object obj2, @Nullable Throwable th) {
        return new a0(obj, mVar, function1, obj2, th);
    }

    public final boolean h() {
        return this.f92323e != null;
    }

    public int hashCode() {
        Object obj = this.f92319a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        m mVar = this.f92320b;
        int iHashCode2 = (iHashCode + (mVar == null ? 0 : mVar.hashCode())) * 31;
        Function1<Throwable, Unit> function1 = this.f92321c;
        int iHashCode3 = (iHashCode2 + (function1 == null ? 0 : function1.hashCode())) * 31;
        Object obj2 = this.f92322d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f92323e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final void i(@NotNull o<?> oVar, @NotNull Throwable th) {
        m mVar = this.f92320b;
        if (mVar != null) {
            oVar.m(mVar, th);
        }
        Function1<Throwable, Unit> function1 = this.f92321c;
        if (function1 != null) {
            oVar.q(function1, th);
        }
    }

    @NotNull
    public String toString() {
        return "CompletedContinuation(result=" + this.f92319a + ", cancelHandler=" + this.f92320b + ", onCancellation=" + this.f92321c + ", idempotentResume=" + this.f92322d + ", cancelCause=" + this.f92323e + ')';
    }

    public /* synthetic */ a0(Object obj, m mVar, Function1 function1, Object obj2, Throwable th, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i10 & 2) != 0 ? null : mVar, (i10 & 4) != 0 ? null : function1, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th);
    }
}
