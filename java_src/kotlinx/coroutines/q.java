package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nCancellableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,390:1\n1#2:391\n*E\n"})
public final class q {
    @InternalCoroutinesApi
    public static final void a(@NotNull n<?> nVar, @NotNull c1 c1Var) {
        c(nVar, new d1(c1Var));
    }

    @NotNull
    public static final <T> o<T> b(@NotNull Continuation<? super T> continuation) {
        if (!(continuation instanceof kotlinx.coroutines.internal.m)) {
            return new o<>(continuation, 1);
        }
        o<T> oVarM = ((kotlinx.coroutines.internal.m) continuation).m();
        if (oVarM != null) {
            if (!oVarM.Z()) {
                oVarM = null;
            }
            if (oVarM != null) {
                return oVarM;
            }
        }
        return new o<>(continuation, 2);
    }

    public static final <T> void c(@NotNull n<? super T> nVar, @NotNull m mVar) {
        if (!(nVar instanceof o)) {
            throw new UnsupportedOperationException("third-party implementation of CancellableContinuation is not supported");
        }
        ((o) nVar).Q(mVar);
    }

    @Nullable
    public static final <T> Object d(@NotNull Function1<? super n<? super T>, Unit> function1, @NotNull Continuation<? super T> continuation) {
        o oVar = new o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        function1.invoke(oVar);
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ;
    }

    private static final <T> Object e(Function1<? super n<? super T>, Unit> function1, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        o oVar = new o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        function1.invoke(oVar);
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        InlineMarker.mark(1);
        return objZ;
    }

    @Nullable
    public static final <T> Object f(@NotNull Function1<? super o<? super T>, Unit> function1, @NotNull Continuation<? super T> continuation) {
        o oVarB = b(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            function1.invoke(oVarB);
            Object objZ = oVarB.z();
            if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objZ;
        } catch (Throwable th) {
            oVarB.Y();
            throw th;
        }
    }

    private static final <T> Object g(Function1<? super o<? super T>, Unit> function1, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        o oVarB = b(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            function1.invoke(oVarB);
            Object objZ = oVarB.z();
            if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            InlineMarker.mark(1);
            return objZ;
        } catch (Throwable th) {
            oVarB.Y();
            throw th;
        }
    }
}
