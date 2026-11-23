package com.join.kotlin.ui.legendgame.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.android.app.common.utils.m;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.ui.legendgame.data.LegendGameHeaderData;
import com.join.kotlin.ui.legendgame.data.LegendGameListMapper;
import com.join.kotlin.ui.legendgame.data.LegendRecommendItem;
import com.join.kotlin.ui.legendgame.data.LegendZoneRequest;
import com.join.kotlin.ui.legendgame.data.LegendZoneResultData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0012\u001a\u00020\u0013R!\u0010\u0004\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0019\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "zoneState", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/state/ResultState;", "Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;", "getZoneState", "()Landroidx/lifecycle/MutableLiveData;", "headerData", "Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;", "getHeaderData", "zoneData", "getZoneData", "()Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;", "setZoneData", "(Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;)V", "loadZone", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LegendGameZoneViewModel extends BaseViewModel {

    @Nullable
    private LegendZoneResultData zoneData;

    @NotNull
    private final MutableLiveData<ResultState<LegendZoneResultData>> zoneState = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<LegendGameHeaderData> headerData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.ui.legendgame.viewmodel.LegendGameZoneViewModel$loadZone$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.legendgame.viewmodel.LegendGameZoneViewModel$loadZone$1", f = "LegendGameZoneViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nLegendGameZoneViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameZoneViewModel.kt\ncom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel$loadZone$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n1#2:58\n*E\n"})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<LegendZoneResultData>>, Object> {
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
            requestModel.setArgs(new LegendZoneRequest(uid != null ? uid.longValue() : 0L));
            ResponseModel<LegendZoneResultData> responseModelL = i.P0().L(requestModel.makeSign());
            if (responseModelL != null) {
                return responseModelL;
            }
            ResponseModel responseModel = new ResponseModel();
            responseModel.setCode(-1);
            return responseModel;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super ResponseModel<LegendZoneResultData>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadZone$lambda$0(LegendGameZoneViewModel legendGameZoneViewModel, LegendZoneResultData legendZoneResultData) {
        List<LegendRecommendItem> recommend_list;
        legendGameZoneViewModel.zoneData = legendZoneResultData;
        legendGameZoneViewModel.headerData.setValue(LegendGameListMapper.INSTANCE.mapHeader((legendZoneResultData == null || (recommend_list = legendZoneResultData.getRecommend_list()) == null) ? null : (LegendRecommendItem) CollectionsKt___CollectionsKt.firstOrNull((List) recommend_list)));
        legendGameZoneViewModel.zoneState.setValue(legendZoneResultData != null ? new ResultState.Success<>(legendZoneResultData) : new ResultState.Error(new AppException(-1, "加载失败", null, null, 12, null)));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadZone$lambda$1(LegendGameZoneViewModel legendGameZoneViewModel, AppException error) {
        Intrinsics.checkNotNullParameter(error, "error");
        legendGameZoneViewModel.zoneState.setValue(new ResultState.Error(error));
        return Unit.INSTANCE;
    }

    @NotNull
    public final MutableLiveData<LegendGameHeaderData> getHeaderData() {
        return this.headerData;
    }

    @Nullable
    public final LegendZoneResultData getZoneData() {
        return this.zoneData;
    }

    @NotNull
    public final MutableLiveData<ResultState<LegendZoneResultData>> getZoneState() {
        return this.zoneState;
    }

    public final void loadZone() {
        if (!m.j(MApplication.f3182z)) {
            this.zoneState.setValue(new ResultState.Error(new AppException(-1, "网络未连接，请检查网络设置", null, null, 12, null)));
        } else {
            this.zoneState.setValue(ResultState.INSTANCE.onRequestLoading(""));
            BaseViewModelExtKt.request$default(this, new AnonymousClass1(null), new Function1() { // from class: com.join.kotlin.ui.legendgame.viewmodel.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LegendGameZoneViewModel.loadZone$lambda$0(this.f49282b, (LegendZoneResultData) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.ui.legendgame.viewmodel.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LegendGameZoneViewModel.loadZone$lambda$1(this.f49283b, (AppException) obj);
                }
            }, false, null, 24, null);
        }
    }

    public final void setZoneData(@Nullable LegendZoneResultData legendZoneResultData) {
        this.zoneData = legendZoneResultData;
    }
}
