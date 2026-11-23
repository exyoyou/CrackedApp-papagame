package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class SubscribedSharedFlow<T> implements n<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final n<T> f93245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final Function2<f<? super T>, Continuation<? super Unit>, Object> f93246c;

    /* JADX WARN: Multi-variable type inference failed */
    public SubscribedSharedFlow(@NotNull n<? extends T> nVar, @NotNull Function2<? super f<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f93245b = nVar;
        this.f93246c = function2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.n, kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<?> continuation) {
        SubscribedSharedFlow$collect$1 subscribedSharedFlow$collect$1;
        if (continuation instanceof SubscribedSharedFlow$collect$1) {
            subscribedSharedFlow$collect$1 = (SubscribedSharedFlow$collect$1) continuation;
            int i10 = subscribedSharedFlow$collect$1.f93249d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                subscribedSharedFlow$collect$1.f93249d = i10 - Integer.MIN_VALUE;
            } else {
                subscribedSharedFlow$collect$1 = new SubscribedSharedFlow$collect$1(this, continuation);
            }
        } else {
            subscribedSharedFlow$collect$1 = new SubscribedSharedFlow$collect$1(this, continuation);
        }
        Object obj = subscribedSharedFlow$collect$1.f93247b;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = subscribedSharedFlow$collect$1.f93249d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            n<T> nVar = this.f93245b;
            SubscribedFlowCollector subscribedFlowCollector = new SubscribedFlowCollector(fVar, this.f93246c);
            subscribedSharedFlow$collect$1.f93249d = 1;
            if (nVar.a(subscribedFlowCollector, subscribedSharedFlow$collect$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.flow.n
    @NotNull
    public List<T> b() {
        return this.f93245b.b();
    }
}
