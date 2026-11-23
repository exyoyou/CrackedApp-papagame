package kotlinx.coroutines.flow;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class h {
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.4.0, binary compatibility with earlier versions")
    public static final /* synthetic */ e a(e eVar, int i10) {
        return d(eVar, i10, null, 2, null);
    }

    @NotNull
    public static final <T> e<T> b(@NotNull e<? extends T> eVar, int i10, @NotNull BufferOverflow bufferOverflow) {
        int i11;
        BufferOverflow bufferOverflow2;
        boolean z10 = true;
        if (!(i10 >= 0 || i10 == -2 || i10 == -1)) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i10).toString());
        }
        if (i10 == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
            z10 = false;
        }
        if (!z10) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        if (i10 == -1) {
            bufferOverflow2 = BufferOverflow.DROP_OLDEST;
            i11 = 0;
        } else {
            i11 = i10;
            bufferOverflow2 = bufferOverflow;
        }
        return eVar instanceof kotlinx.coroutines.flow.internal.i ? kotlinx.coroutines.flow.internal.i.a.a((kotlinx.coroutines.flow.internal.i) eVar, null, i11, bufferOverflow2, 1, null) : new kotlinx.coroutines.flow.internal.e(eVar, null, i11, bufferOverflow2, 2, null);
    }

    public static /* synthetic */ e c(e eVar, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -2;
        }
        return a(eVar, i10);
    }

    public static /* synthetic */ e d(e eVar, int i10, BufferOverflow bufferOverflow, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -2;
        }
        if ((i11 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return g.o(eVar, i10, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> e<T> e(@NotNull e<? extends T> eVar) {
        return eVar instanceof a ? eVar : new CancellableFlowImpl(eVar);
    }

    private static final void f(CoroutineContext coroutineContext) {
        if (coroutineContext.get(v1.F1) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + coroutineContext).toString());
    }

    @NotNull
    public static final <T> e<T> g(@NotNull e<? extends T> eVar) {
        return d(eVar, -1, null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> e<T> h(@NotNull e<? extends T> eVar, @NotNull CoroutineContext coroutineContext) {
        f(coroutineContext);
        if (Intrinsics.areEqual(coroutineContext, EmptyCoroutineContext.INSTANCE)) {
            return eVar;
        }
        return eVar instanceof kotlinx.coroutines.flow.internal.i ? kotlinx.coroutines.flow.internal.i.a.a((kotlinx.coroutines.flow.internal.i) eVar, coroutineContext, 0, null, 6, null) : new kotlinx.coroutines.flow.internal.e(eVar, coroutineContext, 0, null, 12, null);
    }
}
