package com.join.kotlin.ui.netgame;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.databinding.ho0;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmVbFragment;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.netgame.adapter.NetGameCategoryGameAdapter;
import com.join.kotlin.ui.netgame.viewmodel.NetGameCategoryInnerViewModel;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.j0;
import com.join.mgps.callbacks.q;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\"B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u0018\u001a\u00020\u0014H\u0016J\b\u0010\u0019\u001a\u00020\u0014H\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\rH\u0016J\b\u0010\u001c\u001a\u00020\u0014H\u0002J\b\u0010\u001d\u001a\u00020\u0014H\u0016J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 H\u0007J\b\u0010!\u001a\u00020\u0014H\u0002R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;", "Lcom/join/kotlin/base/fragment/BaseVmVbFragment;", "Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/NetGameCategoryInnerFragmentBinding;", "Lcom/join/mgps/callbacks/OnPageVisibleChanged;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "adapter", "Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;", NetGameCategoryInnerFragment.ARG_PAGE_INDEX, "", "pageVisible", "", "isExposuring", "pageExtBean", "Lcom/join/mgps/dto/ExtBean;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "initView", "lazyLoadData", "createObserver", "onPageVisible", "position", "expVisibleGames", "onDestroyView", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateProgressPartly", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNetGameCategoryInnerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetGameCategoryInnerFragment.kt\ncom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,222:1\n167#2,2:223\n182#2:225\n185#2:228\n1869#3,2:226\n*S KotlinDebug\n*F\n+ 1 NetGameCategoryInnerFragment.kt\ncom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment\n*L\n148#1:223,2\n148#1:225\n148#1:228\n149#1:226,2\n*E\n"})
public final class NetGameCategoryInnerFragment extends BaseVmVbFragment<NetGameCategoryInnerViewModel, ho0> implements q {

    @NotNull
    private static final String ARG_FROM_HOME = "_from_home";

    @NotNull
    private static final String ARG_PAGE_INDEX = "pageIndex";

    @NotNull
    private static final String ARG_TAB_TITLE = "tab_title";

    @NotNull
    private static final String ARG_TAB_TYPE = "tab_type";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private NetGameCategoryGameAdapter adapter;
    private boolean isExposuring;
    private com.kingja.loadsir.core.b<Object> loadSir;
    private ExtBean pageExtBean;
    private int pageIndex = -1;
    private boolean pageVisible;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;", "", "<init>", "()V", "ARG_TAB_TYPE", "", "ARG_TAB_TITLE", "ARG_PAGE_INDEX", "ARG_FROM_HOME", "categoryClickExtBean", "Lcom/join/mgps/dto/ExtBean;", "categoryName", "categoryPageExpExtBean", "newInstance", "Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;", "tabType", "", "tabTitle", NetGameCategoryInnerFragment.ARG_PAGE_INDEX, "fromHome", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ExtBean categoryClickExtBean(String categoryName) {
            ExtBean sopName = new ExtBean().setFirstModule("home").setSecondModule("netGame").setChatId("categoryPage").setSopName(categoryName);
            Intrinsics.checkNotNullExpressionValue(sopName, "setSopName(...)");
            return sopName;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ExtBean categoryPageExpExtBean(String categoryName) {
            ExtBean from = categoryClickExtBean(categoryName).setTypeCode("page").setFrom("10020");
            Intrinsics.checkNotNullExpressionValue(from, "setFrom(...)");
            return from;
        }

        public static /* synthetic */ NetGameCategoryInnerFragment newInstance$default(Companion companion, int i10, String str, int i11, boolean z10, int i12, Object obj) {
            if ((i12 & 8) != 0) {
                z10 = true;
            }
            return companion.newInstance(i10, str, i11, z10);
        }

