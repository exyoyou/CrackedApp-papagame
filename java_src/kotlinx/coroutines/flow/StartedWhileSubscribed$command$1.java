package kotlinx.coroutines.flow;

import com.join.mgps.activity.QuarkInstallAppActivity_;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/SharingCommand;", "", QuarkInstallAppActivity_.COUNT_EXTRA, "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", i = {1, 2, 3}, l = {174, 176, 178, 179, 181}, m = "invokeSuspend", n = {"$this$transformLatest", "$this$transformLatest", "$this$transformLatest"}, s = {"L$0", "L$0", "L$0"})
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3<f<? super SharingCommand>, Integer, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f93222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ Object f93223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    /* synthetic */ int f93224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ StartedWhileSubscribed f93225e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartedWhileSubscribed$command$1(StartedWhileSubscribed startedWhileSubscribed, Continuation<? super StartedWhileSubscribed$command$1> continuation) {
        super(3, continuation);
        this.f93225e = startedWhileSubscribed;
    }

    @Nullable
    public final Object b(@NotNull f<? super SharingCommand> fVar, int i10, @Nullable Continuation<? super Unit> continuation) {
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.f93225e, continuation);
        startedWhileSubscribed$command$1.f93223c = fVar;
        startedWhileSubscribed$command$1.f93224d = i10;
        return startedWhileSubscribed$command$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(f<? super SharingCommand> fVar, Integer num, Continuation<? super Unit> continuation) {
        return b(fVar, num.intValue(), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0070  */
    /* JADX WARN: Code duplicated, block: B:28:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x008d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x009b A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        f fVar;
        SharingCommand sharingCommand;
        long j10;
        SharingCommand sharingCommand2;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f93222b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    fVar = (f) this.f93223c;
                    ResultKt.throwOnFailure(obj);
                    if (this.f93225e.f93221c > 0) {
                        sharingCommand = SharingCommand.STOP;
                        this.f93223c = fVar;
                        this.f93222b = 3;
                        if (fVar.emit(sharingCommand, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        j10 = this.f93225e.f93221c;
                        this.f93223c = fVar;
                        this.f93222b = 4;
                        if (DelayKt.b(j10, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else if (i10 == 3) {
                    fVar = (f) this.f93223c;
                    ResultKt.throwOnFailure(obj);
                    j10 = this.f93225e.f93221c;
                    this.f93223c = fVar;
                    this.f93222b = 4;
                    if (DelayKt.b(j10, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i10 == 4) {
                    fVar = (f) this.f93223c;
                    ResultKt.throwOnFailure(obj);
                } else if (i10 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                sharingCommand2 = SharingCommand.STOP_AND_RESET_REPLAY_CACHE;
                this.f93223c = null;
                this.f93222b = 5;
                if (fVar.emit(sharingCommand2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            fVar = (f) this.f93223c;
            if (this.f93224d > 0) {
                SharingCommand sharingCommand3 = SharingCommand.START;
                this.f93222b = 1;
                if (fVar.emit(sharingCommand3, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                long j11 = this.f93225e.f93220b;
                this.f93223c = fVar;
                this.f93222b = 2;
                if (DelayKt.b(j11, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (this.f93225e.f93221c > 0) {
                    sharingCommand = SharingCommand.STOP;
                    this.f93223c = fVar;
                    this.f93222b = 3;
                    if (fVar.emit(sharingCommand, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    j10 = this.f93225e.f93221c;
                    this.f93223c = fVar;
                    this.f93222b = 4;
                    if (DelayKt.b(j10, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                sharingCommand2 = SharingCommand.STOP_AND_RESET_REPLAY_CACHE;
                this.f93223c = null;
                this.f93222b = 5;
                if (fVar.emit(sharingCommand2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        }
        return Unit.INSTANCE;
    }
}
