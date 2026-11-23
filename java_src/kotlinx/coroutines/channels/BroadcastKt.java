package kotlinx.coroutines.channels;

import kotlin.BuilderInference;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.h0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,200:1\n44#2,4:201\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n*L\n47#1:201,4\n*E\n"})
public final class BroadcastKt {

    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n*L\n1#1,106:1\n47#2:107\n*E\n"})
    public static final class a extends AbstractCoroutineContextElement implements h0 {
        public a(h0.b bVar) {
            super(bVar);
        }

        @Override // kotlinx.coroutines.h0
        public void t(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        }
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @ObsoleteCoroutinesApi
    @NotNull
    public static final <E> d<E> a(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, int i10, @NotNull CoroutineStart coroutineStart, @Nullable Function1<? super Throwable, Unit> function1, @BuilderInference @NotNull Function2<? super q<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        CoroutineContext coroutineContextE = CoroutineContextKt.e(l0Var, coroutineContext);
        d dVarA = e.a(i10);
        f oVar = coroutineStart.isLazy() ? new o(coroutineContextE, dVarA, function2) : new f(coroutineContextE, dVarA, true);
        if (function1 != null) {
            ((JobSupport) oVar).l(function1);
        }
        ((kotlinx.coroutines.a) oVar).J1(coroutineStart, oVar, function2);
        return (d<E>) oVar;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @ObsoleteCoroutinesApi
    @NotNull
    public static final <E> d<E> b(@NotNull final ReceiveChannel<? extends E> receiveChannel, int i10, @NotNull CoroutineStart coroutineStart) {
        return c(m0.m(m0.m(o1.f93610b, z0.g()), new a(h0.E1)), null, i10, coroutineStart, new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.channels.BroadcastKt$broadcast$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                l.b(receiveChannel, th);
            }
        }, new BroadcastKt$broadcast$2(receiveChannel, null), 1, null);
    }

    public static /* synthetic */ d c(l0 l0Var, CoroutineContext coroutineContext, int i10, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i12 = (i11 & 2) != 0 ? 1 : i10;
        if ((i11 & 4) != 0) {
            coroutineStart = CoroutineStart.LAZY;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i11 & 8) != 0) {
            function1 = null;
        }
        return a(l0Var, coroutineContext2, i12, coroutineStart2, function1, function2);
    }

    public static /* synthetic */ d d(ReceiveChannel receiveChannel, int i10, CoroutineStart coroutineStart, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 1;
        }
        if ((i11 & 2) != 0) {
            coroutineStart = CoroutineStart.LAZY;
        }
        return b(receiveChannel, i10, coroutineStart);
    }
}
