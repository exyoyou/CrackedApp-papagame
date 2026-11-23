package com.join.mgps.cloud.viewmodel;

import com.join.mgps.cloud.bean.HMMessage;
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
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel$onReceiveMessage$1", f = "HMCloudRemoteViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class HMCloudRemoteViewModel$onReceiveMessage$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f64211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ HMMessage f64212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ HMCloudRemoteViewModel f64213d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HMCloudRemoteViewModel$onReceiveMessage$1(HMMessage hMMessage, HMCloudRemoteViewModel hMCloudRemoteViewModel, Continuation<? super HMCloudRemoteViewModel$onReceiveMessage$1> continuation) {
        super(2, continuation);
        this.f64212c = hMMessage;
        this.f64213d = hMCloudRemoteViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HMCloudRemoteViewModel$onReceiveMessage$1(this.f64212c, this.f64213d, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f64211b != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        HMMessage hMMessage = this.f64212c;
        com.join.mgps.cloud.c cVar = null;
        if (hMMessage instanceof HMMessage.Config) {
            com.join.mgps.cloud.c cVar2 = this.f64213d.f64195b;
            if (cVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
            } else {
                cVar = cVar2;
            }
            Boxing.boxBoolean(cVar.d().d(n6.b.b(((HMMessage.Config) this.f64212c).getConfig())));
        } else if (hMMessage instanceof HMMessage.UserInfo) {
            this.f64213d.E(((HMMessage.UserInfo) hMMessage).getAccountData());
        } else if (hMMessage instanceof HMMessage.DownloadCloudArchive) {
            this.f64213d.s().postValue(((HMMessage.DownloadCloudArchive) this.f64212c).getArchiveData());
            this.f64213d.t().postValue(((HMMessage.DownloadCloudArchive) this.f64212c).getArchivePathData());
            HMCloudRemoteViewModel.l(this.f64213d, null, 1, null);
        } else if (hMMessage instanceof HMMessage.Start) {
            this.f64213d.B();
        } else if (hMMessage instanceof HMMessage.Connect) {
            com.join.mgps.cloud.c cVar3 = this.f64213d.f64195b;
            if (cVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                cVar3 = null;
            }
            com.join.mgps.cloud.c.l(cVar3, HMMessage.Connected.INSTANCE, false, 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((HMCloudRemoteViewModel$onReceiveMessage$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
