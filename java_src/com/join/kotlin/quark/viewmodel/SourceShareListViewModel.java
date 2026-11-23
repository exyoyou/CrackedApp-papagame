package com.join.kotlin.quark.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.quark.model.bean.Page;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.model.request.SourceListRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
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
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dR \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\r0\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "showData", "", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "getShowData", "()Ljava/util/List;", "setShowData", "(Ljava/util/List;)V", "listData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "getListData", "()Landroidx/lifecycle/MutableLiveData;", "setListData", "(Landroidx/lifecycle/MutableLiveData;)V", "page", "Lcom/join/kotlin/quark/model/bean/Page;", "getPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "getResourceList", "", "refresh", "", "tabId", "", "uid", "", Constants.TOKEN, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SourceShareListViewModel extends BaseViewModel {

    @NotNull
    private List<SourceListItemBean> showData = new ArrayList();

    @NotNull
    private MutableLiveData<ListDataUiState<SourceListItemBean>> listData = new MutableLiveData<>();

    @NotNull
    private final Page page = new Page(1, 0, 2, null);

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.SourceShareListViewModel$getResourceList$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00040\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Ljava/util/ArrayList;", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "Lkotlin/collections/ArrayList;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.SourceShareListViewModel$getResourceList$1", f = "SourceShareListViewModel.kt", i = {}, l = {41}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<ArrayList<SourceListItemBean>>>, Object> {
        final /* synthetic */ boolean $refresh;
        final /* synthetic */ int $tabId;
        final /* synthetic */ String $token;
        final /* synthetic */ String $uid;
        int label;
        final /* synthetic */ SourceShareListViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, SourceShareListViewModel sourceShareListViewModel, int i10, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = sourceShareListViewModel;
            this.$tabId = i10;
            this.$token = str;
            this.$uid = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$refresh, this.this$0, this.$tabId, this.$token, this.$uid, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.$refresh) {
                    this.this$0.getPage().setPage(1);
                }
                SourceListRequest sourceListRequest = new SourceListRequest(this.this$0.getPage(), Boxing.boxInt(this.$tabId), this.$token, this.$uid);
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(sourceListRequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<SourceListRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.resourceList(requestModelMakeSign, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super ResponseModel<ArrayList<SourceListItemBean>>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getResourceList$lambda$0(SourceShareListViewModel sourceShareListViewModel, boolean z10, ArrayList arrayList) {
        Page page = sourceShareListViewModel.page;
        page.setPage(page.getPage() + 1);
        boolean zIsEmpty = (arrayList != null ? arrayList : CollectionsKt__CollectionsKt.emptyList()).isEmpty();
        Integer numValueOf = arrayList != null ? Integer.valueOf(arrayList.size()) : null;
        Intrinsics.checkNotNull(numValueOf);
        sourceShareListViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, zIsEmpty, numValueOf.intValue() > 0, z10 && zIsEmpty, arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getResourceList$lambda$1(boolean z10, SourceShareListViewModel sourceShareListViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        sourceShareListViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<SourceListItemBean>> getListData() {
        return this.listData;
    }

    @NotNull
    public final Page getPage() {
        return this.page;
    }

    public final void getResourceList(final boolean refresh, int tabId, @NotNull String uid, @NotNull String token) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(token, "token");
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(refresh, this, tabId, token, uid, null), new Function1() { // from class: com.join.kotlin.quark.viewmodel.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SourceShareListViewModel.getResourceList$lambda$0(this.f48905b, refresh, (ArrayList) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.quark.viewmodel.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SourceShareListViewModel.getResourceList$lambda$1(refresh, this, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @NotNull
    public final List<SourceListItemBean> getShowData() {
        return this.showData;
    }

    public final void setListData(@NotNull MutableLiveData<ListDataUiState<SourceListItemBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.listData = mutableLiveData;
    }

    public final void setShowData(@NotNull List<SourceListItemBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showData = list;
    }
}
