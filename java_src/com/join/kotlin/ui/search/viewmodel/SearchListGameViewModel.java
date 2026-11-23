package com.join.kotlin.ui.search.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.SearchGameApiService;
import com.join.kotlin.ui.search.model.SearchAdGridBean;
import com.join.kotlin.ui.search.model.SearchDataBean;
import com.join.kotlin.ui.search.model.SearchGameBean;
import com.join.kotlin.ui.search.model.SearchGroupListBean;
import com.join.kotlin.ui.search.model.SearchTitleBean;
import com.join.kotlin.ui.search.model.args.SearchArgs;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
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
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001d\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\u001a\u0010\u001c\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0011\"\u0004\b\u001e\u0010\u0013R\u001a\u0010\u001f\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0011\"\u0004\b!\u0010\u0013R\u001a\u0010\"\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0011\"\u0004\b$\u0010\u0013R*\u0010%\u001a\u0012\u0012\u0004\u0012\u00020\f0&j\b\u0012\u0004\u0012\u00020\f`'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u00060"}, d2 = {"Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "getListData", "page", "", "getPage", "()I", "setPage", "(I)V", "keyword", "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "gameId", "getGameId", "setGameId", "plugin_num", "getPlugin_num", "setPlugin_num", "lang_id", "getLang_id", "setLang_id", "search_status", "getSearch_status", "setSearch_status", "allDownloadBeans", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getAllDownloadBeans", "()Ljava/util/ArrayList;", "setAllDownloadBeans", "(Ljava/util/ArrayList;)V", "gameSearchList", "", "refresh", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSearchListGameViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchListGameViewModel.kt\ncom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,300:1\n1878#2,3:301\n1878#2,3:304\n1878#2,3:307\n1878#2,3:310\n1878#2,3:313\n1878#2,3:316\n*S KotlinDebug\n*F\n+ 1 SearchListGameViewModel.kt\ncom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel\n*L\n56#1:301,3\n89#1:304,3\n110#1:307,3\n197#1:310,3\n233#1:313,3\n263#1:316,3\n*E\n"})
public final class SearchListGameViewModel extends BaseViewModel {
    private int lang_id;
    private int plugin_num;
    private int search_status;

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("搜索");

    @NotNull
    private final MutableLiveData<ListDataUiState<CommonMultiItemBean>> listData = new MutableLiveData<>();
    private int page = 1;

    @NotNull
    private String keyword = "";

    @NotNull
    private String gameId = "";

    @NotNull
    private ArrayList<CommonMultiItemBean> allDownloadBeans = new ArrayList<>();

