package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.y;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n1#2:423\n*E\n"})
final /* synthetic */ class FlowKt__ShareKt {
    @NotNull
    public static final <T> n<T> a(@NotNull i<T> iVar) {
        return new k(iVar, null);
    }

    @NotNull
    public static final <T> u<T> b(@NotNull j<T> jVar) {
        return new l(jVar, null);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    private static final <T> q<T> c(e<? extends T> eVar, int i10) {
        ChannelFlow channelFlow;
        e<T> eVarK;
        int iCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i10, kotlinx.coroutines.channels.g.G1.a()) - i10;
        if (!(eVar instanceof ChannelFlow) || (eVarK = (channelFlow = (ChannelFlow) eVar).k()) == null) {
            return new q<>(eVar, iCoerceAtLeast, BufferOverflow.SUSPEND, EmptyCoroutineContext.INSTANCE);
        }
        int i11 = channelFlow.f93257c;
        if (i11 != -3 && i11 != -2 && i11 != 0) {
            iCoerceAtLeast = i11;
        } else if (channelFlow.f93258d == BufferOverflow.SUSPEND) {
            if (i11 == 0) {
                iCoerceAtLeast = 0;
            }
        } else if (i10 == 0) {
            iCoerceAtLeast = 1;
        } else {
            iCoerceAtLeast = 0;
        }
        return new q<>(eVarK, iCoerceAtLeast, channelFlow.f93258d, channelFlow.f93256b);
    }

    private static final <T> v1 d(l0 l0Var, CoroutineContext coroutineContext, e<? extends T> eVar, i<T> iVar, r rVar, T t10) {
        return kotlinx.coroutines.h.d(l0Var, coroutineContext, Intrinsics.areEqual(rVar, r.f93414a.c()) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowKt__ShareKt$launchSharing$1(rVar, eVar, iVar, t10, null));
    }

    private static final <T> void e(l0 l0Var, CoroutineContext coroutineContext, e<? extends T> eVar, kotlinx.coroutines.w<u<T>> wVar) {
        kotlinx.coroutines.j.f(l0Var, coroutineContext, null, new FlowKt__ShareKt$launchSharingDeferred$1(eVar, wVar, null), 2, null);
    }

    @NotNull
    public static final <T> n<T> f(@NotNull n<? extends T> nVar, @NotNull Function2<? super f<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new SubscribedSharedFlow(nVar, function2);
    }

    @NotNull
    public static final <T> n<T> g(@NotNull e<? extends T> eVar, @NotNull l0 l0Var, @NotNull r rVar, int i10) {
        q qVarC = c(eVar, i10);
        i iVarA = o.a(i10, qVarC.f93411b, qVarC.f93412c);
        return new k(iVarA, d(l0Var, qVarC.f93413d, qVarC.f93410a, iVarA, rVar, o.f93407a));
    }

    public static /* synthetic */ n h(e eVar, l0 l0Var, r rVar, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return g.F1(eVar, l0Var, rVar, i10);
    }

    @Nullable
    public static final <T> Object i(@NotNull e<? extends T> eVar, @NotNull l0 l0Var, @NotNull Continuation<? super u<? extends T>> continuation) {
        q qVarC = c(eVar, 1);
        kotlinx.coroutines.w wVarC = y.c(null, 1, null);
        e(l0Var, qVarC.f93413d, qVarC.f93410a, wVarC);
        return wVarC.g(continuation);
    }

    @NotNull
    public static final <T> u<T> j(@NotNull e<? extends T> eVar, @NotNull l0 l0Var, @NotNull r rVar, T t10) {
        q qVarC = c(eVar, 1);
        j jVarA = v.a(t10);
        return new l(jVarA, d(l0Var, qVarC.f93413d, qVarC.f93410a, jVarA, rVar, t10));
    }
}
