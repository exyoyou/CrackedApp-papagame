package com.join.kotlin.ui.search.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.SearchGameApiService;
import com.join.kotlin.ui.search.model.SearchDataBean;
import com.join.kotlin.ui.search.model.SearchGameBean;
import com.join.kotlin.ui.search.model.SearchGroupListBean;
import com.join.kotlin.ui.search.model.args.SearchArgs;
import com.join.kotlin.ui.search.model.args.SearchMoreArgs;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\r\"\u0004\b\u001a\u0010\u000fR\u001a\u0010\u001b\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000fR\u001a\u0010\u001e\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\r\"\u0004\b \u0010\u000fR\u001a\u0010!\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\r\"\u0004\b#\u0010\u000fR\u001d\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0%0\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\tR!\u0010(\u001a\u0012\u0012\u0004\u0012\u00020&0)j\b\u0012\u0004\u0012\u00020&`*¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,¨\u00061"}, d2 = {"Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "page", "", "getPage", "()I", "setPage", "(I)V", "keyword", "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "searchType", "getSearchType", "setSearchType", "apiType", "getApiType", "setApiType", "plugin_num", "getPlugin_num", "setPlugin_num", "lang_id", "getLang_id", "setLang_id", "search_status", "getSearch_status", "setSearch_status", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "getListData", "allDownloadBeans", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getAllDownloadBeans", "()Ljava/util/ArrayList;", "gameSearchList", "", "refresh", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCollectionSearchListGameViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionSearchListGameViewModel.kt\ncom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1869#2,2:101\n1869#2,2:103\n*S KotlinDebug\n*F\n+ 1 CollectionSearchListGameViewModel.kt\ncom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel\n*L\n59#1:101,2\n69#1:103,2\n*E\n"})
public final class CollectionSearchListGameViewModel extends BaseViewModel {
    private int apiType;
    private int lang_id;
    private int plugin_num;
    private int search_status;

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("标题");
    private int page = 1;

    @NotNull
    private String keyword = "";

    @NotNull
    private String searchType = "";

    @NotNull
    private final MutableLiveData<ListDataUiState<CommonMultiItemBean>> listData = new MutableLiveData<>();

    @NotNull
    private final ArrayList<CommonMultiItemBean> allDownloadBeans = new ArrayList<>();

