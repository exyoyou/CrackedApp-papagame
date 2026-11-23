package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n+ 2 Concurrent.common.kt\nkotlinx/coroutines/internal/Concurrent_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,428:1\n37#2,2:429\n1#3:431\n318#4,11:432\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n*L\n276#1:429,2\n299#1:432,11\n*E\n"})
final class w extends kotlinx.coroutines.flow.internal.c<StateFlowImpl<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final AtomicReference<Object> f93420a = new AtomicReference<>(null);

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NotNull StateFlowImpl<?> stateFlowImpl) {
        if (kotlinx.coroutines.internal.h.a(this.f93420a) != null) {
            return false;
        }
        kotlinx.coroutines.internal.h.d(this.f93420a, v.f93418a);
        return true;
    }

    @Nullable
    public final Object e(@NotNull Continuation<? super Unit> continuation) {
        kotlinx.coroutines.o oVar = new kotlinx.coroutines.o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        if (!androidx.lifecycle.i.a(this.f93420a, v.f93418a, oVar)) {
            Result.Companion companion = Result.INSTANCE;
            oVar.resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
        }
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Continuation<Unit>[] b(@NotNull StateFlowImpl<?> stateFlowImpl) {
        kotlinx.coroutines.internal.h.d(this.f93420a, null);
        return kotlinx.coroutines.flow.internal.b.f93390a;
    }

    public final void g() {
        AtomicReference<Object> atomicReference = this.f93420a;
        while (true) {
            Object objA = kotlinx.coroutines.internal.h.a(atomicReference);
            if (objA == null || objA == v.f93419b) {
                return;
            }
            if (objA == v.f93418a) {
                if (androidx.lifecycle.i.a(this.f93420a, objA, v.f93419b)) {
                    return;
                }
            } else if (androidx.lifecycle.i.a(this.f93420a, objA, v.f93418a)) {
                Result.Companion companion = Result.INSTANCE;
                ((kotlinx.coroutines.o) objA).resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
                return;
            }
        }
    }

    public final boolean h() {
        Object andSet = this.f93420a.getAndSet(v.f93418a);
        Intrinsics.checkNotNull(andSet);
        return andSet == v.f93419b;
    }
}
