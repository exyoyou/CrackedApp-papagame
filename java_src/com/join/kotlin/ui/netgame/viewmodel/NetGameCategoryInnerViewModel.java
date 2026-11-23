package com.join.kotlin.ui.netgame.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.android.app.common.utils.m;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.ui.netgame.data.NetGameZoneRequest;
import com.join.kotlin.ui.netgame.data.NetGameZoneResultData;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
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
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0017J6\u0010(\u001a\u0012\u0012\u0004\u0012\u00020\u00070 j\b\u0012\u0004\u0012\u00020\u0007`!2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00070*2\u0006\u0010'\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u000bH\u0002R\u001d\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000fR!\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00070 j\b\u0012\u0004\u0012\u00020\u0007`!¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "listData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/mgps/dto/CommonGameInfoBean;", "getListData", "()Landroidx/lifecycle/MutableLiveData;", "tabType", "", "getTabType", "()I", "setTabType", "(I)V", "categoryName", "", "getCategoryName", "()Ljava/lang/String;", "setCategoryName", "(Ljava/lang/String;)V", "fromHome", "", "getFromHome", "()Z", "setFromHome", "(Z)V", "pageCount", "getPageCount", "setPageCount", "allGameList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getAllGameList", "()Ljava/util/ArrayList;", "isRequesting", "loadData", "", "refresh", "processGameList", "datas", "", "page", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNetGameCategoryInnerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetGameCategoryInnerViewModel.kt\ncom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1869#2,2:130\n*S KotlinDebug\n*F\n+ 1 NetGameCategoryInnerViewModel.kt\ncom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel\n*L\n116#1:130,2\n*E\n"})
public final class NetGameCategoryInnerViewModel extends BaseViewModel {
    private boolean isRequesting;

    @NotNull
    private final MutableLiveData<ListDataUiState<CommonGameInfoBean>> listData = new MutableLiveData<>();
    private int tabType = 1;

    @NotNull
    private String categoryName = "";
    private boolean fromHome = true;
    private int pageCount = 1;

    @NotNull
    private final ArrayList<CommonGameInfoBean> allGameList = new ArrayList<>();

    /* JADX INFO: renamed from: com.join.kotlin.ui.netgame.viewmodel.NetGameCategoryInnerViewModel$loadData$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.netgame.viewmodel.NetGameCategoryInnerViewModel$loadData$1", f = "NetGameCategoryInnerViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nNetGameCategoryInnerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetGameCategoryInnerViewModel.kt\ncom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1#2:130\n*E\n"})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<NetGameZoneResultData>>, Object> {
        final /* synthetic */ int $page;
        int label;
        final /* synthetic */ NetGameCategoryInnerViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10, NetGameCategoryInnerViewModel netGameCategoryInnerViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$page = i10;
            this.this$0 = netGameCategoryInnerViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$page, this.this$0, continuation);
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
            requestModel.setArgs(new NetGameZoneRequest(uid != null ? uid.longValue() : 0L, requestModel.getUserToken(), this.$page, this.this$0.getTabType()));
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
    public static final Unit loadData$lambda$0(NetGameCategoryInnerViewModel netGameCategoryInnerViewModel, boolean z10, int i10, NetGameZoneResultData netGameZoneResultData) {
        netGameCategoryInnerViewModel.isRequesting = false;
        List<CommonGameInfoBean> game_list = netGameZoneResultData != null ? netGameZoneResultData.getGame_list() : null;
        if (game_list == null) {
            game_list = CollectionsKt__CollectionsKt.emptyList();
        }
        if (game_list.isEmpty()) {
            if (z10) {
                netGameCategoryInnerViewModel.allGameList.clear();
            }
            netGameCategoryInnerViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, true, false, z10 && netGameCategoryInnerViewModel.allGameList.isEmpty(), null, 66, null));
        } else {
            ArrayList<CommonGameInfoBean> arrayListProcessGameList = netGameCategoryInnerViewModel.processGameList(game_list, z10, i10);
            int i11 = netGameCategoryInnerViewModel.pageCount;
            if (i10 == i11) {
                netGameCategoryInnerViewModel.pageCount = i11 + 1;
            }
            netGameCategoryInnerViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, false, true, false, arrayListProcessGameList, 34, null));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadData$lambda$1(NetGameCategoryInnerViewModel netGameCategoryInnerViewModel, boolean z10, AppException error) {
        Intrinsics.checkNotNullParameter(error, "error");
        netGameCategoryInnerViewModel.isRequesting = false;
        netGameCategoryInnerViewModel.listData.setValue(new ListDataUiState<>(false, error.getErrorMsg(), z10, false, false, z10 && netGameCategoryInnerViewModel.allGameList.isEmpty(), null, 88, null));
        return Unit.INSTANCE;
    }

    private final ArrayList<CommonGameInfoBean> processGameList(List<? extends CommonGameInfoBean> datas, boolean refresh, int page) {
        if (refresh || page == 1) {
            this.allGameList.clear();
        }
        ExtBean sopName = new ExtBean().setFirstModule("home").setSecondModule("netGame").setChatId("categoryPage").setSopName(this.categoryName);
        ArrayList<CommonGameInfoBean> arrayList = new ArrayList<>();
        for (CommonGameInfoBean commonGameInfoBean : datas) {
            commonGameInfoBean.set_from(this.fromHome ? 210 : 129);
            commonGameInfoBean.set_from_type(this.fromHome ? 210 : 129);
            ExtBean extBeanItemWithParent = commonGameInfoBean.getExtBean().itemWithParent(sopName);
            GInfoBean g_info = commonGameInfoBean.getG_info();
            extBeanItemWithParent.setResourceId(g_info != null ? g_info.getId() : null).setTypeCode("btnDown");
            DlTaskManager.INSTANCE.updateDownloadTask(commonGameInfoBean);
            this.allGameList.add(commonGameInfoBean);
            arrayList.add(commonGameInfoBean);
        }
        return arrayList;
    }

    @NotNull
    public final ArrayList<CommonGameInfoBean> getAllGameList() {
        return this.allGameList;
    }

    @NotNull
    public final String getCategoryName() {
        return this.categoryName;
    }

    public final boolean getFromHome() {
        return this.fromHome;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<CommonGameInfoBean>> getListData() {
        return this.listData;
    }

    public final int getPageCount() {
        return this.pageCount;
    }

    public final int getTabType() {
        return this.tabType;
    }

    public final void loadData(final boolean refresh) {
        if (this.isRequesting) {
            return;
        }
        final int i10 = 1;
        if (!m.j(MApplication.f3182z)) {
            this.listData.setValue(new ListDataUiState<>(false, "网络未连接，请检查网络设置", refresh, false, false, refresh && this.allGameList.isEmpty(), null, 88, null));
            return;
        }
        this.isRequesting = true;
        if (refresh) {
            this.pageCount = 1;
        } else {
            i10 = this.pageCount;
        }
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(i10, this, null), new Function1() { // from class: com.join.kotlin.ui.netgame.viewmodel.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NetGameCategoryInnerViewModel.loadData$lambda$0(this.f49308b, refresh, i10, (NetGameZoneResultData) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.netgame.viewmodel.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NetGameCategoryInnerViewModel.loadData$lambda$1(this.f49311b, refresh, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    public final void setCategoryName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.categoryName = str;
    }

    public final void setFromHome(boolean z10) {
        this.fromHome = z10;
    }

    public final void setPageCount(int i10) {
        this.pageCount = i10;
    }

    public final void setTabType(int i10) {
        this.tabType = i10;
    }
}
