package com.join.mgps.cloud.viewmodel;

import android.content.Context;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.cloud.bean.ConfigInfo;
import com.join.mgps.cloud.bean.HMMessage;
import com.join.mgps.va.overmind.i;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l0;
import q5.f;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel$openGame$1", f = "HMCloudRemoteViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class HMCloudRemoteViewModel$openGame$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f64214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ HMCloudRemoteViewModel f64215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ String f64216d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HMCloudRemoteViewModel$openGame$1(HMCloudRemoteViewModel hMCloudRemoteViewModel, String str, Continuation<? super HMCloudRemoteViewModel$openGame$1> continuation) {
        super(2, continuation);
        this.f64215c = hMCloudRemoteViewModel;
        this.f64216d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HMCloudRemoteViewModel$openGame$1(this.f64215c, this.f64216d, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f64214b != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        WeakReference weakReference = this.f64215c.f64194a;
        com.join.mgps.cloud.c cVar = null;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
            weakReference = null;
        }
        Context context = (Context) weakReference.get();
        if (context == null) {
            return Unit.INSTANCE;
        }
        ArchiveData value = this.f64215c.s().getValue();
        DownloadTask downloadTaskG = f.M().G(this.f64216d);
        if (downloadTaskG == null) {
            com.join.mgps.cloud.c cVar2 = this.f64215c.f64195b;
            if (cVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
            } else {
                cVar = cVar2;
            }
            cVar.i("openGame - game is not exist. start download game " + this.f64216d);
            this.f64215c.p(this.f64216d);
            return Unit.INSTANCE;
        }
        if (value == null) {
            if (downloadTaskG.getStatus() == 5) {
                this.f64215c.D(downloadTaskG);
                com.join.mgps.cloud.c cVar3 = this.f64215c.f64195b;
                if (cVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                    cVar3 = null;
                }
                com.join.mgps.cloud.c.l(cVar3, HMMessage.Launching.INSTANCE, false, 2, null);
            }
            return Unit.INSTANCE;
        }
        if (i.f73262g.d().h(value.getPackageName(), value.getUserId())) {
            if (value.getUid() != AccountUtil_.getInstance_(context).getAccountData().getUid() && value.getUid() != 0) {
                this.f64215c.G("当前正在使用 " + value.getNickname() + " 的存档");
            }
            ConfigInfo value2 = this.f64215c.u().getValue();
            String strValueOf = String.valueOf(value2 != null ? value2.getGoldFingerSwitch() : 0);
            ConfigInfo value3 = this.f64215c.u().getValue();
            APKUtils.f34739a.J(context, value, strValueOf, String.valueOf(value3 != null ? value3.getBbsStrategySwitch() : 0), downloadTaskG);
            com.join.mgps.cloud.c cVar4 = this.f64215c.f64195b;
            if (cVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                cVar4 = null;
            }
            com.join.mgps.cloud.c.l(cVar4, HMMessage.Launching.INSTANCE, false, 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((HMCloudRemoteViewModel$openGame$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
