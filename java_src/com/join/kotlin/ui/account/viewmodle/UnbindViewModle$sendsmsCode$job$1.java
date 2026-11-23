package com.join.kotlin.ui.account.viewmodle;

import android.content.Context;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MMSRequesBean;
import com.join.mgps.rpc.impl.a;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.j;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.z0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1", f = "UnbindViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class UnbindViewModle$sendsmsCode$job$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ MMSRequesBean $requestbean;
    int label;
    final /* synthetic */ UnbindViewModle this$0;

    /* JADX INFO: renamed from: com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1$1", f = "UnbindViewModle.kt", i = {0, 0}, l = {125}, m = "invokeSuspend", n = {"$this$launch", "index"}, s = {"L$0", "I$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ AccountResultMainBean<AccountTokenSuccess> $result;
        int I$0;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ UnbindViewModle this$0;

        /* JADX INFO: renamed from: com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1$1$1", f = "UnbindViewModle.kt", i = {}, l = {125}, m = "invokeSuspend", n = {}, s = {})
        static final class C06521 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
            int label;

            C06521(Continuation<? super C06521> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06521(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (DelayKt.b(1000L, this) == coroutine_suspended) {
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
                return ((C06521) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AccountResultMainBean<AccountTokenSuccess> accountResultMainBean, Context context, UnbindViewModle unbindViewModle, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = accountResultMainBean;
            this.$context = context;
            this.this$0 = unbindViewModle;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$result, this.$context, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0050  */
        /* JADX WARN: Code duplicated, block: B:21:0x0086  */
        /* JADX WARN: Code duplicated, block: B:23:0x00a3 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00a1 -> B:24:0x00a4). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                Method dump skipped, instruction units count: 255
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UnbindViewModle$sendsmsCode$job$1(MMSRequesBean mMSRequesBean, UnbindViewModle unbindViewModle, Context context, Continuation<? super UnbindViewModle$sendsmsCode$job$1> continuation) {
        super(2, continuation);
        this.$requestbean = mMSRequesBean;
        this.this$0 = unbindViewModle;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UnbindViewModle$sendsmsCode$job$1(this.$requestbean, this.this$0, this.$context, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AccountResultMainBean<AccountTokenSuccess> accountResultMainBean;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        try {
            accountResultMainBean = a.c0().e(this.$requestbean.getParams());
        } catch (Exception unused) {
            accountResultMainBean = new AccountResultMainBean<>(1, null);
        }
        v1 coluting = this.this$0.getColuting();
        if (coluting != null) {
            v1.a.b(coluting, null, 1, null);
        }
        this.this$0.setColuting(j.f(o1.f93610b, z0.e(), null, new AnonymousClass1(accountResultMainBean, this.$context, this.this$0, null), 2, null));
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((UnbindViewModle$sendsmsCode$job$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
