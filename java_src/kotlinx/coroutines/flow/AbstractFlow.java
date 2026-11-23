package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.flow.internal.SafeCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalCoroutinesApi
public abstract class AbstractFlow<T> implements e<T>, a<T> {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.e
    @Nullable
    public final Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) throws Throwable {
        AbstractFlow$collect$1 abstractFlow$collect$1;
        Throwable th;
        SafeCollector safeCollector;
        if (continuation instanceof AbstractFlow$collect$1) {
            abstractFlow$collect$1 = (AbstractFlow$collect$1) continuation;
            int i10 = abstractFlow$collect$1.f92810e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                abstractFlow$collect$1.f92810e = i10 - Integer.MIN_VALUE;
            } else {
                abstractFlow$collect$1 = new AbstractFlow$collect$1(this, continuation);
            }
        } else {
            abstractFlow$collect$1 = new AbstractFlow$collect$1(this, continuation);
        }
        Object obj = abstractFlow$collect$1.f92808c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = abstractFlow$collect$1.f92810e;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            safeCollector = (SafeCollector) abstractFlow$collect$1.f92807b;
            try {
                ResultKt.throwOnFailure(obj);
                safeCollector.releaseIntercepted();
                return Unit.INSTANCE;
            } catch (Throwable th2) {
                th = th2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        }
        ResultKt.throwOnFailure(obj);
        SafeCollector safeCollector2 = new SafeCollector(fVar, abstractFlow$collect$1.getContext());
        try {
            abstractFlow$collect$1.f92807b = safeCollector2;
            abstractFlow$collect$1.f92810e = 1;
            if (g(safeCollector2, abstractFlow$collect$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            return Unit.INSTANCE;
        } catch (Throwable th3) {
            th = th3;
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            throw th;
        }
    }

    @Nullable
    public abstract Object g(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation);
}
