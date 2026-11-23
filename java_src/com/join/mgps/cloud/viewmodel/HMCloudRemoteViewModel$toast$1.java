package com.join.mgps.cloud.viewmodel;

import android.content.Context;
import com.join.mgps.Util.a3;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel$toast$1", f = "HMCloudRemoteViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class HMCloudRemoteViewModel$toast$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f64220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ HMCloudRemoteViewModel f64221c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ String f64222d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HMCloudRemoteViewModel$toast$1(HMCloudRemoteViewModel hMCloudRemoteViewModel, String str, Continuation<? super HMCloudRemoteViewModel$toast$1> continuation) {
        super(2, continuation);
        this.f64221c = hMCloudRemoteViewModel;
        this.f64222d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HMCloudRemoteViewModel$toast$1(this.f64221c, this.f64222d, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f64220b != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        WeakReference weakReference = this.f64221c.f64194a;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
            weakReference = null;
        }
        Context context = (Context) weakReference.get();
        if (context == null) {
            return Unit.INSTANCE;
        }
        a3.b(context).d(this.f64222d);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((HMCloudRemoteViewModel$toast$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
