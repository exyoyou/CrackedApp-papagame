package kotlinx.coroutines.flow.internal;

import kotlin.BuilderInference;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nFlowCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,59:1\n105#2:60\n*S KotlinDebug\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n46#1:60\n*E\n"})
public final class FlowCoroutineKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n1#1,111:1\n47#2,2:112\n*E\n"})
    public static final class a<R> implements kotlinx.coroutines.flow.e<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function3 f93370b;

        public a(Function3 function3) {
            this.f93370b = function3;
        }

        @Override // kotlinx.coroutines.flow.e
        @Nullable
        public Object a(@NotNull kotlinx.coroutines.flow.f<? super R> fVar, @NotNull Continuation<? super Unit> continuation) {
            Object objA = FlowCoroutineKt.a(new FlowCoroutineKt$scopedFlow$1$1(this.f93370b, fVar, null), continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
    }

    @Nullable
    public static final <R> Object a(@BuilderInference @NotNull Function2<? super l0, ? super Continuation<? super R>, ? extends Object> function2, @NotNull Continuation<? super R> continuation) {
        g gVar = new g(continuation.get$context(), continuation);
        Object objD = bc.b.d(gVar, gVar, function2);
        if (objD == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objD;
    }

    @NotNull
    public static final <R> kotlinx.coroutines.flow.e<R> b(@BuilderInference @NotNull Function3<? super l0, ? super kotlinx.coroutines.flow.f<? super R>, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new a(function3);
    }
}
