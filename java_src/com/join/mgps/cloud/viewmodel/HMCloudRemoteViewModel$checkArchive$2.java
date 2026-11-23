package com.join.mgps.cloud.viewmodel;

import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel$checkArchive$2", f = "HMCloudRemoteViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class HMCloudRemoteViewModel$checkArchive$2 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f64205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ HMCloudRemoteViewModel f64206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f64207d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HMCloudRemoteViewModel$checkArchive$2(HMCloudRemoteViewModel hMCloudRemoteViewModel, Function0<Unit> function0, Continuation<? super HMCloudRemoteViewModel$checkArchive$2> continuation) {
        super(2, continuation);
        this.f64206c = hMCloudRemoteViewModel;
        this.f64207d = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HMCloudRemoteViewModel$checkArchive$2(this.f64206c, this.f64207d, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f64205b != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        ArchiveData value = this.f64206c.s().getValue();
        com.join.mgps.cloud.c cVar = null;
        if (value == null) {
            this.f64206c.r().postValue(Boxing.boxBoolean(true));
            com.join.mgps.cloud.c cVar2 = this.f64206c.f64195b;
            if (cVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                cVar2 = null;
            }
            com.join.mgps.cloud.c.l(cVar2, HMMessage.ArchiveReady.INSTANCE, false, 2, null);
            this.f64207d.invoke();
            return Unit.INSTANCE;
        }
        HMCloudRemoteViewModel hMCloudRemoteViewModel = this.f64206c;
        String id2 = value.getId();
        Intrinsics.checkNotNullExpressionValue(id2, "getId(...)");
        ArchiveData archiveDataQ = hMCloudRemoteViewModel.q(id2);
        if (archiveDataQ == null) {
            this.f64206c.x().postValue(d.a.f64224a);
            com.join.mgps.cloud.c cVar3 = this.f64206c.f64195b;
            if (cVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
            } else {
                cVar = cVar3;
            }
            cVar.i("archive not found. download archive.");
            return Unit.INSTANCE;
        }
        ArchiveData archiveDataM27clone = value.m27clone();
        Intrinsics.checkNotNullExpressionValue(archiveDataM27clone, "clone(...)");
        c.update(archiveDataM27clone, archiveDataQ);
        this.f64206c.s().postValue(archiveDataM27clone);
        this.f64206c.r().postValue(Boxing.boxBoolean(true));
        com.join.mgps.cloud.c cVar4 = this.f64206c.f64195b;
        if (cVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageManager");
            cVar4 = null;
        }
        HMMessage.ArchiveReady archiveReady = HMMessage.ArchiveReady.INSTANCE;
        archiveReady.setStatus(archiveDataQ.getStatus());
        com.join.mgps.cloud.c.l(cVar4, archiveReady, false, 2, null);
        this.f64207d.invoke();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((HMCloudRemoteViewModel$checkArchive$2) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