    /* JADX INFO: renamed from: com.join.kotlin.ui.search.viewmodel.SearchListGameViewModel$gameSearchList$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/search/model/SearchDataBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.search.viewmodel.SearchListGameViewModel$gameSearchList$1", f = "SearchListGameViewModel.kt", i = {}, l = {44, 46}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<SearchDataBean>>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ SearchListGameViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, SearchListGameViewModel searchListGameViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = searchListGameViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$refresh, this.this$0, continuation);
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
            RequestModel requestModel = new RequestModel();
            if (this.$refresh) {
                this.this$0.setPage(1);
                this.this$0.getAllDownloadBeans().clear();
            }
            requestModel.setArgs(new SearchArgs(this.this$0.getKeyword(), t2.i(this.this$0.getGameId()), this.this$0.getPlugin_num(), this.this$0.getLang_id(), this.this$0.getPage(), 0, 32, null));
            requestModel.setDefault(MApplication.f3182z);
            if (this.$refresh) {
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
            SearchGameApiService searchGameApiService2 = ApiServiceFactorKt.getSearchGameApiService();
            RequestModel<SearchArgs> requestModelMakeSign2 = requestModel.makeSign();
            Intrinsics.checkNotNullExpressionValue(requestModelMakeSign2, "makeSign(...)");
            this.label = 2;
            obj = searchGameApiService2.gameSearchListMore(requestModelMakeSign2, this);
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
    /* JADX WARN: Code duplicated, block: B:137:0x04d8  */
    public static final Unit gameSearchList$lambda$8(boolean z10, SearchListGameViewModel searchListGameViewModel, SearchDataBean searchDataBean) {
        List<CommonGameInfoBean> list;
        List<CommonGameInfoBean> list2;
        List<CommonGameInfoBean> list3;
        List<CommonGameInfoBean> list4;
        List<CommonGameInfoBean> list5;
        List<CommonGameInfoBean> list6;
        List<CommonGameInfoBean> list7;
        if (z10) {
            searchListGameViewModel.search_status = searchDataBean != null ? searchDataBean.getSearch_status() : 0;
        }
        searchListGameViewModel.page++;
        ArrayList arrayList = new ArrayList();
        if (searchDataBean != null) {
            SearchGroupListBean precise_list = searchDataBean.getPrecise_list();
            if (precise_list != null) {
                int i10 = 0;
                for (Object obj : precise_list.getList()) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    CommonMultiItemBean commonMultiItemBean = new CommonMultiItemBean(1, new SearchGameBean((CommonGameInfoBean) obj, null, null, false, 0, searchDataBean.getWord_info(), 30, null));
                    commonMultiItemBean.getExtBean().setFrom("10200").setPosition(i11 + "_1").setChatId("searchResultGame").setKeyword(searchListGameViewModel.keyword).setReMarks(searchListGameViewModel.keyword);
                    arrayList.add(commonMultiItemBean);
                    searchListGameViewModel.allDownloadBeans.add(commonMultiItemBean);
                    i10 = i11;
                }
                if (searchDataBean.getPrecise_list().getMore()) {
                    arrayList.add(new CommonMultiItemBean(3, new SearchTitleBean(searchListGameViewModel.keyword, "", true)));
                }
            }
            SearchGroupListBean rec_line_ad_list = searchDataBean.getRec_line_ad_list();
            if ((rec_line_ad_list == null || (list7 = rec_line_ad_list.getList()) == null || !(list7.isEmpty() ^ true)) ? false : true) {
                int ad_position = searchDataBean.getRec_line_ad_list().getAd_position();
                SearchGroupListBean precise_list2 = searchDataBean.getPrecise_list();
                if (ad_position < ((precise_list2 == null || (list6 = precise_list2.getList()) == null) ? 0 : list6.size())) {
                    int ad_position2 = searchDataBean.getRec_line_ad_list().getAd_position();
                    int i12 = 0;
                    for (Object obj2 : searchDataBean.getRec_line_ad_list().getList()) {
                        int i13 = i12 + 1;
                        if (i12 < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) obj2;
                        CommonMultiItemBean commonMultiItemBean2 = new CommonMultiItemBean(1, new SearchGameBean(commonGameInfoBean, null, null, false, 1, null, 46, null));
                        commonMultiItemBean2.getExtBean().setFrom("10200").setPosition(i13 + "_1").setTypeCode("AD").setResourceId(commonGameInfoBean.getGameId());
                        arrayList.add(ad_position2, commonMultiItemBean2);
                        ad_position2++;
                        searchListGameViewModel.allDownloadBeans.add(commonMultiItemBean2);
                        i12 = i13;
                    }
                } else {
                    int i14 = 0;
                    for (Object obj3 : searchDataBean.getRec_line_ad_list().getList()) {
                        int i15 = i14 + 1;
                        if (i14 < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        CommonGameInfoBean commonGameInfoBean2 = (CommonGameInfoBean) obj3;
                        CommonMultiItemBean commonMultiItemBean3 = new CommonMultiItemBean(1, new SearchGameBean(commonGameInfoBean2, null, null, false, 1, null, 46, null));
                        commonMultiItemBean3.getExtBean().setFrom("10200").setPosition(i15 + "_1").setTypeCode("AD").setResourceId(commonGameInfoBean2.getGameId());
                        arrayList.add(commonMultiItemBean3);
                        searchListGameViewModel.allDownloadBeans.add(commonMultiItemBean3);
                        i14 = i15;
                    }
                }
            }
            SearchGroupListBean rec_grid_ad_list = searchDataBean.getRec_grid_ad_list();
            if ((rec_grid_ad_list == null || (list5 = rec_grid_ad_list.getList()) == null || !(list5.isEmpty() ^ true)) ? false : true) {
                int ad_position3 = searchDataBean.getRec_grid_ad_list().getAd_position();
                SearchGroupListBean precise_list3 = searchDataBean.getPrecise_list();
                if (ad_position3 < ((precise_list3 == null || (list4 = precise_list3.getList()) == null) ? 0 : list4.size())) {
                    int ad_position4 = searchDataBean.getRec_grid_ad_list().getAd_position();
                    if (t2.i(searchDataBean.getRec_grid_ad_list().getTitle())) {
                        arrayList.add(ad_position4, new CommonMultiItemBean(0, new SearchTitleBean(searchDataBean.getRec_grid_ad_list().getTitle(), "AD_SEARCH", searchDataBean.getRec_grid_ad_list().getMore())));
                    }
                    arrayList.add(ad_position4 + 1, new CommonMultiItemBean(2, new SearchAdGridBean(searchDataBean.getRec_grid_ad_list().getList())));
                } else {
                    if (t2.i(searchDataBean.getRec_grid_ad_list().getTitle())) {
                        arrayList.add(new CommonMultiItemBean(0, new SearchTitleBean(searchDataBean.getRec_grid_ad_list().getTitle(), "AD_SEARCH", searchDataBean.getRec_grid_ad_list().getMore())));
                    }
                    arrayList.add(new CommonMultiItemBean(2, new SearchAdGridBean(searchDataBean.getRec_grid_ad_list().getList())));
                }
            }
            SearchGroupListBean gf_game_list = searchDataBean.getGf_game_list();
            if ((gf_game_list == null || (list3 = gf_game_list.getList()) == null || !(list3.isEmpty() ^ true)) ? false : true) {
                if (t2.i(searchDataBean.getGf_game_list().getTitle())) {
                    CommonMultiItemBean commonMultiItemBean4 = new CommonMultiItemBean(0, new SearchTitleBean(searchDataBean.getGf_game_list().getTitle(), "GF_SEARCH", searchDataBean.getGf_game_list().getMore()));
                    commonMultiItemBean4.getExtBean().setFrom("10203").setTypeCode("btnMore").setSopName(searchDataBean.getGf_game_list().getTitle());
                    arrayList.add(commonMultiItemBean4);
                }
                int i16 = 0;
                for (Object obj4 : searchDataBean.getGf_game_list().getList()) {
                    int i17 = i16 + 1;
                    if (i16 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    CommonGameInfoBean commonGameInfoBean3 = (CommonGameInfoBean) obj4;
                    CommonMultiItemBean commonMultiItemBean5 = new CommonMultiItemBean(1, new SearchGameBean(commonGameInfoBean3, null, null, false, 0, null, 62, null));
                    commonMultiItemBean5.getExtBean().setFrom("10203").setPosition(i17 + "_1").setResourceId(commonGameInfoBean3.getGameId());
                    arrayList.add(commonMultiItemBean5);
                    searchListGameViewModel.allDownloadBeans.add(commonMultiItemBean5);
                    i16 = i17;
                }
            }
            SearchGroupListBean tag_game_list = searchDataBean.getTag_game_list();
            if ((tag_game_list == null || (list2 = tag_game_list.getList()) == null || !(list2.isEmpty() ^ true)) ? false : true) {
                if (t2.i(searchDataBean.getTag_game_list().getTitle())) {
                    CommonMultiItemBean commonMultiItemBean6 = new CommonMultiItemBean(0, new SearchTitleBean(searchDataBean.getTag_game_list().getTitle(), "TAG_SEARCH", searchDataBean.getTag_game_list().getMore()));
                    commonMultiItemBean6.getExtBean().setFrom("10204").setTypeCode("btnMore").setSopName(searchDataBean.getTag_game_list().getTitle());
                    arrayList.add(commonMultiItemBean6);
                }
                int i18 = 0;
                for (Object obj5 : searchDataBean.getTag_game_list().getList()) {
                    int i19 = i18 + 1;
                    if (i18 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    CommonGameInfoBean commonGameInfoBean4 = (CommonGameInfoBean) obj5;
                    CommonMultiItemBean commonMultiItemBean7 = new CommonMultiItemBean(1, new SearchGameBean(commonGameInfoBean4, null, null, false, 0, searchDataBean.getWord_info(), 30, null));
                    commonMultiItemBean7.getExtBean().setFrom("10204").setPosition(i19 + "_1").setResourceId(commonGameInfoBean4.getGameId());
                    arrayList.add(commonMultiItemBean7);
                    searchListGameViewModel.allDownloadBeans.add(commonMultiItemBean7);
                    i18 = i19;
                }
            }
            SearchGroupListBean recommend_game_list = searchDataBean.getRecommend_game_list();
            if ((recommend_game_list == null || (list = recommend_game_list.getList()) == null || !(list.isEmpty() ^ true)) ? false : true) {
                if (t2.i(searchDataBean.getRecommend_game_list().getTitle())) {
                    arrayList.add(new CommonMultiItemBean(0, new SearchTitleBean(searchDataBean.getRecommend_game_list().getTitle(), "RECOMMEND_SEARCH", searchDataBean.getRecommend_game_list().getMore())));
                }
                int i20 = 0;
                for (Object obj6 : searchDataBean.getRecommend_game_list().getList()) {
                    int i21 = i20 + 1;
                    if (i20 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    CommonGameInfoBean commonGameInfoBean5 = (CommonGameInfoBean) obj6;
                    CommonMultiItemBean commonMultiItemBean8 = new CommonMultiItemBean(1, new SearchGameBean(commonGameInfoBean5, null, null, false, 0, searchDataBean.getWord_info(), 30, null));
                    commonMultiItemBean8.getExtBean().setFrom("10205").setPosition(i21 + "_1").setResourceId(commonGameInfoBean5.getGameId());
                    arrayList.add(commonMultiItemBean8);
                    searchListGameViewModel.allDownloadBeans.add(commonMultiItemBean8);
                    i20 = i21;
                }
            }
        }
        searchListGameViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, arrayList.isEmpty(), !arrayList.isEmpty(), z10 && arrayList.isEmpty(), arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit gameSearchList$lambda$9(boolean z10, SearchListGameViewModel searchListGameViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        searchListGameViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    public final void gameSearchList(final boolean refresh) {
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(refresh, this, null), new Function1() { // from class: com.join.kotlin.ui.search.viewmodel.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchListGameViewModel.gameSearchList$lambda$8(refresh, this, (SearchDataBean) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.search.viewmodel.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchListGameViewModel.gameSearchList$lambda$9(refresh, this, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @NotNull
    public final ArrayList<CommonMultiItemBean> getAllDownloadBeans() {
        return this.allDownloadBeans;
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
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

    public final int getSearch_status() {
        return this.search_status;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setAllDownloadBeans(@NotNull ArrayList<CommonMultiItemBean> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.allDownloadBeans = arrayList;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
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

    public final void setSearch_status(int i10) {
        this.search_status = i10;
    }
}
