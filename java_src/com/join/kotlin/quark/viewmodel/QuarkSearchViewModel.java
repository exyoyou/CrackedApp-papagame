package com.join.kotlin.quark.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.quark.model.bean.Page;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.model.request.SourceSearchRequest;
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
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#R(\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR&\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u001d0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\t\"\u0004\b\u001f\u0010\u000b¨\u0006$"}, d2 = {"Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "setTitle", "(Landroidx/lifecycle/MutableLiveData;)V", "page", "Lcom/join/kotlin/quark/model/bean/Page;", "getPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "keyword", "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "showData", "", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "getShowData", "()Ljava/util/List;", "setShowData", "(Ljava/util/List;)V", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "getListData", "setListData", "getResourceSearch", "", "refresh", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class QuarkSearchViewModel extends BaseViewModel {

    @Nullable
    private String keyword;

    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>("资源共享");

    @NotNull
    private final Page page = new Page(1, 0, 2, null);

    @NotNull
    private List<SourceListItemBean> showData = new ArrayList();

    @NotNull
    private MutableLiveData<ListDataUiState<SourceListItemBean>> listData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.QuarkSearchViewModel$getResourceSearch$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00040\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Ljava/util/ArrayList;", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "Lkotlin/collections/ArrayList;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.QuarkSearchViewModel$getResourceSearch$1", f = "QuarkSearchViewModel.kt", i = {}, l = {42}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<ArrayList<SourceListItemBean>>>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ QuarkSearchViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, QuarkSearchViewModel quarkSearchViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = quarkSearchViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$refresh, this.this$0, continuation);
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
                SourceSearchRequest sourceSearchRequest = new SourceSearchRequest(this.this$0.getKeyword(), this.this$0.getPage());
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(sourceSearchRequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<SourceSearchRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.resourceSearch(requestModelMakeSign, this);
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
    public static final Unit getResourceSearch$lambda$0(QuarkSearchViewModel quarkSearchViewModel, boolean z10, ArrayList arrayList) {
        Page page = quarkSearchViewModel.page;
        page.setPage(page.getPage() + 1);
        boolean zIsEmpty = (arrayList != null ? arrayList : CollectionsKt__CollectionsKt.emptyList()).isEmpty();
        Integer numValueOf = arrayList != null ? Integer.valueOf(arrayList.size()) : null;
        Intrinsics.checkNotNull(numValueOf);
        quarkSearchViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, zIsEmpty, numValueOf.intValue() > 0, z10 && zIsEmpty, arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getResourceSearch$lambda$1(boolean z10, QuarkSearchViewModel quarkSearchViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        quarkSearchViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    @Nullable
    public final String getKeyword() {
        return this.keyword;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<SourceListItemBean>> getListData() {
        return this.listData;
    }

    @NotNull
    public final Page getPage() {
        return this.page;
    }

    public final void getResourceSearch(final boolean refresh) {
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(refresh, this, null), new Function1() { // from class: com.join.kotlin.quark.viewmodel.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return QuarkSearchViewModel.getResourceSearch$lambda$0(this.f48897b, refresh, (ArrayList) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.quark.viewmodel.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return QuarkSearchViewModel.getResourceSearch$lambda$1(refresh, this, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @NotNull
    public final List<SourceListItemBean> getShowData() {
        return this.showData;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setKeyword(@Nullable String str) {
        this.keyword = str;
    }

    public final void setListData(@NotNull MutableLiveData<ListDataUiState<SourceListItemBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.listData = mutableLiveData;
    }

    public final void setShowData(@NotNull List<SourceListItemBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showData = list;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }
}
