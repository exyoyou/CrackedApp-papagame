package kotlinx.coroutines.sync;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.q0;
import kotlinx.coroutines.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SemaphoreKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f93823a = v0.e("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final q0 f93824b = new q0("PERMIT");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final q0 f93825c = new q0("TAKEN");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private static final q0 f93826d = new q0("BROKEN");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private static final q0 f93827e = new q0("CANCELLED");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f93828f = v0.e("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);

    @NotNull
    public static final b a(int i10, int i11) {
        return new SemaphoreImpl(i10, i11);
    }

    public static /* synthetic */ b b(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return a(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c j(long j10, c cVar) {
        return new c(j10, cVar, 0);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object k(@NotNull b bVar, @NotNull Function0<? extends T> function0, @NotNull Continuation<? super T> continuation) {
        SemaphoreKt$withPermit$1 semaphoreKt$withPermit$1;
        if (continuation instanceof SemaphoreKt$withPermit$1) {
            semaphoreKt$withPermit$1 = (SemaphoreKt$withPermit$1) continuation;
            int i10 = semaphoreKt$withPermit$1.f93832e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                semaphoreKt$withPermit$1.f93832e = i10 - Integer.MIN_VALUE;
            } else {
                semaphoreKt$withPermit$1 = new SemaphoreKt$withPermit$1(continuation);
            }
        } else {
            semaphoreKt$withPermit$1 = new SemaphoreKt$withPermit$1(continuation);
        }
        Object obj = semaphoreKt$withPermit$1.f93831d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = semaphoreKt$withPermit$1.f93832e;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            semaphoreKt$withPermit$1.f93829b = bVar;
            semaphoreKt$withPermit$1.f93830c = function0;
            semaphoreKt$withPermit$1.f93832e = 1;
            if (bVar.g(semaphoreKt$withPermit$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            function0 = (Function0) semaphoreKt$withPermit$1.f93830c;
            bVar = (b) semaphoreKt$withPermit$1.f93829b;
            ResultKt.throwOnFailure(obj);
        }
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            bVar.release();
            InlineMarker.finallyEnd(1);
        }
    }

    private static final <T> Object l(b bVar, Function0<? extends T> function0, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        bVar.g(continuation);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            bVar.release();
            InlineMarker.finallyEnd(1);
        }
    }
}
