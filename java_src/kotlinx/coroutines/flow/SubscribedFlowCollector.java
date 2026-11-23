package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.SafeCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,422:1\n326#2:423\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n413#1:423\n*E\n"})
public final class SubscribedFlowCollector<T> implements f<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final f<T> f93238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final Function2<f<? super T>, Continuation<? super Unit>, Object> f93239c;

    /* JADX WARN: Multi-variable type inference failed */
    public SubscribedFlowCollector(@NotNull f<? super T> fVar, @NotNull Function2<? super f<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f93238b = fVar;
        this.f93239c = function2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.internal.SafeCollector] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    @Nullable
    public final Object a(@NotNull Continuation<? super Unit> continuation) {
        SubscribedFlowCollector$onSubscription$1 subscribedFlowCollector$onSubscription$1;
        SafeCollector safeCollector;
        SubscribedFlowCollector<T> subscribedFlowCollector;
        if (continuation instanceof SubscribedFlowCollector$onSubscription$1) {
            subscribedFlowCollector$onSubscription$1 = (SubscribedFlowCollector$onSubscription$1) continuation;
            int i10 = subscribedFlowCollector$onSubscription$1.f93244f;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                subscribedFlowCollector$onSubscription$1.f93244f = i10 - Integer.MIN_VALUE;
            } else {
                subscribedFlowCollector$onSubscription$1 = new SubscribedFlowCollector$onSubscription$1(this, continuation);
            }
        } else {
            subscribedFlowCollector$onSubscription$1 = new SubscribedFlowCollector$onSubscription$1(this, continuation);
        }
        Object obj = subscribedFlowCollector$onSubscription$1.f93242d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r10 = subscribedFlowCollector$onSubscription$1.f93244f;
        try {
            if (r10 != 0) {
                if (r10 == 1) {
                    safeCollector = (SafeCollector) subscribedFlowCollector$onSubscription$1.f93241c;
                    subscribedFlowCollector = (SubscribedFlowCollector) subscribedFlowCollector$onSubscription$1.f93240b;
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (r10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            safeCollector = new SafeCollector(this.f93238b, subscribedFlowCollector$onSubscription$1.getContext());
            Function2<f<? super T>, Continuation<? super Unit>, Object> function2 = this.f93239c;
            subscribedFlowCollector$onSubscription$1.f93240b = this;
            subscribedFlowCollector$onSubscription$1.f93241c = safeCollector;
            subscribedFlowCollector$onSubscription$1.f93244f = 1;
            if (function2.invoke(safeCollector, subscribedFlowCollector$onSubscription$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            subscribedFlowCollector = this;
            safeCollector.releaseIntercepted();
            f<T> fVar = subscribedFlowCollector.f93238b;
            r10 = fVar instanceof SubscribedFlowCollector;
            if (r10 == 0) {
                return Unit.INSTANCE;
            }
            subscribedFlowCollector$onSubscription$1.f93240b = null;
            subscribedFlowCollector$onSubscription$1.f93241c = null;
            subscribedFlowCollector$onSubscription$1.f93244f = 2;
            if (((SubscribedFlowCollector) fVar).a(subscribedFlowCollector$onSubscription$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            r10.releaseIntercepted();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        return this.f93238b.emit(t10, continuation);
    }
}