        @NotNull
        public final NetGameCategoryInnerFragment newInstance(int tabType, @NotNull String tabTitle, int pageIndex, boolean fromHome) {
            Intrinsics.checkNotNullParameter(tabTitle, "tabTitle");
            NetGameCategoryInnerFragment netGameCategoryInnerFragment = new NetGameCategoryInnerFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(NetGameCategoryInnerFragment.ARG_TAB_TYPE, tabType);
            bundle.putString(NetGameCategoryInnerFragment.ARG_TAB_TITLE, tabTitle);
            bundle.putInt(NetGameCategoryInnerFragment.ARG_PAGE_INDEX, pageIndex);
            bundle.putBoolean(NetGameCategoryInnerFragment.ARG_FROM_HOME, fromHome);
            netGameCategoryInnerFragment.setArguments(bundle);
            return netGameCategoryInnerFragment;
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$2(final NetGameCategoryInnerFragment netGameCategoryInnerFragment, ListDataUiState listDataUiState) {
        NetGameCategoryGameAdapter netGameCategoryGameAdapter;
        com.kingja.loadsir.core.b<Object> bVar;
        Intrinsics.checkNotNull(listDataUiState);
        NetGameCategoryGameAdapter netGameCategoryGameAdapter2 = netGameCategoryInnerFragment.adapter;
        if (netGameCategoryGameAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            netGameCategoryGameAdapter = null;
        } else {
            netGameCategoryGameAdapter = netGameCategoryGameAdapter2;
        }
        com.kingja.loadsir.core.b<Object> bVar2 = netGameCategoryInnerFragment.loadSir;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        } else {
            bVar = bVar2;
        }
        XQuickRecyclerView recycleView = netGameCategoryInnerFragment.getMViewBind().f39446c;
        Intrinsics.checkNotNullExpressionValue(recycleView, "recycleView");
        CustomViewExtKt.loadListData$default(listDataUiState, netGameCategoryGameAdapter, bVar, recycleView, null, 16, null);
        if (listDataUiState.isSuccess()) {
            ArrayList listData = listDataUiState.getListData();
            if (!(listData == null || listData.isEmpty()) && netGameCategoryInnerFragment.pageVisible) {
                netGameCategoryInnerFragment.getMViewBind().f39446c.postDelayed(new Runnable() { // from class: com.join.kotlin.ui.netgame.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f49306b.expVisibleGames();
                    }
                }, 300L);
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void expVisibleGames() {
        ExtBean extBean;
        if (!isAdded() || !this.pageVisible || this.isExposuring || ((NetGameCategoryInnerViewModel) getMViewModel()).getAllGameList().isEmpty()) {
            return;
        }
        this.isExposuring = true;
        try {
            try {
                int iCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(getMViewBind().f39446c.getFirstVisiblePosition(), 0);
                int lastVisiblePosition = getMViewBind().f39446c.getLastVisiblePosition();
                if (lastVisiblePosition == -1) {
                    return;
                }
                int iCoerceAtMost = RangesKt___RangesKt.coerceAtMost(lastVisiblePosition, ((NetGameCategoryInnerViewModel) getMViewModel()).getAllGameList().size() - 1);
                if (iCoerceAtLeast <= iCoerceAtMost) {
                    while (true) {
                        CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) CollectionsKt___CollectionsKt.getOrNull(((NetGameCategoryInnerViewModel) getMViewModel()).getAllGameList(), iCoerceAtLeast);
                        if (commonGameInfoBean != null && (extBean = commonGameInfoBean.getExtBean()) != null && !extBean.hasExplore()) {
                            extBean.setHasExplore(true);
                            t.l(requireContext()).R1(Event.commonExp, extBean.copy().setTypeCode("game").buildScene().toExt());
                        }
                        if (iCoerceAtLeast == iCoerceAtMost) {
                            break;
                        } else {
                            iCoerceAtLeast++;
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.isExposuring = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initView$lambda$0(NetGameCategoryInnerFragment netGameCategoryInnerFragment) {
        ((NetGameCategoryInnerViewModel) netGameCategoryInnerFragment.getMViewModel()).setPageCount(1);
        com.kingja.loadsir.core.b<Object> bVar = netGameCategoryInnerFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        ((NetGameCategoryInnerViewModel) netGameCategoryInnerFragment.getMViewModel()).loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void updateProgressPartly() {
        DownloadTask task;
        int status;
        if (((NetGameCategoryInnerViewModel) getMViewModel()).getAllGameList().isEmpty()) {
            return;
        }
        try {
            RecyclerView.LayoutManager layoutManager = getMViewBind().f39446c.getLayoutManager();
            LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            if (linearLayoutManager == null) {
                return;
            }
            XQuickRecyclerView recycleView = getMViewBind().f39446c;
            Intrinsics.checkNotNullExpressionValue(recycleView, "recycleView");
            int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            if (iFindFirstVisibleItemPosition > iFindLastVisibleItemPosition) {
                return;
            }
            while (true) {
                NetGameCategoryGameAdapter netGameCategoryGameAdapter = this.adapter;
                if (netGameCategoryGameAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    netGameCategoryGameAdapter = null;
                }
                CommonGameInfoBean item = netGameCategoryGameAdapter.getItem(iFindFirstVisibleItemPosition);
                if (item != null && (task = DlTaskManager.INSTANCE.getTask(item)) != null && ((status = task.getStatus()) == 1 || status == 2 || status == 3 || status == 10 || status == 12)) {
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recycleView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                    v2.c cVar = viewHolderFindViewHolderForAdapterPosition instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition : null;
                    if (cVar != null) {
                        NetGameCategoryGameAdapter netGameCategoryGameAdapter2 = this.adapter;
                        if (netGameCategoryGameAdapter2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            netGameCategoryGameAdapter2 = null;
                        }
                        netGameCategoryGameAdapter2.updateDownloadProgress(cVar, item);
                    }
                }
                if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                    return;
                } else {
                    iFindFirstVisibleItemPosition++;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        ((NetGameCategoryInnerViewModel) getMViewModel()).getListData().observe(getViewLifecycleOwner(), new NetGameCategoryInnerFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.netgame.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NetGameCategoryInnerFragment.createObserver$lambda$2(this.f49307b, (ListDataUiState) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        NetGameCategoryInnerViewModel netGameCategoryInnerViewModel = (NetGameCategoryInnerViewModel) getMViewModel();
        Bundle arguments = getArguments();
        netGameCategoryInnerViewModel.setTabType(arguments != null ? arguments.getInt(ARG_TAB_TYPE, 1) : 1);
        Bundle arguments2 = getArguments();
        com.kingja.loadsir.core.b<Object> bVar = null;
        String string = arguments2 != null ? arguments2.getString(ARG_TAB_TITLE) : null;
        if (string == null) {
            string = "";
        }
        ((NetGameCategoryInnerViewModel) getMViewModel()).setCategoryName(string);
        NetGameCategoryInnerViewModel netGameCategoryInnerViewModel2 = (NetGameCategoryInnerViewModel) getMViewModel();
        Bundle arguments3 = getArguments();
        netGameCategoryInnerViewModel2.setFromHome(arguments3 != null ? arguments3.getBoolean(ARG_FROM_HOME, true) : true);
        Bundle arguments4 = getArguments();
        this.pageIndex = arguments4 != null ? arguments4.getInt(ARG_PAGE_INDEX, -1) : -1;
        this.pageExtBean = INSTANCE.categoryClickExtBean(string);
        getMViewBind().f39446c.setLayoutManager(new LinearLayoutManager(getContext()));
        this.adapter = new NetGameCategoryGameAdapter();
        XQuickRecyclerView xQuickRecyclerView = getMViewBind().f39446c;
        NetGameCategoryGameAdapter netGameCategoryGameAdapter = this.adapter;
        if (netGameCategoryGameAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            netGameCategoryGameAdapter = null;
        }
        xQuickRecyclerView.setAdapter(netGameCategoryGameAdapter);
        XQuickRecyclerView recycleView = getMViewBind().f39446c;
        Intrinsics.checkNotNullExpressionValue(recycleView, "recycleView");
        this.loadSir = CustomViewExtKt.loadServiceInit(recycleView, new Function0() { // from class: com.join.kotlin.ui.netgame.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return NetGameCategoryInnerFragment.initView$lambda$0(this.f49304b);
            }
        });
        getMViewBind().f39446c.setPullRefreshEnabled(true);
        getMViewBind().f39446c.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.ui.netgame.NetGameCategoryInnerFragment.initView.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                ((NetGameCategoryInnerViewModel) NetGameCategoryInnerFragment.this.getMViewModel()).loadData(false);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                ((NetGameCategoryInnerViewModel) NetGameCategoryInnerFragment.this.getMViewModel()).loadData(true);
            }
        });
        getMViewBind().f39446c.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.netgame.NetGameCategoryInnerFragment.initView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    NetGameCategoryInnerFragment.this.expVisibleGames();
                }
            }
        });
        ((NetGameCategoryInnerViewModel) getMViewModel()).setPageCount(1);
        com.kingja.loadsir.core.b<Object> bVar2 = this.loadSir;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
        } else {
            bVar = bVar2;
        }
        CustomViewExtKt.showLoading(bVar);
        ((NetGameCategoryInnerViewModel) getMViewModel()).loadData(true);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        j0.a().d(this);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmVbFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        j0.a().e(this);
        super.onDestroyView();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    /* JADX WARN: Code duplicated, block: B:21:0x003a A[LOOP:0: B:19:0x0034->B:21:0x003a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:24:0x004a  */
    /* JADX WARN: Multi-variable type inference failed */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Iterator<T> it2;
        NetGameCategoryGameAdapter netGameCategoryGameAdapter;
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
                    it2 = ((NetGameCategoryInnerViewModel) getMViewModel()).getAllGameList().iterator();
                    while (it2.hasNext()) {
                        DlTaskManager.INSTANCE.updateDownloadTask((CommonGameInfoBean) it2.next());
                    }
                    netGameCategoryGameAdapter = this.adapter;
                    if (netGameCategoryGameAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        netGameCategoryGameAdapter = null;
                    }
                    netGameCategoryGameAdapter.notifyDataSetChanged();
                    break;
            }
        } else {
            it2 = ((NetGameCategoryInnerViewModel) getMViewModel()).getAllGameList().iterator();
            while (it2.hasNext()) {
                DlTaskManager.INSTANCE.updateDownloadTask((CommonGameInfoBean) it2.next());
            }
            netGameCategoryGameAdapter = this.adapter;
            if (netGameCategoryGameAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                netGameCategoryGameAdapter = null;
            }
            netGameCategoryGameAdapter.notifyDataSetChanged();
        }
        if (downloadTaskEvent.c() == 8) {
            updateProgressPartly();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.mgps.callbacks.q
    public void onPageVisible(int position) {
        boolean z10 = position == this.pageIndex;
        this.pageVisible = z10;
        if (z10) {
            ExtBean extBean = this.pageExtBean;
            ExtBean extBean2 = null;
            if (extBean == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageExtBean");
                extBean = null;
            }
            if (extBean.hasExplore()) {
                return;
            }
            t.l(requireContext()).R1(Event.commonExp, INSTANCE.categoryPageExpExtBean(((NetGameCategoryInnerViewModel) getMViewModel()).getCategoryName()).buildScene().toExt());
            ExtBean extBean3 = this.pageExtBean;
            if (extBean3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageExtBean");
            } else {
                extBean2 = extBean3;
            }
            extBean2.setHasExplore(true);
            expVisibleGames();
        }
    }
}
