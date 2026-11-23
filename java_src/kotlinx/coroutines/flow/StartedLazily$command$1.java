package kotlinx.coroutines.flow;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedLazily$command$1", f = "SharingStarted.kt", i = {}, l = {151}, m = "invokeSuspend", n = {}, s = {})
final class StartedLazily$command$1 extends SuspendLambda implements Function2<f<? super SharingCommand>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f93212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ Object f93213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ u<Integer> f93214d;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedLazily$command$1$1, reason: invalid class name */
    static final class AnonymousClass1<T> implements f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f93215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f<SharingCommand> f93216c;

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Ref.BooleanRef booleanRef, f<? super SharingCommand> fVar) {
            this.f93215b = booleanRef;
            this.f93216c = fVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Nullable
        public final Object a(int i10, @NotNull Continuation<? super Unit> continuation) {
            StartedLazily$command$1$1$emit$1 startedLazily$command$1$1$emit$1;
            if (continuation instanceof StartedLazily$command$1$1$emit$1) {
                startedLazily$command$1$1$emit$1 = (StartedLazily$command$1$1$emit$1) continuation;
                int i11 = startedLazily$command$1$1$emit$1.f93219d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    startedLazily$command$1$1$emit$1.f93219d = i11 - Integer.MIN_VALUE;
                } else {
                    startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, continuation);
                }
            } else {
                startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, continuation);
            }
            Object obj = startedLazily$command$1$1$emit$1.f93217b;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i12 = startedLazily$command$1$1$emit$1.f93219d;
            if (i12 == 0) {
                ResultKt.throwOnFailure(obj);
                if (i10 > 0) {
                    Ref.BooleanRef booleanRef = this.f93215b;
                    if (!booleanRef.element) {
                        booleanRef.element = true;
                        f<SharingCommand> fVar = this.f93216c;
                        SharingCommand sharingCommand = SharingCommand.START;
                        startedLazily$command$1$1$emit$1.f93219d = 1;
                        if (fVar.emit(sharingCommand, startedLazily$command$1$1$emit$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                return Unit.INSTANCE;
            }
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.flow.f
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return a(((Number) obj).intValue(), continuation);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartedLazily$command$1(u<Integer> uVar, Continuation<? super StartedLazily$command$1> continuation) {
        super(2, continuation);
        this.f93214d = uVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        StartedLazily$command$1 startedLazily$command$1 = new StartedLazily$command$1(this.f93214d, continuation);
        startedLazily$command$1.f93213c = obj;
        return startedLazily$command$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f93212b;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            f fVar = (f) this.f93213c;
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            u<Integer> uVar = this.f93214d;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(booleanRef, fVar);
            this.f93212b = 1;
            if (uVar.a(anonymousClass1, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull f<? super SharingCommand> fVar, @Nullable Continuation<? super Unit> continuation) {
        return ((StartedLazily$command$1) create(fVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
