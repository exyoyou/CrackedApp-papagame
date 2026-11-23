package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class CallbackFlowBuilder<T> extends c<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Function2<kotlinx.coroutines.channels.q<? super T>, Continuation<? super Unit>, Object> f92811f;

    public /* synthetic */ CallbackFlowBuilder(Function2 function2, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2, (i11 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.c, kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    protected Object i(@NotNull kotlinx.coroutines.channels.q<? super T> qVar, @NotNull Continuation<? super Unit> continuation) {
        CallbackFlowBuilder$collectTo$1 callbackFlowBuilder$collectTo$1;
        if (continuation instanceof CallbackFlowBuilder$collectTo$1) {
            callbackFlowBuilder$collectTo$1 = (CallbackFlowBuilder$collectTo$1) continuation;
            int i10 = callbackFlowBuilder$collectTo$1.f92815e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                callbackFlowBuilder$collectTo$1.f92815e = i10 - Integer.MIN_VALUE;
            } else {
                callbackFlowBuilder$collectTo$1 = new CallbackFlowBuilder$collectTo$1(this, continuation);
            }
        } else {
            callbackFlowBuilder$collectTo$1 = new CallbackFlowBuilder$collectTo$1(this, continuation);
        }
        Object obj = callbackFlowBuilder$collectTo$1.f92813c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = callbackFlowBuilder$collectTo$1.f92815e;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            callbackFlowBuilder$collectTo$1.f92812b = qVar;
            callbackFlowBuilder$collectTo$1.f92815e = 1;
            if (super.i(qVar, callbackFlowBuilder$collectTo$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            qVar = (kotlinx.coroutines.channels.q) callbackFlowBuilder$collectTo$1.f92812b;
            ResultKt.throwOnFailure(obj);
        }
        if (qVar.A()) {
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
    }

    @Override // kotlinx.coroutines.flow.c, kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new CallbackFlowBuilder(this.f92811f, coroutineContext, i10, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CallbackFlowBuilder(@NotNull Function2<? super kotlinx.coroutines.channels.q<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(function2, coroutineContext, i10, bufferOverflow);
        this.f92811f = function2;
    }
}
