package com.join.kotlin.module.hmcloud.viewmodel;

import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$openWebPage$2$onEvent$2", f = "HMCloudSignViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class HMCloudSignViewModel$openWebPage$2$onEvent$2 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
    final /* synthetic */ MessageCloudGamingAdCfgResponse.AdCfgInfo $adCfgInfo;
    final /* synthetic */ int $step;
    int label;
    final /* synthetic */ HMCloudSignViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HMCloudSignViewModel$openWebPage$2$onEvent$2(HMCloudSignViewModel hMCloudSignViewModel, int i10, MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, Continuation<? super HMCloudSignViewModel$openWebPage$2$onEvent$2> continuation) {
        super(2, continuation);
        this.this$0 = hMCloudSignViewModel;
        this.$step = i10;
        this.$adCfgInfo = adCfgInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HMCloudSignViewModel$openWebPage$2$onEvent$2(this.this$0, this.$step, this.$adCfgInfo, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        HMCloudSignViewModel.openWebPage$default(this.this$0, this.$step + 1, this.$adCfgInfo, null, 4, null);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((HMCloudSignViewModel$openWebPage$2$onEvent$2) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
