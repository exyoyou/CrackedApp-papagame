package com.join.kotlin.ui.legendgame.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.android.app.common.utils.m;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.ui.legendgame.data.LegendGameListMapper;
import com.join.kotlin.ui.legendgame.data.LegendGameMultiItem;
import com.join.kotlin.ui.legendgame.data.LegendServerRemindRequest;
import com.join.kotlin.ui.legendgame.data.LegendServerRemindResult;
import com.join.kotlin.ui.legendgame.data.LegendZoneResultData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
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
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0016\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001fR\u001d\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR!\u0010\n\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u000b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR!\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006$"}, d2 = {"Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "listData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;", "getListData", "()Landroidx/lifecycle/MutableLiveData;", "serverRemindState", "Lcom/join/kotlin/base/state/ResultState;", "Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;", "getServerRemindState", "allGameList", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CommonGameInfoBean;", "Lkotlin/collections/ArrayList;", "getAllGameList", "()Ljava/util/ArrayList;", "tabId", "", "getTabId", "()I", "setTabId", "(I)V", "applyZoneData", "", "data", "Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;", "refresh", "", "toggleServerRemind", "detailId", "", "book", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLegendGameInnerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameInnerViewModel.kt\ncom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 LegendGameMultiItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameMultiItem\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1869#2:85\n1870#2:88\n19#3:86\n1#4:87\n*S KotlinDebug\n*F\n+ 1 LegendGameInnerViewModel.kt\ncom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel\n*L\n35#1:85\n35#1:88\n39#1:86\n*E\n"})
public final class LegendGameInnerViewModel extends BaseViewModel {
    private int tabId;

    @NotNull
    private final MutableLiveData<ListDataUiState<LegendGameMultiItem>> listData = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<ResultState<LegendServerRemindResult>> serverRemindState = new MutableLiveData<>();

    @NotNull
    private final ArrayList<CommonGameInfoBean> allGameList = new ArrayList<>();

    /* JADX INFO: renamed from: com.join.kotlin.ui.legendgame.viewmodel.LegendGameInnerViewModel$toggleServerRemind$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.legendgame.viewmodel.LegendGameInnerViewModel$toggleServerRemind$1", f = "LegendGameInnerViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nLegendGameInnerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameInnerViewModel.kt\ncom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<LegendServerRemindResult>>, Object> {
        final /* synthetic */ boolean $book;
        final /* synthetic */ long $detailId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j10, boolean z10, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$detailId = j10;
            this.$book = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$detailId, this.$book, continuation);
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
            requestModel.setUid(Boxing.boxLong(accountData != null ? accountData.getUid() : 0L));
            requestModel.setUserToken(accountData != null ? accountData.getToken() : null);
            requestModel.setArgs(new LegendServerRemindRequest(accountData != null ? accountData.getUid() : 0, this.$detailId));
            i iVarP0 = i.P0();
            ResponseModel<LegendServerRemindResult> responseModelC = this.$book ? iVarP0.c(requestModel.makeSign()) : iVarP0.y(requestModel.makeSign());
            if (responseModelC != null) {
                return responseModelC;
            }
            ResponseModel responseModel = new ResponseModel();
            responseModel.setCode(-1);
            return responseModel;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super ResponseModel<LegendServerRemindResult>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit toggleServerRemind$lambda$2(LegendGameInnerViewModel legendGameInnerViewModel, LegendServerRemindResult legendServerRemindResult) {
        legendGameInnerViewModel.serverRemindState.setValue(new ResultState.Success(legendServerRemindResult));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit toggleServerRemind$lambda$3(LegendGameInnerViewModel legendGameInnerViewModel, AppException error) {
        Intrinsics.checkNotNullParameter(error, "error");
        legendGameInnerViewModel.serverRemindState.setValue(new ResultState.Error(error));
        return Unit.INSTANCE;
    }

    public final void applyZoneData(@Nullable LegendZoneResultData data, boolean refresh) {
        ArrayList<LegendGameMultiItem> arrayListBuildList = LegendGameListMapper.INSTANCE.buildList(this.tabId, data);
        this.allGameList.clear();
        for (LegendGameMultiItem legendGameMultiItem : arrayListBuildList) {
            if (legendGameMultiItem.getViewType() == 1 || legendGameMultiItem.getViewType() == 2) {
                Object data2 = legendGameMultiItem.getData();
                if (!(data2 instanceof CommonGameInfoBean)) {
                    data2 = null;
                }
                CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) data2;
                if (commonGameInfoBean != null) {
                    this.allGameList.add(commonGameInfoBean);
                }
            }
        }
        this.listData.setValue(new ListDataUiState<>(true, null, refresh, arrayListBuildList.isEmpty(), false, refresh && arrayListBuildList.isEmpty(), new ArrayList(arrayListBuildList), 2, null));
    }

    @NotNull
    public final ArrayList<CommonGameInfoBean> getAllGameList() {
        return this.allGameList;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<LegendGameMultiItem>> getListData() {
        return this.listData;
    }

    @NotNull
    public final MutableLiveData<ResultState<LegendServerRemindResult>> getServerRemindState() {
        return this.serverRemindState;
    }

    public final int getTabId() {
        return this.tabId;
    }

    public final void setTabId(int i10) {
        this.tabId = i10;
    }

    public final void toggleServerRemind(long detailId, boolean book) {
        if (detailId <= 0) {
            this.serverRemindState.setValue(new ResultState.Error(new AppException(-1, "开服明细无效", null, null, 12, null)));
        } else if (!m.j(MApplication.f3182z)) {
            this.serverRemindState.setValue(new ResultState.Error(new AppException(-1, "网络未连接，请检查网络设置", null, null, 12, null)));
        } else {
            this.serverRemindState.setValue(null);
            BaseViewModelExtKt.request$default(this, new AnonymousClass1(detailId, book, null), new Function1() { // from class: com.join.kotlin.ui.legendgame.viewmodel.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LegendGameInnerViewModel.toggleServerRemind$lambda$2(this.f49280b, (LegendServerRemindResult) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.ui.legendgame.viewmodel.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LegendGameInnerViewModel.toggleServerRemind$lambda$3(this.f49281b, (AppException) obj);
                }
            }, false, null, 24, null);
        }
    }
}
