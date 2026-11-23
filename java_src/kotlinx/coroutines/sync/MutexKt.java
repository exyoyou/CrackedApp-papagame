package kotlinx.coroutines.sync;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.q0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class MutexKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final q0 f93800a = new q0("NO_OWNER");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final q0 f93801b = new q0("ALREADY_LOCKED_BY_OWNER");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f93802c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f93803d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f93804e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f93805f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f93806g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f93807h = 2;

    @NotNull
    public static final a a(boolean z10) {
        return new MutexImpl(z10);
    }

    public static /* synthetic */ a b(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object e(@NotNull a aVar, @Nullable Object obj, @NotNull Function0<? extends T> function0, @NotNull Continuation<? super T> continuation) {
        MutexKt$withLock$1 mutexKt$withLock$1;
        if (continuation instanceof MutexKt$withLock$1) {
            mutexKt$withLock$1 = (MutexKt$withLock$1) continuation;
            int i10 = mutexKt$withLock$1.f93812f;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                mutexKt$withLock$1.f93812f = i10 - Integer.MIN_VALUE;
            } else {
                mutexKt$withLock$1 = new MutexKt$withLock$1(continuation);
            }
        } else {
            mutexKt$withLock$1 = new MutexKt$withLock$1(continuation);
        }
        Object obj2 = mutexKt$withLock$1.f93811e;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = mutexKt$withLock$1.f93812f;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj2);
            mutexKt$withLock$1.f93808b = aVar;
            mutexKt$withLock$1.f93809c = obj;
            mutexKt$withLock$1.f93810d = function0;
            mutexKt$withLock$1.f93812f = 1;
            if (aVar.h(obj, mutexKt$withLock$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            function0 = (Function0) mutexKt$withLock$1.f93810d;
            obj = mutexKt$withLock$1.f93809c;
            aVar = (a) mutexKt$withLock$1.f93808b;
            ResultKt.throwOnFailure(obj2);
        }
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            aVar.i(obj);
            InlineMarker.finallyEnd(1);
        }
    }

    private static final <T> Object f(a aVar, Object obj, Function0<? extends T> function0, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        aVar.h(obj, continuation);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            aVar.i(obj);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ Object g(a aVar, Object obj, Function0 function0, Continuation continuation, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        InlineMarker.mark(0);
        aVar.h(obj, continuation);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            aVar.i(obj);
            InlineMarker.finallyEnd(1);
        }
    }
}
