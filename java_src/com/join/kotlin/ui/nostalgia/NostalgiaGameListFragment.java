package com.join.kotlin.ui.nostalgia;

import android.os.Bundle;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.un;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmDbFragment;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.nostalgia.adapter.NostalgiaGameGridAdapter;
import com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.j0;
import com.join.mgps.callbacks.q;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 >2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001>B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\b\u0010.\u001a\u00020+H\u0016J\b\u0010/\u001a\u00020+H\u0016J\u000e\u00100\u001a\u00020+2\u0006\u00101\u001a\u00020\u0018J\b\u00102\u001a\u00020+H\u0002J\b\u00103\u001a\u00020+H\u0002J\b\u00104\u001a\u00020+H\u0002J\b\u00105\u001a\u00020+H\u0002J\b\u00107\u001a\u00020+H\u0002J\u0010\u00108\u001a\u00020+2\u0006\u00109\u001a\u00020:H\u0007J\b\u0010;\u001a\u00020+H\u0016J\u0010\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020\u0015H\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u000e\u00106\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006?"}, d2 = {"Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;", "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentNostalgiaGamePageBinding;", "Lcom/join/mgps/callbacks/OnPageVisibleChanged;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "mAdapter", "Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;", "getMAdapter", "()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "allDownloadBeans", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CommonGameInfoBean;", "Lkotlin/collections/ArrayList;", "mFirstVisiblePosition", "", "mLastVisibleIndex", "scrolling", "", "pageVisible", "pageIndex", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "getParentExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setParentExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "pageExtBean", "getPageExtBean", "setPageExtBean", "sopNo", "", "getSopNo", "()Ljava/lang/String;", "setSopNo", "(Ljava/lang/String;)V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "createObserver", "lazyLoadData", "loadData", "refresh", "syncAllDownloadBeans", "updateDownStateList", "updateItemPartly", "updateProgressPartly", "isExposuring", "expGame", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "onDestroy", "onPageVisible", "position", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNostalgiaGameListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NostalgiaGameListFragment.kt\ncom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,303:1\n1869#2,2:304\n167#3,2:306\n182#3,4:308\n*S KotlinDebug\n*F\n+ 1 NostalgiaGameListFragment.kt\ncom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment\n*L\n159#1:304,2\n247#1:306,2\n247#1:308,4\n*E\n"})
public final class NostalgiaGameListFragment extends BaseVmDbFragment<NostalgiaGameViewModel, un> implements q {

    @NotNull
    private static final String ARG_NOSTALGIA_TYPE = "nostalgia_type";

    @NotNull
    private static final String ARG_PRELOAD_GAMES = "preload_games";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String TAG = "NostalgiaGameListFragment";
    private boolean isExposuring;
    private com.kingja.loadsir.core.b<Object> loadSir;
    private int mFirstVisiblePosition;
    private int mLastVisibleIndex;

    @NotNull
    private ExtBean pageExtBean;
    private boolean pageVisible;

    @Nullable
    private ExtBean parentExtBean;
    private boolean scrolling;

