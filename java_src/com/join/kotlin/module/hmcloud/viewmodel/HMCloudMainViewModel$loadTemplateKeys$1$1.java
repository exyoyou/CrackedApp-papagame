package com.join.kotlin.module.hmcloud.viewmodel;

import com.join.mgps.dto.hmcloud.HMOpConfig;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.z0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadTemplateKeys$1$1", f = "HMCloudMainViewModel.kt", i = {}, l = {484}, m = "invokeSuspend", n = {}, s = {})
final class HMCloudMainViewModel$loadTemplateKeys$1$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<HMOpConfig, Unit> $callback;
    final /* synthetic */ HMOpConfig $it;
    int label;

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadTemplateKeys$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadTemplateKeys$1$1$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<HMOpConfig, Unit> $callback;
        final /* synthetic */ HMOpConfig $it;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super HMOpConfig, Unit> function1, HMOpConfig hMOpConfig, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.$it = hMOpConfig;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, this.$it, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$callback.invoke(this.$it);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    HMCloudMainViewModel$loadTemplateKeys$1$1(Function1<? super HMOpConfig, Unit> function1, HMOpConfig hMOpConfig, Continuation<? super HMCloudMainViewModel$loadTemplateKeys$1$1> continuation) {
        super(2, continuation);
        this.$callback = function1;
        this.$it = hMOpConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HMCloudMainViewModel$loadTemplateKeys$1$1(this.$callback, this.$it, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            e2 e2VarE = z0.e();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, this.$it, null);
            this.label = 1;
            if (kotlinx.coroutines.h.h(e2VarE, anonymousClass1, this) == coroutine_suspended) {
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

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((HMCloudMainViewModel$loadTemplateKeys$1$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
