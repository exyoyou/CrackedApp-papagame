package com.join.mgps.cloud.viewmodel;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.cloud.bean.HMMessage;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l0;
import q5.f;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel$startGame$1", f = "HMCloudRemoteViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class HMCloudRemoteViewModel$startGame$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f64217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f64218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ HMCloudRemoteViewModel f64219d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HMCloudRemoteViewModel$startGame$1(String str, HMCloudRemoteViewModel hMCloudRemoteViewModel, Continuation<? super HMCloudRemoteViewModel$startGame$1> continuation) {
        super(2, continuation);
        this.f64218c = str;
        this.f64219d = hMCloudRemoteViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(HMCloudRemoteViewModel hMCloudRemoteViewModel) {
        hMCloudRemoteViewModel.B();
        return Unit.INSTANCE;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HMCloudRemoteViewModel$startGame$1(this.f64218c, this.f64219d, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f64217b != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        DownloadTask downloadTaskG = f.M().G(this.f64218c);
        com.join.mgps.cloud.c cVar = null;
        if (downloadTaskG == null) {
            com.join.mgps.cloud.c cVar2 = this.f64219d.f64195b;
            if (cVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
            } else {
                cVar = cVar2;
            }
            cVar.i("startGame - start download game " + this.f64218c);
            this.f64219d.p(this.f64218c);
            return Unit.INSTANCE;
        }
        if (downloadTaskG.getStatus() == 9) {
            com.join.mgps.cloud.c cVar3 = this.f64219d.f64195b;
            if (cVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
            } else {
                cVar = cVar3;
            }
            cVar.i("start update game.");
            this.f64219d.o(downloadTaskG);
            return Unit.INSTANCE;
        }
        if (downloadTaskG.getStatus() == 5) {
            this.f64219d.v().postValue(Boxing.boxBoolean(true));
            com.join.mgps.cloud.c cVar4 = this.f64219d.f64195b;
            if (cVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                cVar4 = null;
            }
            com.join.mgps.cloud.c.l(cVar4, HMMessage.GameReady.INSTANCE, false, 2, null);
            final HMCloudRemoteViewModel hMCloudRemoteViewModel = this.f64219d;
            hMCloudRemoteViewModel.k(new Function0() { // from class: com.join.mgps.cloud.viewmodel.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMCloudRemoteViewModel$startGame$1.f(hMCloudRemoteViewModel);
                }
            });
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((HMCloudRemoteViewModel$startGame$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
