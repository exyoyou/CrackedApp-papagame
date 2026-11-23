package com.join.kotlin.ui.netgame.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.android.app.common.utils.m;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.ui.netgame.data.NetGameTypeData;
import com.join.kotlin.ui.netgame.data.NetGameZoneRequest;
import com.join.kotlin.ui.netgame.data.NetGameZoneResultData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\fR'\u0010\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0018\u00010\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "tabData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/state/ResultState;", "", "Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;", "getTabData", "()Landroidx/lifecycle/MutableLiveData;", "loadTabs", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NetGameCategoryViewModel extends BaseViewModel {

    @NotNull
    private final MutableLiveData<ResultState<List<NetGameTypeData>>> tabData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.ui.netgame.viewmodel.NetGameCategoryViewModel$loadTabs$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.netgame.viewmodel.NetGameCategoryViewModel$loadTabs$1", f = "NetGameCategoryViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nNetGameCategoryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetGameCategoryViewModel.kt\ncom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel$loadTabs$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<NetGameZoneResultData>>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
            RequestModel requestModel = new RequestModel(MApplication.f3182z);
            requestModel.setUid(accountData != null ? Boxing.boxLong(accountData.getUid()) : Boxing.boxLong(0L));
            requestModel.setUserToken(accountData != null ? accountData.getToken() : null);
            Long uid = requestModel.getUid();
            requestModel.setArgs(new NetGameZoneRequest(uid != null ? uid.longValue() : 0L, requestModel.getUserToken(), 1, 0));
            ResponseModel<NetGameZoneResultData> responseModelZ = i.P0().z(requestModel.makeSign());
            if (responseModelZ != null) {
                return responseModelZ;
            }
            ResponseModel responseModel = new ResponseModel();
            responseModel.setCode(-1);
            return responseModel;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super ResponseModel<NetGameZoneResultData>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadTabs$lambda$0(NetGameCategoryViewModel netGameCategoryViewModel, NetGameZoneResultData netGameZoneResultData) {
        List<NetGameTypeData> game_type = netGameZoneResultData != null ? netGameZoneResultData.getGame_type() : null;
        List<NetGameTypeData> list = game_type;
        netGameCategoryViewModel.tabData.setValue(!(list == null || list.isEmpty()) ? new ResultState.Success<>(game_type) : new ResultState.Error(new AppException(-1, "加载失败", null, null, 12, null)));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadTabs$lambda$1(NetGameCategoryViewModel netGameCategoryViewModel, AppException error) {
        Intrinsics.checkNotNullParameter(error, "error");
        netGameCategoryViewModel.tabData.setValue(new ResultState.Error(error));
        return Unit.INSTANCE;
    }

    @NotNull
    public final MutableLiveData<ResultState<List<NetGameTypeData>>> getTabData() {
        return this.tabData;
    }

    public final void loadTabs() {
        if (!m.j(MApplication.f3182z)) {
            this.tabData.setValue(new ResultState.Error(new AppException(-1, "网络未连接，请检查网络设置", null, null, 12, null)));
        } else {
            this.tabData.setValue(ResultState.INSTANCE.onRequestLoading(""));
            BaseViewModelExtKt.request$default(this, new AnonymousClass1(null), new Function1() { // from class: com.join.kotlin.ui.netgame.viewmodel.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return NetGameCategoryViewModel.loadTabs$lambda$0(this.f49313b, (NetGameZoneResultData) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.ui.netgame.viewmodel.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return NetGameCategoryViewModel.loadTabs$lambda$1(this.f49314b, (AppException) obj);
                }
            }, false, null, 24, null);
        }
    }
}
