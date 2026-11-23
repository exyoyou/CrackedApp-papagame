package com.join.kotlin.ui.account.viewmodle;

import com.join.kotlin.http.RpcKotlinServiceFactory;
import com.join.kotlin.http.api.RpcJavaApiForKotlin;
import com.join.kotlin.http.protocol.ApiException;
import com.join.kotlin.ui.account.modle.UnThirdPartRequest;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\n¨\u0006\u0004"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "T", "Lkotlinx/coroutines/CoroutineScope;", "com/join/kotlin/http/protocol/ApiCallKt$apiCall$2"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1", f = "UnbindViewModle.kt", i = {}, l = {23}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nApiCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiCall.kt\ncom/join/kotlin/http/protocol/ApiCallKt$apiCall$2\n+ 2 UnbindViewModle.kt\ncom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1\n*L\n1#1,21:1\n66#2,2:22\n*E\n"})
public final class UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1 extends SuspendLambda implements Function2<l0, Continuation<? super ResponseModel<Boolean>>, Object> {
    final /* synthetic */ Ref.ObjectRef $request$inlined;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1(Continuation continuation, Ref.ObjectRef objectRef) {
        super(2, continuation);
        this.$request$inlined = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1 unbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1 = new UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1(continuation, this.$request$inlined);
        unbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1.L$0 = obj;
        return unbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                RpcJavaApiForKotlin javaAccountAPI = RpcKotlinServiceFactory.INSTANCE.getInstances().getJavaAccountAPI();
                UnThirdPartRequest unThirdPartRequest = (UnThirdPartRequest) this.$request$inlined.element;
                this.label = 1;
                obj = javaAccountAPI.unbindThirdfParty(unThirdPartRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return (ResponseModel) obj;
        } catch (Throwable th) {
            return ApiException.INSTANCE.build(th).toResponse();
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super ResponseModel<Boolean>> continuation) {
        return ((UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
