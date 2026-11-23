package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/flow/f;", "", "e", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$onErrorReturn$2", f = "Migration.kt", i = {}, l = {302}, m = "invokeSuspend", n = {}, s = {})
final class FlowKt__MigrationKt$onErrorReturn$2<T> extends SuspendLambda implements Function3<f<? super T>, Throwable, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f93040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ Object f93041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    /* synthetic */ Object f93042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ Function1<Throwable, Boolean> f93043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ T f93044f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__MigrationKt$onErrorReturn$2(Function1<? super Throwable, Boolean> function1, T t10, Continuation<? super FlowKt__MigrationKt$onErrorReturn$2> continuation) {
        super(3, continuation);
        this.f93043e = function1;
        this.f93044f = t10;
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull f<? super T> fVar, @NotNull Throwable th, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__MigrationKt$onErrorReturn$2 flowKt__MigrationKt$onErrorReturn$2 = new FlowKt__MigrationKt$onErrorReturn$2(this.f93043e, this.f93044f, continuation);
        flowKt__MigrationKt$onErrorReturn$2.f93041c = fVar;
        flowKt__MigrationKt$onErrorReturn$2.f93042d = th;
        return flowKt__MigrationKt$onErrorReturn$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f93040b;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            f fVar = (f) this.f93041c;
            Throwable th = (Throwable) this.f93042d;
            if (!this.f93043e.invoke(th).booleanValue()) {
                throw th;
            }
            T t10 = this.f93044f;
            this.f93041c = null;
            this.f93040b = 1;
            if (fVar.emit(t10, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
