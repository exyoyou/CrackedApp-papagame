package com.join.kotlin.ui.account.viewmodle;

import android.content.Context;
import com.join.kotlin.ui.account.modle.UnThirdPartRequest;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.ResponseModel;
import com.psk.kotlin.ext.CommonExtKt;
import com.wufan.user.service.protobuf.UserInfo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.h;
import kotlinx.coroutines.j;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;
import w6.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendUnbindThridPart$job$1", f = "UnbindViewModle.kt", i = {0}, l = {143}, m = "invokeSuspend", n = {"result"}, s = {"L$0"})
@SourceDebugExtension({"SMAP\nUnbindViewModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnbindViewModle.kt\ncom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1\n+ 2 ApiCall.kt\ncom/join/kotlin/http/protocol/ApiCallKt\n*L\n1#1,142:1\n12#2:143\n*S KotlinDebug\n*F\n+ 1 UnbindViewModle.kt\ncom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1\n*L\n65#1:143\n*E\n"})
final class UnbindViewModle$sendUnbindThridPart$job$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ Ref.ObjectRef<UnThirdPartRequest> $request;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ UnbindViewModle this$0;

    /* JADX INFO: renamed from: com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendUnbindThridPart$job$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendUnbindThridPart$job$1$1", f = "UnbindViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ Ref.ObjectRef<ResponseModel<Boolean>> $result;
        int label;
        final /* synthetic */ UnbindViewModle this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<ResponseModel<Boolean>> objectRef, Context context, UnbindViewModle unbindViewModle, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = objectRef;
            this.$context = context;
            this.this$0 = unbindViewModle;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.$context, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$result.element.getError() != 0) {
                Context context = this.$context;
                String msg = this.$result.element.getMsg();
                if (msg == null) {
                    msg = this.$result.element.getMessage();
                }
                CommonExtKt.toast(context, msg);
            } else if (this.$result.element.getData().booleanValue()) {
                UserInfo accountData = AccountUtil_.getInstance_(this.$context).getAccountData();
                Intrinsics.checkNotNullExpressionValue(accountData, "getAccountData(...)");
                UserInfo.b builder = accountData.toBuilder();
                Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
                String platform = this.this$0.getPlatform();
                int iHashCode = platform.hashCode();
                if (iHashCode != -1429950110) {
                    if (iHashCode != -189985820) {
                        if (iHashCode == 1477838041 && platform.equals("WB_OPENID")) {
                            builder.setIsBindWb(0);
                        }
                    } else if (platform.equals("QQ_OPENID")) {
                        builder.setIsBindQq(0);
                    }
                } else if (platform.equals("WEIXIN_OPENID")) {
                    builder.setIsBindWx(0);
                }
                builder.build();
                a.b().c();
                CommonExtKt.toast(this.$context, "解绑成功");
                this.this$0.getCallStatus().setValue(Boxing.boxInt(1));
            } else {
                Context context2 = this.$context;
                String msg2 = this.$result.element.getMsg();
                if (msg2 == null) {
                    msg2 = this.$result.element.getMessage();
                }
                CommonExtKt.toast(context2, msg2);
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UnbindViewModle$sendUnbindThridPart$job$1(Ref.ObjectRef<UnThirdPartRequest> objectRef, Context context, UnbindViewModle unbindViewModle, Continuation<? super UnbindViewModle$sendUnbindThridPart$job$1> continuation) {
        super(2, continuation);
        this.$request = objectRef;
        this.$context = context;
        this.this$0 = unbindViewModle;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UnbindViewModle$sendUnbindThridPart$job$1(this.$request, this.$context, this.this$0, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref.ObjectRef objectRef;
        T t10;
        Ref.ObjectRef objectRef2;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            Ref.ObjectRef<UnThirdPartRequest> objectRef4 = this.$request;
            CoroutineDispatcher coroutineDispatcherC = z0.c();
            UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1 unbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1 = new UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1(null, objectRef4);
            this.L$0 = objectRef3;
            this.L$1 = objectRef3;
            this.label = 1;
            Object objH = h.h(coroutineDispatcherC, unbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1, this);
            if (objH == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef3;
            t10 = objH;
            objectRef2 = objectRef;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) this.L$1;
            objectRef2 = (Ref.ObjectRef) this.L$0;
            ResultKt.throwOnFailure(obj);
            t10 = obj;
        }
        objectRef.element = t10;
        j.f(o1.f93610b, z0.e(), null, new AnonymousClass1(objectRef2, this.$context, this.this$0, null), 2, null);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((UnbindViewModle$sendUnbindThridPart$job$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
