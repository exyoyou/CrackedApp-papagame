package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0007\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/flow/f;", "", "cause", "", "attempt", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3", f = "Errors.kt", i = {}, l = {91}, m = "invokeSuspend", n = {}, s = {})
final class FlowKt__ErrorsKt$retry$3<T> extends SuspendLambda implements Function4<f<? super T>, Throwable, Long, Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f92966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    /* synthetic */ Object f92967c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    /* synthetic */ long f92968d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ long f92969e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ Function2<Throwable, Continuation<? super Boolean>, Object> f92970f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__ErrorsKt$retry$3(long j10, Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super FlowKt__ErrorsKt$retry$3> continuation) {
        super(4, continuation);
        this.f92969e = j10;
        this.f92970f = function2;
    }

    @Nullable
    public final Object b(@NotNull f<? super T> fVar, @NotNull Throwable th, long j10, @Nullable Continuation<? super Boolean> continuation) {
        FlowKt__ErrorsKt$retry$3 flowKt__ErrorsKt$retry$3 = new FlowKt__ErrorsKt$retry$3(this.f92969e, this.f92970f, continuation);
        flowKt__ErrorsKt$retry$3.f92967c = th;
        flowKt__ErrorsKt$retry$3.f92968d = j10;
        return flowKt__ErrorsKt$retry$3.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Throwable th, Long l10, Continuation<? super Boolean> continuation) {
        return b((f) obj, th, l10.longValue(), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f92966b;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            Throwable th = (Throwable) this.f92967c;
            if (this.f92968d < this.f92969e) {
                Function2<Throwable, Continuation<? super Boolean>, Object> function2 = this.f92970f;
                this.f92966b = 1;
                obj = function2.invoke(th, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Boxing.boxBoolean(z);
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        boolean z10 = ((Boolean) obj).booleanValue();
        return Boxing.boxBoolean(z10);
    }
}