    @NotNull
    private String sopNo;

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.nostalgia.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return NostalgiaGameListFragment.mAdapter_delegate$lambda$0();
        }
    });

    @NotNull
    private final ArrayList<CommonGameInfoBean> allDownloadBeans = new ArrayList<>();
    private int pageIndex = -1;

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JB\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u001c\b\u0002\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\fj\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;", "", "<init>", "()V", "TAG", "", "ARG_NOSTALGIA_TYPE", "ARG_PRELOAD_GAMES", "newInstance", "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;", "nostalgiaType", "preloadGames", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CommonGameInfoBean;", "Lkotlin/collections/ArrayList;", "pageIndex", "", "extBean", "Lcom/join/mgps/dto/ExtBean;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ NostalgiaGameListFragment newInstance$default(Companion companion, String str, ArrayList arrayList, int i10, ExtBean extBean, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                arrayList = null;
            }
            if ((i11 & 4) != 0) {
                i10 = 0;
            }
            return companion.newInstance(str, arrayList, i10, extBean);
        }

        @JvmStatic
        @JvmOverloads
        @NotNull
        public final NostalgiaGameListFragment newInstance(@NotNull String nostalgiaType, @Nullable ExtBean extBean) {
            Intrinsics.checkNotNullParameter(nostalgiaType, "nostalgiaType");
            return newInstance$default(this, nostalgiaType, null, 0, extBean, 6, null);
        }

        private Companion() {
        }

        @JvmStatic
        @JvmOverloads
        @NotNull
        public final NostalgiaGameListFragment newInstance(@NotNull String nostalgiaType, @Nullable ArrayList<CommonGameInfoBean> arrayList, @Nullable ExtBean extBean) {
            Intrinsics.checkNotNullParameter(nostalgiaType, "nostalgiaType");
            return newInstance$default(this, nostalgiaType, arrayList, 0, extBean, 4, null);
        }

        @JvmStatic
        @JvmOverloads
        @NotNull
        public final NostalgiaGameListFragment newInstance(@NotNull String nostalgiaType, @Nullable ArrayList<CommonGameInfoBean> preloadGames, int pageIndex, @Nullable ExtBean extBean) {
            Intrinsics.checkNotNullParameter(nostalgiaType, "nostalgiaType");
            NostalgiaGameListFragment nostalgiaGameListFragment = new NostalgiaGameListFragment();
            Bundle bundle = new Bundle();
            bundle.putString(NostalgiaGameListFragment.ARG_NOSTALGIA_TYPE, nostalgiaType);
            bundle.putSerializable("extBean", extBean);
            bundle.putInt("pageIndex", pageIndex);
            if (!(preloadGames == null || preloadGames.isEmpty())) {
                bundle.putSerializable(NostalgiaGameListFragment.ARG_PRELOAD_GAMES, preloadGames);
            }
            nostalgiaGameListFragment.setArguments(bundle);
            return nostalgiaGameListFragment;
        }
    }

    public NostalgiaGameListFragment() {
        ExtBean chatId = new ExtBean().setChatId("nostalgiaGame");
        Intrinsics.checkNotNullExpressionValue(chatId, "setChatId(...)");
        this.pageExtBean = chatId;
        this.sopNo = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$4(NostalgiaGameListFragment nostalgiaGameListFragment, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        NostalgiaGameGridAdapter mAdapter = nostalgiaGameListFragment.getMAdapter();
        com.kingja.loadsir.core.b<Object> bVar = nostalgiaGameListFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView xrvList = nostalgiaGameListFragment.getMDatabind().f45780c;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.loadListData$default(listDataUiState, mAdapter, bVar, xrvList, null, 16, null);
        nostalgiaGameListFragment.syncAllDownloadBeans();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void expGame() {
        try {
            if (this.pageVisible && !this.isExposuring) {
                this.isExposuring = true;
                int lastVisiblePosition = getMDatabind().f45780c.getLastVisiblePosition();
                if (lastVisiblePosition >= 0) {
                    int i10 = 0;
                    while (true) {
                        CommonGameInfoBean commonGameInfoBean = this.allDownloadBeans.get(i10);
                        Intrinsics.checkNotNullExpressionValue(commonGameInfoBean, "get(...)");
                        CommonGameInfoBean commonGameInfoBean2 = commonGameInfoBean;
                        if (!commonGameInfoBean2.getExposure()) {
                            commonGameInfoBean2.setExposure(true);
                            t.l(getContext()).R1(Event.expGameAdPage, commonGameInfoBean2.getExtBean().buildScene().toExt());
                        }
                        if (i10 == lastVisiblePosition) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
        } catch (Exception unused) {
        } finally {
            this.isExposuring = false;
        }
    }

    private final NostalgiaGameGridAdapter getMAdapter() {
        return (NostalgiaGameGridAdapter) this.mAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initView$lambda$2(NostalgiaGameListFragment nostalgiaGameListFragment) {
        com.kingja.loadsir.core.b<Object> bVar = nostalgiaGameListFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        ((NostalgiaGameViewModel) nostalgiaGameListFragment.getMViewModel()).nostalgiaGameList(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NostalgiaGameGridAdapter mAdapter_delegate$lambda$0() {
        return new NostalgiaGameGridAdapter();
    }

    @JvmStatic
    @JvmOverloads
    @NotNull
    public static final NostalgiaGameListFragment newInstance(@NotNull String str, @Nullable ExtBean extBean) {
        return INSTANCE.newInstance(str, extBean);
    }

    private final void syncAllDownloadBeans() {
        this.allDownloadBeans.clear();
        this.allDownloadBeans.addAll(getMAdapter().getItems());
        updateDownStateList();
        getMHandler().postDelayed(new Runnable() { // from class: com.join.kotlin.ui.nostalgia.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f49326b.expGame();
            }
        }, 800L);
    }

    private final void updateDownStateList() {
        for (CommonGameInfoBean commonGameInfoBean : this.allDownloadBeans) {
            commonGameInfoBean.getExtBean().setParent(this.pageExtBean).setSopNo(this.sopNo);
            DlTaskManager.INSTANCE.updateDownloadTask(commonGameInfoBean);
        }
    }

    private final void updateItemPartly() {
        int iMin;
        int i10;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        if (this.mFirstVisiblePosition < 0 || (i10 = this.mFirstVisiblePosition) > (iMin = Math.min(this.mLastVisibleIndex + 1, getMAdapter().getItemCount() - 1))) {
            return;
        }
        while (true) {
            try {
                CommonGameInfoBean item = getMAdapter().getItem(i10);
                if (item != null && DlTaskManager.INSTANCE.getTask(item) != null && (viewHolderFindViewHolderForAdapterPosition = getMDatabind().f45780c.findViewHolderForAdapterPosition(i10)) != null) {
                    getMAdapter().updateGameUI(viewHolderFindViewHolderForAdapterPosition, item);
                }
            } catch (Exception unused) {
            }
            if (i10 == iMin) {
                return;
            } else {
                i10++;
            }
        }
    }

    private final void updateProgressPartly() {
        int iMin;
        int i10;
        DownloadTask downloadTask;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        DownloadNormalView downloadNormalView;
        DownloadTask downloadTaskG;
        if (this.mFirstVisiblePosition < 0 || (i10 = this.mFirstVisiblePosition) > (iMin = Math.min(this.mLastVisibleIndex + 1, getMAdapter().getItemCount() - 1))) {
            return;
        }
        while (true) {
            try {
                CommonGameInfoBean item = getMAdapter().getItem(i10);
                if (item != null && (downloadTask = item.getDownloadTask()) != null && (viewHolderFindViewHolderForAdapterPosition = getMDatabind().f45780c.findViewHolderForAdapterPosition(i10)) != null && (downloadNormalView = (DownloadNormalView) viewHolderFindViewHolderForAdapterPosition.itemView.findViewById(R.id.dv_view)) != null && (downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val())) != null && (downloadTaskG.getStatus() == 2 || downloadTaskG.getStatus() == 12)) {
                    downloadNormalView.s(downloadTaskG.getProgress());
                }
            } catch (Exception unused) {
            }
            if (i10 == iMin) {
                return;
            } else {
                i10++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        ((NostalgiaGameViewModel) getMViewModel()).getListData().observe(this, new NostalgiaGameListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.nostalgia.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NostalgiaGameListFragment.createObserver$lambda$4(this.f49325b, (ListDataUiState) obj);
            }
        }));
    }

    @NotNull
    public final ExtBean getPageExtBean() {
        return this.pageExtBean;
    }

    @Nullable
    public final ExtBean getParentExtBean() {
        return this.parentExtBean;
    }

    @NotNull
    public final String getSopNo() {
        return this.sopNo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        String str;
        getMDatabind().n((NostalgiaGameViewModel) getMViewModel());
        Bundle arguments = getArguments();
        this.parentExtBean = (ExtBean) (arguments != null ? arguments.getSerializable("extBean") : null);
        Bundle arguments2 = getArguments();
        this.pageIndex = arguments2 != null ? arguments2.getInt("pageIndex") : -1;
        this.pageExtBean.setParent(this.parentExtBean);
        Bundle arguments3 = getArguments();
        if (arguments3 != null) {
            NostalgiaGameViewModel nostalgiaGameViewModel = (NostalgiaGameViewModel) getMViewModel();
            String string = arguments3.getString(ARG_NOSTALGIA_TYPE);
            if (string == null) {
                string = "";
            }
            nostalgiaGameViewModel.setNostalgiaTabType(string);
        }
        int i10 = this.pageIndex;
        if (i10 == 0) {
            str = "80";
        } else if (i10 == 1) {
            str = "90";
        } else {
            str = i10 == 2 ? com.sigmob.sdk.archives.tar.e.V : "10";
        }
        this.sopNo = str;
        this.pageExtBean.setSopNo(str);
        j0.a().d(this);
        FrameLayout clContainer = getMDatabind().f45779b;
        Intrinsics.checkNotNullExpressionValue(clContainer, "clContainer");
        this.loadSir = CustomViewExtKt.loadServiceInit(clContainer, new Function0() { // from class: com.join.kotlin.ui.nostalgia.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return NostalgiaGameListFragment.initView$lambda$2(this.f49327b);
            }
        });
        XQuickRecyclerView xQuickRecyclerView = getMDatabind().f45780c;
        xQuickRecyclerView.setLayoutManager(new GridLayoutManager(requireContext(), 2));
        xQuickRecyclerView.setAdapter(getMAdapter());
        xQuickRecyclerView.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.ui.nostalgia.NostalgiaGameListFragment$initView$3$1
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                this.this$0.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                this.this$0.loadData(true);
            }
        });
        xQuickRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.nostalgia.NostalgiaGameListFragment$initView$3$2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                this.this$0.scrolling = newState != 0;
                if (newState == 0) {
                    this.this$0.expGame();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
                int[] iArrM = com.join.android.app.component.video.h.m(recyclerView);
                this.this$0.mFirstVisiblePosition = iArrM[0];
                this.this$0.mLastVisibleIndex = iArrM[1];
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
        Bundle arguments = getArguments();
        com.kingja.loadsir.core.b<Object> bVar = null;
        Serializable serializable = arguments != null ? arguments.getSerializable(ARG_PRELOAD_GAMES) : null;
        ArrayList arrayList = serializable instanceof ArrayList ? (ArrayList) serializable : null;
        if (!(arrayList == null || arrayList.isEmpty())) {
            ((NostalgiaGameViewModel) getMViewModel()).applyPreloadedFirstPage(new ArrayList<>(arrayList));
            return;
        }
        com.kingja.loadsir.core.b<Object> bVar2 = this.loadSir;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
        } else {
            bVar = bVar2;
        }
        CustomViewExtKt.showLoading(bVar);
        ((NostalgiaGameViewModel) getMViewModel()).nostalgiaGameList(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        ((NostalgiaGameViewModel) getMViewModel()).nostalgiaGameList(refresh);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmDbFragment, com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        if (downloadTaskEvent.c() == 8 && !this.scrolling) {
            updateProgressPartly();
        }
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        int iC = downloadTaskEvent.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
            }
        }
        updateDownStateList();
        updateItemPartly();
    }

    @Override // com.join.mgps.callbacks.q
    public void onPageVisible(int position) {
        ExtBean extBean;
        boolean z10 = position == this.pageIndex;
        this.pageVisible = z10;
        if (!z10 || (extBean = this.pageExtBean) == null || extBean.hasExplore()) {
            return;
        }
        t.l(requireContext()).R1(Event.commonExp, this.pageExtBean.copy().setTypeCode("page").buildScene().toExt());
        expGame();
        this.pageExtBean.setHasExplore(true);
    }

    public final void setPageExtBean(@NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "<set-?>");
        this.pageExtBean = extBean;
    }

    public final void setParentExtBean(@Nullable ExtBean extBean) {
        this.parentExtBean = extBean;
    }

    public final void setSopNo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sopNo = str;
    }

    @JvmStatic
    @JvmOverloads
    @NotNull
    public static final NostalgiaGameListFragment newInstance(@NotNull String str, @Nullable ArrayList<CommonGameInfoBean> arrayList, int i10, @Nullable ExtBean extBean) {
        return INSTANCE.newInstance(str, arrayList, i10, extBean);
    }

    @JvmStatic
    @JvmOverloads
    @NotNull
    public static final NostalgiaGameListFragment newInstance(@NotNull String str, @Nullable ArrayList<CommonGameInfoBean> arrayList, @Nullable ExtBean extBean) {
        return INSTANCE.newInstance(str, arrayList, extBean);
    }
}
