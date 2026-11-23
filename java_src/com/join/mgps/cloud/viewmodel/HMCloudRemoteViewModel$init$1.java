package com.join.mgps.cloud.viewmodel;

import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.cloud.bean.ConfigInfo;
import com.join.mgps.cloud.bean.HMMessage;
import kotlin.KotlinNothingValueException;
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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.f;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel$init$1", f = "HMCloudRemoteViewModel.kt", i = {}, l = {83}, m = "invokeSuspend", n = {}, s = {})
final class HMCloudRemoteViewModel$init$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f64208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ HMCloudRemoteViewModel f64209c;

    @SourceDebugExtension({"SMAP\nHMCloudRemoteViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudRemoteViewModel.kt\ncom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$1\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n10#2:423\n1#3:424\n*S KotlinDebug\n*F\n+ 1 HMCloudRemoteViewModel.kt\ncom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$1\n*L\n94#1:423\n*E\n"})
    static final class a<T> implements f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HMCloudRemoteViewModel f64210b;

        a(HMCloudRemoteViewModel hMCloudRemoteViewModel) {
            this.f64210b = hMCloudRemoteViewModel;
        }

        @Override // kotlinx.coroutines.flow.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(String str, Continuation<? super Unit> continuation) {
            com.join.mgps.cloud.c cVar = null;
            if (str == null || str.length() == 0) {
                com.join.mgps.cloud.c cVar2 = this.f64210b.f64195b;
                if (cVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                    cVar2 = null;
                }
                cVar2.i("config info is empty");
                if (Intrinsics.areEqual(n6.a.f94478a.b(), Boxing.boxBoolean(true))) {
                    this.f64210b.F();
                } else {
                    com.join.mgps.cloud.c cVar3 = this.f64210b.f64195b;
                    if (cVar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                        cVar3 = null;
                    }
                    com.join.mgps.cloud.c.l(cVar3, HMMessage.ConfigWait.INSTANCE, false, 2, null);
                }
                return Unit.INSTANCE;
            }
            ConfigInfo configInfo = (ConfigInfo) JsonMapper.getInstance().fromJson(str, ConfigInfo.class);
            if (configInfo == null) {
                com.join.mgps.cloud.c cVar4 = this.f64210b.f64195b;
                if (cVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                } else {
                    cVar = cVar4;
                }
                cVar.i("config info parse failed");
                this.f64210b.F();
                return Unit.INSTANCE;
            }
            this.f64210b.u().postValue(configInfo);
            n6.a.f94478a.e(configInfo);
            ArchiveData archiveData = configInfo.getArchiveData();
            if (archiveData != null) {
                this.f64210b.s().postValue(archiveData);
            }
            ModGameArchivePathData archivePathData = configInfo.getArchivePathData();
            if (archivePathData != null) {
                this.f64210b.t().postValue(archivePathData);
            }
            if (configInfo.getAccountData().length() > 0) {
                this.f64210b.E(configInfo.getAccountData());
            }
            com.join.mgps.cloud.c cVar5 = this.f64210b.f64195b;
            if (cVar5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                cVar5 = null;
            }
            com.join.mgps.cloud.c.l(cVar5, HMMessage.ConfigReady.INSTANCE, false, 2, null);
            this.f64210b.F();
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HMCloudRemoteViewModel$init$1(HMCloudRemoteViewModel hMCloudRemoteViewModel, Continuation<? super HMCloudRemoteViewModel$init$1> continuation) {
        super(2, continuation);
        this.f64209c = hMCloudRemoteViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HMCloudRemoteViewModel$init$1(this.f64209c, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f64208b;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            com.join.mgps.cloud.c cVar = this.f64209c.f64195b;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                cVar = null;
            }
            j<String> jVarD = cVar.d();
            a aVar = new a(this.f64209c);
            this.f64208b = 1;
            if (jVarD.a(aVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((HMCloudRemoteViewModel$init$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