    /* JADX INFO: renamed from: com.join.kotlin.ui.search.viewmodel.CollectionSearchListGameViewModel$gameSearchList$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/search/model/SearchDataBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.search.viewmodel.CollectionSearchListGameViewModel$gameSearchList$1", f = "CollectionSearchListGameViewModel.kt", i = {}, l = {42, 53}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<SearchDataBean>>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$refresh = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return CollectionSearchListGameViewModel.this.new AnonymousClass1(this.$refresh, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return (ResponseModel) obj;
                }
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return (ResponseModel) obj;
            }
            ResultKt.throwOnFailure(obj);
            if (CollectionSearchListGameViewModel.this.getApiType() == 1) {
                if (this.$refresh) {
                    CollectionSearchListGameViewModel.this.setPage(2);
                    CollectionSearchListGameViewModel.this.getAllDownloadBeans().clear();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(new SearchArgs(CollectionSearchListGameViewModel.this.getKeyword(), false, CollectionSearchListGameViewModel.this.getPlugin_num(), CollectionSearchListGameViewModel.this.getLang_id(), CollectionSearchListGameViewModel.this.getPage(), CollectionSearchListGameViewModel.this.getSearch_status()));
                requestModel.setDefault(MApplication.f3182z);
                SearchGameApiService searchGameApiService = ApiServiceFactorKt.getSearchGameApiService();
                RequestModel<SearchArgs> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = searchGameApiService.gameSearchList(requestModelMakeSign, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return (ResponseModel) obj;
            }
            if (this.$refresh) {
                CollectionSearchListGameViewModel.this.setPage(1);
                CollectionSearchListGameViewModel.this.getAllDownloadBeans().clear();
            }
            RequestModel requestModel2 = new RequestModel();
            requestModel2.setArgs(new SearchMoreArgs(CollectionSearchListGameViewModel.this.getKeyword(), CollectionSearchListGameViewModel.this.getPage(), CollectionSearchListGameViewModel.this.getPlugin_num(), CollectionSearchListGameViewModel.this.getLang_id(), CollectionSearchListGameViewModel.this.getSearchType(), CollectionSearchListGameViewModel.this.getSearch_status()));
            requestModel2.setDefault(MApplication.f3182z);
            SearchGameApiService searchGameApiService2 = ApiServiceFactorKt.getSearchGameApiService();
            RequestModel<SearchMoreArgs> requestModelMakeSign2 = requestModel2.makeSign();
            Intrinsics.checkNotNullExpressionValue(requestModelMakeSign2, "makeSign(...)");
            this.label = 2;
            obj = searchGameApiService2.searchListMore(requestModelMakeSign2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            return (ResponseModel) obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super ResponseModel<SearchDataBean>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit gameSearchList$lambda$3(CollectionSearchListGameViewModel collectionSearchListGameViewModel, boolean z10, SearchDataBean searchDataBean) {
        List<CommonGameInfoBean> list;
        List<CommonGameInfoBean> list2;
        collectionSearchListGameViewModel.page++;
        ArrayList arrayList = new ArrayList();
        if (searchDataBean != null) {
            SearchGroupListBean precise_list = searchDataBean.getPrecise_list();
            if (precise_list != null && (list2 = precise_list.getList()) != null) {
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    CommonMultiItemBean commonMultiItemBean = new CommonMultiItemBean(new SearchGameBean((CommonGameInfoBean) it2.next(), null, null, false, 0, null, 62, null));
                    arrayList.add(commonMultiItemBean);
                    collectionSearchListGameViewModel.allDownloadBeans.add(commonMultiItemBean);
                }
            }
            SearchGroupListBean recommend_game_list = searchDataBean.getRecommend_game_list();
            if (recommend_game_list != null && (list = recommend_game_list.getList()) != null) {
                Iterator<T> it3 = list.iterator();
                while (it3.hasNext()) {
                    CommonMultiItemBean commonMultiItemBean2 = new CommonMultiItemBean(new SearchGameBean((CommonGameInfoBean) it3.next(), null, null, false, 0, null, 62, null));
                    arrayList.add(commonMultiItemBean2);
                    collectionSearchListGameViewModel.allDownloadBeans.add(commonMultiItemBean2);
                }
            }
        }
        collectionSearchListGameViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, arrayList.isEmpty(), !arrayList.isEmpty(), z10 && arrayList.isEmpty(), arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit gameSearchList$lambda$4(boolean z10, CollectionSearchListGameViewModel collectionSearchListGameViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        collectionSearchListGameViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    public final void gameSearchList(final boolean refresh) {
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(refresh, null), new Function1() { // from class: com.join.kotlin.ui.search.viewmodel.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CollectionSearchListGameViewModel.gameSearchList$lambda$3(this.f49351b, refresh, (SearchDataBean) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.search.viewmodel.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CollectionSearchListGameViewModel.gameSearchList$lambda$4(refresh, this, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @NotNull
    public final ArrayList<CommonMultiItemBean> getAllDownloadBeans() {
        return this.allDownloadBeans;
    }

    public final int getApiType() {
        return this.apiType;
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    public final int getLang_id() {
        return this.lang_id;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<CommonMultiItemBean>> getListData() {
        return this.listData;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getPlugin_num() {
        return this.plugin_num;
    }

    @NotNull
    public final String getSearchType() {
        return this.searchType;
    }

    public final int getSearch_status() {
        return this.search_status;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setApiType(int i10) {
        this.apiType = i10;
    }

    public final void setKeyword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.keyword = str;
    }

    public final void setLang_id(int i10) {
        this.lang_id = i10;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setPlugin_num(int i10) {
        this.plugin_num = i10;
    }

    public final void setSearchType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.searchType = str;
    }

    public final void setSearch_status(int i10) {
        this.search_status = i10;
    }
}
