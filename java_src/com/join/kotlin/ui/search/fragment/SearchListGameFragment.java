package com.join.kotlin.ui.search.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.jo;
import com.join.android.app.mgsim.wufun.databinding.x50;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmDbFragment;
import com.join.kotlin.base.impl.GInfo;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.search.activity.CollectionSearchListGameActivity;
import com.join.kotlin.ui.search.adapter.SearchListGameAdapter;
import com.join.kotlin.ui.search.model.SearchTitleBean;
import com.join.kotlin.ui.search.viewmodel.SearchListGameViewModel;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.j0;
import com.join.mgps.activity.SearchListActivity1;
import com.join.mgps.callbacks.n;
import com.join.mgps.dialog.o0;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0006\u0010$\u001a\u00020 J\u0010\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020'H\u0007J \u0010(\u001a\u00020 2\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*2\u0006\u0010,\u001a\u00020\u001aH\u0002J\b\u0010-\u001a\u00020 H\u0002J\b\u0010.\u001a\u00020 H\u0002J\b\u0010/\u001a\u00020 H\u0016J\b\u00100\u001a\u00020 H\u0016J\b\u00101\u001a\u00020 H\u0016J\b\u00102\u001a\u00020 H\u0016J\u000e\u00103\u001a\u00020 2\u0006\u00104\u001a\u00020\u001aJ\b\u00105\u001a\u00020 H\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u000e\u0010#\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;", "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentSearchListGameBinding;", "Lcom/join/mgps/callbacks/ISearchGameListener;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "mAdapter", "Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;", "getMAdapter", "()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "mFirstVisiblePosition", "", "getMFirstVisiblePosition", "()I", "setMFirstVisiblePosition", "(I)V", "mLastVisibleIndex", "getMLastVisibleIndex", "setMLastVisibleIndex", "SCROLLING", "", "getSCROLLING", "()Z", "setSCROLLING", "(Z)V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "isExposure", "exposureItem", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateDownStateList", "beanList", "", "Lcom/join/mgps/dto/CommonMultiItemBean;", "notify", "updatePartly", "updateProgressPartly", "onDestroyView", "createObserver", "onExploreItem", "lazyLoadData", "loadData", "refresh", "loading", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSearchListGameFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchListGameFragment.kt\ncom/join/kotlin/ui/search/fragment/SearchListGameFragment\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,333:1\n167#2,2:334\n182#2,4:336\n*S KotlinDebug\n*F\n+ 1 SearchListGameFragment.kt\ncom/join/kotlin/ui/search/fragment/SearchListGameFragment\n*L\n229#1:334,2\n229#1:336,4\n*E\n"})
public final class SearchListGameFragment extends BaseVmDbFragment<SearchListGameViewModel, jo> implements n {
    private boolean SCROLLING;
    private boolean isExposure;
    private com.kingja.loadsir.core.b<Object> loadSir;

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.search.fragment.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchListGameFragment.mAdapter_delegate$lambda$0();
        }
    });
    private int mFirstVisiblePosition;
    private int mLastVisibleIndex;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$11(SearchListGameFragment searchListGameFragment, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        SearchListGameAdapter mAdapter = searchListGameFragment.getMAdapter();
        com.kingja.loadsir.core.b<Object> bVar = searchListGameFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView xrvList = searchListGameFragment.getMDatabind().f40324c;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.loadListData$default(listDataUiState, mAdapter, bVar, xrvList, null, 16, null);
        searchListGameFragment.updateDownStateList(((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getAllDownloadBeans(), false);
        searchListGameFragment.delayItemExplore(300L);
        return Unit.INSTANCE;
    }

    private final SearchListGameAdapter getMAdapter() {
        return (SearchListGameAdapter) this.mAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$2(SearchListGameFragment searchListGameFragment) {
        searchListGameFragment.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$5(SearchListGameFragment searchListGameFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        CommonMultiItemBean commonMultiItemBean = (CommonMultiItemBean) adapter.getItem(i10);
        if (commonMultiItemBean != null) {
            if (commonMultiItemBean.isGame()) {
                ExtBean chatId = commonMultiItemBean.getExtBean().setChatId("searchResultGame");
                ExtBean extBean = commonMultiItemBean.getExtBean();
                ExtBean keyword = chatId.setFrom(String.valueOf(extBean != null ? extBean.getFrom() : null)).setKeyword(((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getKeyword());
                GInfo gInfo = commonMultiItemBean.getGInfo();
                ExtBean resourceId = keyword.setResourceId(gInfo != null ? gInfo.getGameId() : null);
                ExtBean extBean2 = commonMultiItemBean.getExtBean();
                ExtBean typeCode = resourceId.setTypeCode(String.valueOf(extBean2 != null ? extBean2.getTypeCode() : null));
                ExtBean extBean3 = commonMultiItemBean.getExtBean();
                t.l(searchListGameFragment.requireContext()).R1(Event.commonClick, typeCode.setPosition(String.valueOf(extBean3 != null ? extBean3.getPosition() : null)).setReMarks(((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getKeyword()).buildScene().toExt());
                IntentUtil.getInstance().intentActivity(searchListGameFragment.requireContext(), commonMultiItemBean.getIntentDataBean());
                return;
            }
            if (commonMultiItemBean.getItemType() == 3) {
                ExtBean extBeanBuildScene = new ExtBean().setKeyword(((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getKeyword()).setChatId("searchResultGame").buildScene();
                Intent intent = new Intent(searchListGameFragment.requireContext(), (Class<?>) CollectionSearchListGameActivity.class);
                intent.putExtra("_title", "更多\"" + ((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getKeyword() + "\"游戏");
                intent.putExtra("_keyword", ((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getKeyword());
                intent.putExtra("_api_type", 1);
                intent.putExtra("plugin_num", ((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getPlugin_num());
                intent.putExtra("lang_id", ((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getLang_id());
                intent.putExtra("search_status", ((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getSearch_status());
                intent.putExtra("extBean", extBeanBuildScene);
                searchListGameFragment.startActivity(intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$6(SearchListGameFragment searchListGameFragment, View view) {
        new o0(searchListGameFragment.requireContext()).a(((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getKeyword());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$8(SearchListGameFragment searchListGameFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        CommonMultiItemBean commonMultiItemBean = (CommonMultiItemBean) adapter.getItem(i10);
        if (commonMultiItemBean == null || commonMultiItemBean.getItemType() != 0) {
            return;
        }
        Object data = commonMultiItemBean.getData();
        Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
        SearchTitleBean searchTitleBean = (SearchTitleBean) data;
        if (searchTitleBean.getMore()) {
            ExtBean chatId = new ExtBean().setKeyword(((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getKeyword()).setChatId("searchResultGame");
            ExtBean extBean = commonMultiItemBean.getExtBean();
            ExtBean from = chatId.setFrom(String.valueOf(extBean != null ? extBean.getFrom() : null));
            ExtBean extBean2 = commonMultiItemBean.getExtBean();
            ExtBean typeCode = from.setTypeCode(String.valueOf(extBean2 != null ? extBean2.getTypeCode() : null));
            ExtBean extBean3 = commonMultiItemBean.getExtBean();
            ExtBean extBeanBuildScene = typeCode.setSopName(String.valueOf(extBean3 != null ? extBean3.getSopName() : null)).buildScene();
            Intent intent = new Intent(searchListGameFragment.requireContext(), (Class<?>) CollectionSearchListGameActivity.class);
            intent.putExtra("_title", searchTitleBean.getTitle());
            intent.putExtra("_keyword", ((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getKeyword());
            intent.putExtra("_search_type", searchTitleBean.getSearch_type());
            intent.putExtra("_api_type", 0);
            intent.putExtra("plugin_num", ((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getPlugin_num());
            intent.putExtra("lang_id", ((SearchListGameViewModel) searchListGameFragment.getMViewModel()).getLang_id());
            intent.putExtra("extBean", extBeanBuildScene);
            searchListGameFragment.startActivity(intent);
            t.l(searchListGameFragment.requireContext()).R1(Event.commonClick, extBeanBuildScene.toExt());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchListGameAdapter mAdapter_delegate$lambda$0() {
        return new SearchListGameAdapter();
    }

    private final void updateDownStateList(List<? extends CommonMultiItemBean> beanList, boolean notify) {
        List<? extends CommonMultiItemBean> list = beanList;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (CommonMultiItemBean commonMultiItemBean : beanList) {
            DlTaskManager.INSTANCE.updateDownloadTask(commonMultiItemBean);
            commonMultiItemBean.update(notify);
        }
    }

    private final void updatePartly() {
        if (getMAdapter().getItems().isEmpty()) {
            return;
        }
        try {
            int i10 = this.mFirstVisiblePosition;
            int i11 = this.mLastVisibleIndex;
            if (i10 <= i11) {
                while (i10 < getMAdapter().getItems().size()) {
                    if (i10 >= 0) {
                        CommonMultiItemBean commonMultiItemBean = getMAdapter().getItems().get(i10);
                        if (commonMultiItemBean.getItemType() == 1) {
                            commonMultiItemBean.update(true);
                            RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = getMDatabind().f40324c.findViewHolderForLayoutPosition(i10);
                            v2.a<x50> aVar = viewHolderFindViewHolderForLayoutPosition instanceof v2.a ? (v2.a) viewHolderFindViewHolderForLayoutPosition : null;
                            if (aVar != null) {
                                getMAdapter().updateGameUI(aVar, commonMultiItemBean);
                            }
                        }
                    }
                    if (i10 == i11) {
                        return;
                    } else {
                        i10++;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void updateProgressPartly() {
        CommonMultiItemBean commonMultiItemBean;
        DownloadTask downloadTask;
        if (getMAdapter().getItems().isEmpty()) {
            return;
        }
        try {
            int i10 = this.mFirstVisiblePosition;
            int i11 = this.mLastVisibleIndex;
            if (i10 <= i11) {
                while (i10 < getMAdapter().getItems().size()) {
                    if (i10 >= 0 && (downloadTask = (commonMultiItemBean = getMAdapter().getItems().get(i10)).getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                        commonMultiItemBean.update(true);
                    }
                    if (i10 == i11) {
                        return;
                    } else {
                        i10++;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        ((SearchListGameViewModel) getMViewModel()).getListData().observe(this, new SearchListGameFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.search.fragment.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchListGameFragment.createObserver$lambda$11(this.f49350b, (ListDataUiState) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void exposureItem() {
        try {
            if (!this.isExposure) {
                this.isExposure = true;
                int i10 = this.mFirstVisiblePosition;
                int i11 = this.mLastVisibleIndex;
                if (i10 <= i11) {
                    while (true) {
                        CommonMultiItemBean item = getMAdapter().getItem(i10);
                        if (item != null && !item.getExposure()) {
                            if (item.hasGInfo()) {
                                ExtBean from = item.getExtBean().setChatId("searchResultGame").setFrom(item.getExtBean().getFrom());
                                GInfo gInfo = item.getGInfo();
                                t.l(requireContext()).R1(Event.expGameAdPage, from.setResourceId(gInfo != null ? gInfo.getGameId() : null).setKeyword(((SearchListGameViewModel) getMViewModel()).getKeyword()).setTypeCode(item.getExtBean().getTypeCode()).setPosition(item.getExtBean().getPosition()).setReMarks(((SearchListGameViewModel) getMViewModel()).getKeyword()).buildScene().toExt());
                            }
                            item.setExposure(true);
                        }
                        if (i10 == i11) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
        } catch (Exception unused) {
        } finally {
            this.isExposure = false;
        }
    }

    public final int getMFirstVisiblePosition() {
        return this.mFirstVisiblePosition;
    }

    public final int getMLastVisibleIndex() {
        return this.mLastVisibleIndex;
    }

    public final boolean getSCROLLING() {
        return this.SCROLLING;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().n((SearchListGameViewModel) getMViewModel());
        j0.a().d(this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            ((SearchListGameViewModel) getMViewModel()).setKeyword(arguments.getString("keyword", ""));
            ((SearchListGameViewModel) getMViewModel()).setGameId(arguments.getString("game_id", ""));
        }
        XQuickRecyclerView xrvList = getMDatabind().f40324c;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        this.loadSir = CustomViewExtKt.loadServiceInit(xrvList, new Function0() { // from class: com.join.kotlin.ui.search.fragment.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SearchListGameFragment.initView$lambda$2(this.f49346b);
            }
        });
        final XQuickRecyclerView xQuickRecyclerView = getMDatabind().f40324c;
        xQuickRecyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        xQuickRecyclerView.setAdapter(getMAdapter());
        xQuickRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.search.fragment.SearchListGameFragment$initView$3$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    this.this$0.setMFirstVisiblePosition(h.o(recyclerView));
                    this.this$0.setMLastVisibleIndex(h.q(recyclerView));
                    this.this$0.exposureItem();
                }
                this.this$0.setSCROLLING(xQuickRecyclerView.getScrollState() != 0);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
            }
        });
        xQuickRecyclerView.setPullRefreshEnabled(false);
        xQuickRecyclerView.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.ui.search.fragment.SearchListGameFragment$initView$3$2
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                this.this$0.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                this.this$0.loadData(true);
            }
        });
        getMAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.ui.search.fragment.b
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                SearchListGameFragment.initView$lambda$5(this.f49347a, baseQuickAdapter, view, i10);
            }
        });
        if (new PrefDef_(requireContext()).sch_feed_back_switch().d().booleanValue()) {
            getMDatabind().f40323b.setVisibility(0);
        } else {
            getMDatabind().f40323b.setVisibility(8);
        }
        getMDatabind().f40323b.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.search.fragment.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchListGameFragment.initView$lambda$6(this.f49348b, view);
            }
        });
        getMAdapter().addOnItemChildClickListener(R.id.cl_more, new BaseQuickAdapter.b() { // from class: com.join.kotlin.ui.search.fragment.d
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.b
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                SearchListGameFragment.initView$lambda$8(this.f49349a, baseQuickAdapter, view, i10);
            }
        });
        getMAdapter().setKeyword(((SearchListGameViewModel) getMViewModel()).getKeyword());
        t.l(requireContext()).R1(Event.commonExp, new ExtBean().setChatId("searchResultGame").setReMarks(((SearchListGameViewModel) getMViewModel()).getKeyword()).setKeyword(((SearchListGameViewModel) getMViewModel()).getKeyword()).buildScene().toExt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
        com.kingja.loadsir.core.b<Object> bVar = this.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        SearchListGameViewModel searchListGameViewModel = (SearchListGameViewModel) getMViewModel();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNull(fragmentActivityRequireActivity, "null cannot be cast to non-null type com.join.mgps.activity.SearchListActivity1");
        searchListGameViewModel.setPlugin_num(((SearchListActivity1) fragmentActivityRequireActivity).getCurrentPluginNum());
        SearchListGameViewModel searchListGameViewModel2 = (SearchListGameViewModel) getMViewModel();
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.checkNotNull(fragmentActivityRequireActivity2, "null cannot be cast to non-null type com.join.mgps.activity.SearchListActivity1");
        searchListGameViewModel2.setLang_id(((SearchListActivity1) fragmentActivityRequireActivity2).getCurrentLangId());
        loadData(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        ((SearchListGameViewModel) getMViewModel()).gameSearchList(refresh);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.mgps.callbacks.n
    public void loading() {
        SearchListGameViewModel searchListGameViewModel = (SearchListGameViewModel) getMViewModel();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNull(fragmentActivityRequireActivity, "null cannot be cast to non-null type com.join.mgps.activity.SearchListActivity1");
        searchListGameViewModel.setPlugin_num(((SearchListActivity1) fragmentActivityRequireActivity).getCurrentPluginNum());
        SearchListGameViewModel searchListGameViewModel2 = (SearchListGameViewModel) getMViewModel();
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.checkNotNull(fragmentActivityRequireActivity2, "null cannot be cast to non-null type com.join.mgps.activity.SearchListActivity1");
        searchListGameViewModel2.setLang_id(((SearchListActivity1) fragmentActivityRequireActivity2).getCurrentLangId());
        loadData(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        j0.a().e(this);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    /* JADX WARN: Multi-variable type inference failed */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        int iC = downloadTaskEvent.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    updateDownStateList(((SearchListGameViewModel) getMViewModel()).getAllDownloadBeans(), true);
                    updatePartly();
                    break;
            }
        } else {
            updateDownStateList(((SearchListGameViewModel) getMViewModel()).getAllDownloadBeans(), true);
            updatePartly();
        }
        if (downloadTaskEvent.c() != 8 || this.SCROLLING) {
            return;
        }
        updateProgressPartly();
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void onExploreItem() {
        super.onExploreItem();
        this.mFirstVisiblePosition = h.o(getMDatabind().f40324c);
        this.mLastVisibleIndex = h.q(getMDatabind().f40324c);
        exposureItem();
    }

    public final void setMFirstVisiblePosition(int i10) {
        this.mFirstVisiblePosition = i10;
    }

    public final void setMLastVisibleIndex(int i10) {
        this.mLastVisibleIndex = i10;
    }

    public final void setSCROLLING(boolean z10) {
        this.SCROLLING = z10;
    }
}
