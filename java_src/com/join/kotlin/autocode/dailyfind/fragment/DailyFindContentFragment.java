package com.join.kotlin.autocode.dailyfind.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.kl;
import com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter;
import com.join.kotlin.autocode.dailyfind.adapter.DailyGameAdapter;
import com.join.kotlin.autocode.dailyfind.adapter.DailyGameHorizontalAdapter;
import com.join.kotlin.autocode.dailyfind.adapter.DailyRankAdapter;
import com.join.kotlin.autocode.dailyfind.adapter.DailyRankGameAdapter;
import com.join.kotlin.autocode.dailyfind.adapter.DateStripAdapter;
import com.join.kotlin.autocode.dailyfind.model.DailyDiscoveryGameBean;
import com.join.kotlin.autocode.dailyfind.model.DailyGuessGameBean;
import com.join.kotlin.autocode.dailyfind.model.DailyRankItemBean;
import com.join.kotlin.autocode.dailyfind.model.DailyRankListItemBean;
import com.join.kotlin.autocode.dailyfind.model.DailyTodayGameBean;
import com.join.kotlin.autocode.dailyfind.model.DateItem;
import com.join.kotlin.autocode.dailyfind.utils.DateStripHelper;
import com.join.kotlin.autocode.dailyfind.viewmodel.DailyFindViewModel;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmVbFragment;
import com.join.kotlin.base.impl.BaseDownloadable;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.j0;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*H\u0002J\b\u0010,\u001a\u00020%H\u0002J\b\u0010-\u001a\u00020%H\u0002J\u0006\u0010.\u001a\u00020%J\b\u0010/\u001a\u00020%H\u0016J\b\u00100\u001a\u00020%H\u0016J\u0010\u00101\u001a\u00020%2\u0006\u00102\u001a\u00020\u0017H\u0002J\b\u00103\u001a\u00020%H\u0016J\b\u00104\u001a\u00020%H\u0016J\u0010\u00105\u001a\u00020%2\u0006\u00106\u001a\u000207H\u0007J\u0018\u00108\u001a\u00020%2\b\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020\u0017J\u0012\u0010<\u001a\u00020%2\b\u00109\u001a\u0004\u0018\u00010:H\u0002J\u0012\u0010=\u001a\u00020%2\b\u00109\u001a\u0004\u0018\u00010:H\u0002J\u0012\u0010>\u001a\u00020%2\b\u00109\u001a\u0004\u0018\u00010:H\u0002J\u0012\u0010?\u001a\u00020%2\b\u00109\u001a\u0004\u0018\u00010:H\u0002J\b\u0010@\u001a\u00020%H\u0002J\b\u0010A\u001a\u00020%H\u0002J\b\u0010B\u001a\u00020%H\u0002J\b\u0010C\u001a\u00020%H\u0002J\u0010\u0010D\u001a\u00020!2\u0006\u0010E\u001a\u00020FH\u0002J\u0018\u0010G\u001a\u00020%2\u0006\u0010H\u001a\u00020I2\u0006\u0010E\u001a\u00020FH\u0002J\u0010\u0010J\u001a\u00020%2\u0006\u0010K\u001a\u00020!H\u0002J\b\u0010L\u001a\u00020%H\u0016R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006M"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;", "Lcom/join/kotlin/base/fragment/BaseVmVbFragment;", "Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentDailyFindContentBinding;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "pageAdapter", "Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;", "getPageAdapter", "()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;", "pageAdapter$delegate", "Lkotlin/Lazy;", "listLayoutManager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getListLayoutManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "listLayoutManager$delegate", "timeAdapter", "Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;", "todayIndex", "", "cellWidthPx", "timeItems", "", "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;", "getTimeItems", "()Ljava/util/List;", "lastVisibleIndex", "firstVisiblePosition", "SCROLLING", "", "videoHelper", "Lcom/join/android/app/component/video/RvListVideoHelper;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "expTimeStrip", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "isExploring", "expListPoint", "updateLeftSelection", "autoPlay", "onResume", "onPause", "scrollToCenterPosition", "position", "createObserver", "onDestroy", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateUI", "downloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "from", "receiveStart", "receiveDelete", "receiveSuccess", "receiveError", "notifyDataSetChanged", "updateDownStateList", "updateItemPartly", "updateProgressPartly", "shouldApplyDownloadProgress", "downInfo", "Lcom/join/kotlin/base/impl/Downloadable;", "applyProgressOnView", "holder", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "loadData", "refresh", "lazyLoadData", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDailyFindContentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindContentFragment.kt\ncom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,841:1\n360#2,7:842\n360#2,7:850\n1878#2,3:857\n1878#2,3:860\n1878#2,3:863\n1#3:849\n*S KotlinDebug\n*F\n+ 1 DailyFindContentFragment.kt\ncom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment\n*L\n121#1:842,7\n366#1:850,7\n742#1:857,3\n760#1:860,3\n785#1:863,3\n*E\n"})
public class DailyFindContentFragment extends BaseVmVbFragment<DailyFindViewModel, kl> {
    private boolean SCROLLING;
    private int cellWidthPx;
    private int firstVisiblePosition;
    private boolean isExploring;
    private int lastVisibleIndex;
    private com.kingja.loadsir.core.b<Object> loadSir;
    private DateStripAdapter timeAdapter;
    private int todayIndex;

    @Nullable
    private com.join.android.app.component.video.h videoHelper;

    /* JADX INFO: renamed from: pageAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy pageAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.autocode.dailyfind.fragment.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DailyFindContentFragment.pageAdapter_delegate$lambda$0(this.f48530b);
        }
    });

    /* JADX INFO: renamed from: listLayoutManager$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy listLayoutManager = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.autocode.dailyfind.fragment.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DailyFindContentFragment.listLayoutManager_delegate$lambda$1(this.f48531b);
        }
    });

    @NotNull
    private final List<DateItem> timeItems = DateStripHelper.buildDateItems$default(DateStripHelper.INSTANCE, 0, 1, null);

    private final void applyProgressOnView(v2.c cVar, Downloadable downloadable) {
        DownloadNormalView downloadNormalView;
        DownloadTask task = DlTaskManager.INSTANCE.getTask(downloadable);
        if (task == null || (downloadNormalView = (DownloadNormalView) cVar.b(R.id.dv_view)) == null) {
            return;
        }
        downloadNormalView.d(task);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void autoPlay$lambda$11(DailyFindContentFragment dailyFindContentFragment) {
        com.join.android.app.component.video.h hVar = dailyFindContentFragment.videoHelper;
        if (hVar != null) {
            Intrinsics.checkNotNull(hVar);
            hVar.f(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$14$lambda$13(final DailyFindContentFragment dailyFindContentFragment, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        DailyFindPageAdapter pageAdapter = dailyFindContentFragment.getPageAdapter();
        com.kingja.loadsir.core.b<Object> bVar = dailyFindContentFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView rvList = dailyFindContentFragment.getMViewBind().f40846g;
        Intrinsics.checkNotNullExpressionValue(rvList, "rvList");
        CustomViewExtKt.loadListData$default(listDataUiState, pageAdapter, bVar, rvList, null, 16, null);
        dailyFindContentFragment.updateDownStateList();
        if (listDataUiState.isRefresh()) {
            dailyFindContentFragment.getMViewBind().f40846g.postDelayed(new Runnable() { // from class: com.join.kotlin.autocode.dailyfind.fragment.e
                @Override // java.lang.Runnable
                public final void run() {
                    DailyFindContentFragment.createObserver$lambda$14$lambda$13$lambda$12(this.f48527b);
                }
            }, 100L);
            dailyFindContentFragment.autoPlay();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createObserver$lambda$14$lambda$13$lambda$12(DailyFindContentFragment dailyFindContentFragment) {
        dailyFindContentFragment.getListLayoutManager().scrollToPositionWithOffset(0, 0);
        dailyFindContentFragment.expListPoint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void expListPoint() {
        int iMin;
        GamedetialModleFourBean game;
        View viewFindViewByPosition;
        RecyclerView recyclerView;
        DailyRankAdapter dailyRankAdapter;
        try {
            try {
                if (!this.isExploring) {
                    this.isExploring = true;
                    int i10 = this.firstVisiblePosition;
                    if (i10 >= 0 && i10 <= (iMin = Math.min(this.lastVisibleIndex + 1, getPageAdapter().getItemCount() - 1))) {
                        while (true) {
                            CommonMultiItemBean item = getPageAdapter().getItem(i10);
                            if (item != null) {
                                int itemType = item.getItemType();
                                if (itemType == 1) {
                                    try {
                                        DailyDiscoveryGameBean dailyDiscoveryGameBean = (DailyDiscoveryGameBean) item.getData();
                                        if ((dailyDiscoveryGameBean == null || (game = dailyDiscoveryGameBean.getGame()) == null || game.getExposure()) ? false : true) {
                                            t.l(requireContext()).R1(Event.commonExp, dailyDiscoveryGameBean.getGame().getExtBean().buildScene().toExt());
                                            dailyDiscoveryGameBean.getGame().setExposure(true);
                                        }
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                } else if (itemType == 2) {
                                    Object data = item.getData();
                                    Intrinsics.checkNotNull(data, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.model.DailyTodayGameBean");
                                    List<CommonGameInfoBean> items = ((DailyTodayGameBean) data).getItems();
                                    if (items != null) {
                                        for (int i11 = 0; i11 < items.size(); i11++) {
                                            CommonGameInfoBean commonGameInfoBean = items.get(i11);
                                            if (!commonGameInfoBean.getExtBean().hasExplore()) {
                                                t.l(requireContext()).R1(Event.expGameAdPage, commonGameInfoBean.getExtBean().buildScene().toExt());
                                                commonGameInfoBean.getExtBean().setHasExplore(true);
                                            }
                                        }
                                    }
                                } else if (itemType == 3) {
                                    try {
                                        RecyclerView.LayoutManager layoutManager = getMViewBind().f40846g.getLayoutManager();
                                        if (layoutManager != null && (viewFindViewByPosition = layoutManager.findViewByPosition(i10)) != null && (recyclerView = (RecyclerView) ((ViewPager2) viewFindViewByPosition.findViewById(R.id.viewpager)).getChildAt(0)) != null && recyclerView.getLayoutManager() != null && (dailyRankAdapter = (DailyRankAdapter) recyclerView.getAdapter()) != null) {
                                            int itemCount = dailyRankAdapter.getItemCount();
                                            for (int i12 = 0; i12 < itemCount; i12++) {
                                                List<? extends CollectionBeanSub> item2 = dailyRankAdapter.getItem(0);
                                                CollectionBeanSub collectionBeanSub = item2 != null ? item2.get(i12) : null;
                                                if ((collectionBeanSub == null || collectionBeanSub.getExposure()) ? false : true) {
                                                    t.l(requireContext()).R1(Event.expGameAdPage, collectionBeanSub.getExtBean().buildScene().toExt());
                                                    collectionBeanSub.setExposure(true);
                                                }
                                            }
                                        }
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                    }
                                } else if (itemType == 4) {
                                    Object data2 = item.getData();
                                    Intrinsics.checkNotNull(data2, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.model.DailyGuessGameBean");
                                    List<CollectionBeanSub> curItems = ((DailyGuessGameBean) data2).getCurItems();
                                    if (curItems != null) {
                                        for (int i13 = 0; i13 < curItems.size(); i13++) {
                                            CollectionBeanSub collectionBeanSub2 = curItems.get(i13);
                                            if (!collectionBeanSub2.getExposure()) {
                                                t.l(requireContext()).R1(Event.expGameAdPage, collectionBeanSub2.getExtBean().buildScene().toExt());
                                                collectionBeanSub2.setExposure(true);
                                            }
                                        }
                                    }
                                }
                            }
                            if (i10 == iMin) {
                                break;
                            } else {
                                i10++;
                            }
                        }
                    }
                }
            } finally {
                this.isExploring = false;
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void expTimeStrip(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        RecyclerView.LayoutManager layoutManager2 = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager2 = layoutManager2 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager2 : null;
        int iFindLastVisibleItemPosition = linearLayoutManager2 != null ? linearLayoutManager2.findLastVisibleItemPosition() : 0;
        for (int iFindFirstVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findFirstVisibleItemPosition() : 0; iFindFirstVisibleItemPosition < iFindLastVisibleItemPosition; iFindFirstVisibleItemPosition++) {
            if (!this.timeItems.get(iFindFirstVisibleItemPosition).getExplore()) {
                t.l(requireContext()).R1(Event.commonExp, ((DailyFindViewModel) getMViewModel()).getPageExtBean().copy().setSopName("时间轴").setSopNo(this.timeItems.get(iFindFirstVisibleItemPosition).getDateStr()).buildScene().toExt());
                this.timeItems.get(iFindFirstVisibleItemPosition).setExplore(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayoutManager getListLayoutManager() {
        return (LinearLayoutManager) this.listLayoutManager.getValue();
    }

    private final DailyFindPageAdapter getPageAdapter() {
        return (DailyFindPageAdapter) this.pageAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$2(DailyFindContentFragment dailyFindContentFragment) {
        com.kingja.loadsir.core.b<Object> bVar = dailyFindContentFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        dailyFindContentFragment.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initView$lambda$5(DailyFindContentFragment dailyFindContentFragment, int i10, int i11, DateItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        t.l(dailyFindContentFragment.requireContext()).R1(Event.commonClick, ((DailyFindViewModel) dailyFindContentFragment.getMViewModel()).getPageExtBean().copy().setSopName("时间轴").setSopNo(dailyFindContentFragment.timeItems.get(i11).getDateStr()).buildScene().toExt());
        if (((DailyFindViewModel) dailyFindContentFragment.getMViewModel()).getLoading()) {
            return Unit.INSTANCE;
        }
        if (i10 == i11) {
            return Unit.INSTANCE;
        }
        DateItem dateItem = dailyFindContentFragment.timeItems.get(i11);
        com.kingja.loadsir.core.b<Object> bVar = null;
        DateStripAdapter dateStripAdapter = null;
        if (Intrinsics.areEqual(((DailyFindViewModel) dailyFindContentFragment.getMViewModel()).getStartDateStr(), dateItem.getDateStr()) && dateItem.isToday()) {
            DateStripAdapter dateStripAdapter2 = dailyFindContentFragment.timeAdapter;
            if (dateStripAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
                dateStripAdapter2 = null;
            }
            dateStripAdapter2.setSelectedIndex(dailyFindContentFragment.timeItems.size() - 1);
            DateStripAdapter dateStripAdapter3 = dailyFindContentFragment.timeAdapter;
            if (dateStripAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
                dateStripAdapter3 = null;
            }
            dateStripAdapter3.notifyItemChanged(dailyFindContentFragment.timeItems.size() - 1);
            DateStripAdapter dateStripAdapter4 = dailyFindContentFragment.timeAdapter;
            if (dateStripAdapter4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
            } else {
                dateStripAdapter = dateStripAdapter4;
            }
            dateStripAdapter.notifyItemChanged(i10);
            dailyFindContentFragment.scrollToCenterPosition(dailyFindContentFragment.timeItems.size() - 1);
            dailyFindContentFragment.getListLayoutManager().scrollToPositionWithOffset(0, 0);
            return Unit.INSTANCE;
        }
        DateStripAdapter dateStripAdapter5 = dailyFindContentFragment.timeAdapter;
        if (dateStripAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
            dateStripAdapter5 = null;
        }
        dateStripAdapter5.setSelectedIndex(i11);
        DateStripAdapter dateStripAdapter6 = dailyFindContentFragment.timeAdapter;
        if (dateStripAdapter6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
            dateStripAdapter6 = null;
        }
        dateStripAdapter6.notifyItemChanged(i11);
        DateStripAdapter dateStripAdapter7 = dailyFindContentFragment.timeAdapter;
        if (dateStripAdapter7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
            dateStripAdapter7 = null;
        }
        dateStripAdapter7.notifyItemChanged(i10);
        dailyFindContentFragment.scrollToCenterPosition(i11);
        com.kingja.loadsir.core.b<Object> bVar2 = dailyFindContentFragment.loadSir;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
        } else {
            bVar = bVar2;
        }
        CustomViewExtKt.showLoading(bVar);
        ((DailyFindViewModel) dailyFindContentFragment.getMViewModel()).getDailyDiscover(true, !item.isToday() ? 1 : 0, e0.D(item.getTimestamp(), "yyyy-MM-dd"));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$6(DailyFindContentFragment dailyFindContentFragment) {
        dailyFindContentFragment.scrollToCenterPosition(dailyFindContentFragment.todayIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$7(DailyFindContentFragment dailyFindContentFragment, View view) {
        dailyFindContentFragment.scrollToCenterPosition(dailyFindContentFragment.todayIndex);
        dailyFindContentFragment.getMViewBind().f40842c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lazyLoadData$lambda$27(DailyFindContentFragment dailyFindContentFragment) {
        RecyclerView dateStripRecycler = dailyFindContentFragment.getMViewBind().f40845f;
        Intrinsics.checkNotNullExpressionValue(dateStripRecycler, "dateStripRecycler");
        dailyFindContentFragment.expTimeStrip(dateStripRecycler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LinearLayoutManager listLayoutManager_delegate$lambda$1(DailyFindContentFragment dailyFindContentFragment) {
        return new LinearLayoutManager(dailyFindContentFragment.requireContext(), 1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        DateItem curClickDateItem = ((DailyFindViewModel) getMViewModel()).getCurClickDateItem();
        if (curClickDateItem == null) {
            curClickDateItem = (DateItem) CollectionsKt___CollectionsKt.lastOrNull((List) this.timeItems);
            if (curClickDateItem != null) {
                ((DailyFindViewModel) getMViewModel()).setCurClickDateItem(curClickDateItem);
            } else {
                curClickDateItem = null;
            }
            if (curClickDateItem == null) {
                return;
            }
        }
        ((DailyFindViewModel) getMViewModel()).getDailyDiscover(refresh, 0, e0.D(curClickDateItem.getTimestamp(), "yyyy-MM-dd"));
    }

    private final void notifyDataSetChanged() {
        updateItemPartly();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DailyFindPageAdapter pageAdapter_delegate$lambda$0(DailyFindContentFragment dailyFindContentFragment) {
        return new DailyFindPageAdapter(dailyFindContentFragment.videoHelper);
    }

    private final void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private final void receiveError(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private final void receiveStart(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private final void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private final void scrollToCenterPosition(int position) {
        int i10;
        int width = getMViewBind().f40845f.getWidth();
        if (width <= 0 || (i10 = this.cellWidthPx) <= 0) {
            return;
        }
        int i11 = (width / 2) - (i10 / 2);
        RecyclerView.LayoutManager layoutManager = getMViewBind().f40845f.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager != null) {
            linearLayoutManager.scrollToPositionWithOffset(position, i11);
        }
    }

    private final boolean shouldApplyDownloadProgress(Downloadable downInfo) {
        DownloadTask task = DlTaskManager.INSTANCE.getTask(downInfo);
        if (task == null) {
            return false;
        }
        int status = task.getStatus();
        return status == 1 || status == 2 || status == 3 || status == 10 || status == 12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void updateDownStateList() {
        Iterator<BaseDownloadable> it2 = ((DailyFindViewModel) getMViewModel()).getAllDownloadAppHomeBeans().iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private final void updateItemPartly() {
        View childAt;
        v2.c cVar;
        DailyGameAdapter dailyGameAdapter;
        View viewFindViewByPosition;
        RecyclerView recyclerView;
        DailyRankAdapter dailyRankAdapter;
        RecyclerView recyclerView2;
        DailyRankGameAdapter dailyRankGameAdapter;
        ArrayList<DailyRankListItemBean> rankListData;
        DailyRankListItemBean dailyRankListItemBean;
        ArrayList<CollectionBeanSub> game_list;
        View childAt2;
        v2.c cVar2;
        DailyGameHorizontalAdapter dailyGameHorizontalAdapter;
        int i10 = this.firstVisiblePosition;
        if (i10 < 0) {
            return;
        }
        int i11 = 1;
        int iMin = Math.min(this.lastVisibleIndex + 1, getPageAdapter().getItemCount() - 1);
        if (i10 > iMin) {
            return;
        }
        int i12 = i10;
        while (true) {
            CommonMultiItemBean item = getPageAdapter().getItem(i12);
            if (item != null) {
                int itemType = item.getItemType();
                if (itemType != i11) {
                    int i13 = 0;
                    if (itemType == 2) {
                        Object data = item.getData();
                        Intrinsics.checkNotNull(data, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.model.DailyTodayGameBean");
                        List<CommonGameInfoBean> items = ((DailyTodayGameBean) data).getItems();
                        if (items != null) {
                            while (i13 < items.size()) {
                                CommonGameInfoBean commonGameInfoBean = items.get(i13);
                                if (commonGameInfoBean.getDownloadTask() != null && (childAt = getMViewBind().f40846g.getChildAt(i12 - this.firstVisiblePosition)) != null && (cVar = (v2.c) getMViewBind().f40846g.getChildViewHolder(childAt)) != null) {
                                    try {
                                        View view = cVar.getView(R.id.rv_list);
                                        RecyclerView recyclerView3 = view instanceof RecyclerView ? (RecyclerView) view : null;
                                        if (recyclerView3 != null) {
                                            RecyclerView.LayoutManager layoutManager = recyclerView3.getLayoutManager();
                                            Intrinsics.checkNotNull(layoutManager);
                                            View viewFindViewByPosition2 = layoutManager.findViewByPosition(i13);
                                            if (viewFindViewByPosition2 != null) {
                                                RecyclerView.ViewHolder childViewHolder = recyclerView3.getChildViewHolder(viewFindViewByPosition2);
                                                if (childViewHolder instanceof v2.c) {
                                                    if (cVar.itemView.getTag() instanceof DailyGameAdapter) {
                                                        Object tag = cVar.itemView.getTag();
                                                        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.adapter.DailyGameAdapter");
                                                        dailyGameAdapter = (DailyGameAdapter) tag;
                                                    } else {
                                                        dailyGameAdapter = null;
                                                    }
                                                    if (dailyGameAdapter != null) {
                                                        dailyGameAdapter.updateGameUI((v2.c) childViewHolder, commonGameInfoBean);
                                                    }
                                                }
                                            }
                                        }
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                i13++;
                            }
                        }
                    } else if (itemType == 3) {
                        try {
                            DailyRankItemBean dailyRankItemBean = (DailyRankItemBean) item.getData();
                            RecyclerView.LayoutManager layoutManager2 = getMViewBind().f40846g.getLayoutManager();
                            if (layoutManager2 != null && (viewFindViewByPosition = layoutManager2.findViewByPosition(i12)) != null && (recyclerView = (RecyclerView) ((ViewPager2) viewFindViewByPosition.findViewById(R.id.viewpager)).getChildAt(0)) != null && recyclerView.getLayoutManager() != null && (dailyRankAdapter = (DailyRankAdapter) recyclerView.getAdapter()) != null) {
                                int itemCount = dailyRankAdapter.getItemCount();
                                for (int i14 = 0; i14 < itemCount; i14++) {
                                    RecyclerView.LayoutManager layoutManager3 = recyclerView.getLayoutManager();
                                    Intrinsics.checkNotNull(layoutManager3);
                                    View viewFindViewByPosition3 = layoutManager3.findViewByPosition(i14);
                                    if (viewFindViewByPosition3 != null && (recyclerView2 = (RecyclerView) viewFindViewByPosition3.findViewById(R.id.rv_list)) != null && recyclerView2.getLayoutManager() != null && (dailyRankGameAdapter = (DailyRankGameAdapter) recyclerView2.getAdapter()) != null) {
                                        int itemCount2 = dailyRankAdapter.getItemCount();
                                        for (int i15 = 0; i15 < itemCount2; i15++) {
                                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerView2.findViewHolderForAdapterPosition(i15);
                                            if (viewHolderFindViewHolderForAdapterPosition instanceof v2.c) {
                                                CollectionBeanSub collectionBeanSub = (dailyRankItemBean == null || (rankListData = dailyRankItemBean.getRankListData()) == null || (dailyRankListItemBean = rankListData.get(i14)) == null || (game_list = dailyRankListItemBean.getGame_list()) == null) ? null : game_list.get(i15);
                                                if (collectionBeanSub != null) {
                                                    dailyRankGameAdapter.updateGameUI((v2.c) viewHolderFindViewHolderForAdapterPosition, collectionBeanSub);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    } else if (itemType == 4) {
                        Object data2 = item.getData();
                        Intrinsics.checkNotNull(data2, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.model.DailyGuessGameBean");
                        List<CollectionBeanSub> curItems = ((DailyGuessGameBean) data2).getCurItems();
                        if (curItems != null) {
                            while (i13 < curItems.size()) {
                                CollectionBeanSub collectionBeanSub2 = curItems.get(i13);
                                if (collectionBeanSub2.getDownloadTask() != null && (childAt2 = getMViewBind().f40846g.getChildAt(i12 - this.firstVisiblePosition)) != null && (cVar2 = (v2.c) getMViewBind().f40846g.getChildViewHolder(childAt2)) != null) {
                                    try {
                                        View view2 = cVar2.getView(R.id.rv_list);
                                        RecyclerView recyclerView4 = view2 instanceof RecyclerView ? (RecyclerView) view2 : null;
                                        if (recyclerView4 != null) {
                                            RecyclerView.LayoutManager layoutManager4 = recyclerView4.getLayoutManager();
                                            Intrinsics.checkNotNull(layoutManager4);
                                            View viewFindViewByPosition4 = layoutManager4.findViewByPosition(i13);
                                            if (viewFindViewByPosition4 != null) {
                                                RecyclerView.ViewHolder childViewHolder2 = recyclerView4.getChildViewHolder(viewFindViewByPosition4);
                                                if (childViewHolder2 instanceof v2.c) {
                                                    if (cVar2.itemView.getTag() instanceof DailyGameHorizontalAdapter) {
                                                        Object tag2 = cVar2.itemView.getTag();
                                                        Intrinsics.checkNotNull(tag2, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.adapter.DailyGameHorizontalAdapter");
                                                        dailyGameHorizontalAdapter = (DailyGameHorizontalAdapter) tag2;
                                                    } else {
                                                        dailyGameHorizontalAdapter = null;
                                                    }
                                                    if (dailyGameHorizontalAdapter != null) {
                                                        dailyGameHorizontalAdapter.updateGameUI((v2.c) childViewHolder2, collectionBeanSub2);
                                                    }
                                                }
                                            }
                                        }
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                    }
                                }
                                i13++;
                            }
                        }
                    }
                } else {
                    try {
                        DailyDiscoveryGameBean dailyDiscoveryGameBean = (DailyDiscoveryGameBean) item.getData();
                        View childAt3 = getMViewBind().f40846g.getChildAt(i12 - this.firstVisiblePosition);
                        if (childAt3 != null) {
                            RecyclerView.ViewHolder childViewHolder3 = getMViewBind().f40846g.getChildViewHolder(childAt3);
                            if ((childViewHolder3 instanceof v2.c) && dailyDiscoveryGameBean != null && dailyDiscoveryGameBean.getGame().getDownloadTask() != null) {
                                getPageAdapter().updateDailyGameUI((v2.c) childViewHolder3, dailyDiscoveryGameBean.getGame());
                            }
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                }
            }
            if (i12 == iMin) {
                return;
            }
            i12++;
            i11 = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void updateLeftSelection() {
        int iFindFirstCompletelyVisibleItemPosition = getListLayoutManager().findFirstCompletelyVisibleItemPosition();
        if (iFindFirstCompletelyVisibleItemPosition == -1) {
            iFindFirstCompletelyVisibleItemPosition = getListLayoutManager().findFirstVisibleItemPosition();
        }
        if (iFindFirstCompletelyVisibleItemPosition != -1 && iFindFirstCompletelyVisibleItemPosition >= 0 && iFindFirstCompletelyVisibleItemPosition < ((DailyFindViewModel) getMViewModel()).getTimeLines().size()) {
            String str = ((DailyFindViewModel) getMViewModel()).getTimeLines().get(iFindFirstCompletelyVisibleItemPosition);
            Intrinsics.checkNotNullExpressionValue(str, "get(...)");
            String str2 = str;
            Iterator<DateItem> it2 = this.timeItems.iterator();
            int i10 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i10 = -1;
                    break;
                } else if (Intrinsics.areEqual(it2.next().getDateStr(), str2)) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 != -1) {
                DateStripAdapter dateStripAdapter = this.timeAdapter;
                DateStripAdapter dateStripAdapter2 = null;
                if (dateStripAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
                    dateStripAdapter = null;
                }
                if (i10 != dateStripAdapter.getSelectedIndex()) {
                    DateStripAdapter dateStripAdapter3 = this.timeAdapter;
                    if (dateStripAdapter3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
                        dateStripAdapter3 = null;
                    }
                    int selectedIndex = dateStripAdapter3.getSelectedIndex();
                    DateStripAdapter dateStripAdapter4 = this.timeAdapter;
                    if (dateStripAdapter4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
                        dateStripAdapter4 = null;
                    }
                    dateStripAdapter4.setSelectedIndex(i10);
                    DateStripAdapter dateStripAdapter5 = this.timeAdapter;
                    if (dateStripAdapter5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
                        dateStripAdapter5 = null;
                    }
                    dateStripAdapter5.notifyItemChanged(i10);
                    if (selectedIndex >= 0 && selectedIndex < this.timeItems.size()) {
                        DateStripAdapter dateStripAdapter6 = this.timeAdapter;
                        if (dateStripAdapter6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
                        } else {
                            dateStripAdapter2 = dateStripAdapter6;
                        }
                        dateStripAdapter2.notifyItemChanged(selectedIndex);
                    }
                    getMViewBind().f40846g.scrollTo(0, 0);
                    scrollToCenterPosition(i10);
                }
            }
        }
    }

    private final void updateProgressPartly() {
        GamedetialModleFourBean game;
        RecyclerView recyclerView;
        ViewPager2 viewPager2;
        View viewFindViewByPosition;
        RecyclerView recyclerView2;
        DailyRankListItemBean dailyRankListItemBean;
        DailyGuessGameBean dailyGuessGameBean;
        RecyclerView recyclerView3;
        XQuickRecyclerView rvList = ((kl) getMViewBind()).f40846g;
        Intrinsics.checkNotNullExpressionValue(rvList, "rvList");
        RecyclerView.LayoutManager layoutManager = rvList.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null) {
            return;
        }
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition == -1 || iFindFirstVisibleItemPosition > iFindLastVisibleItemPosition) {
            return;
        }
        while (true) {
            CommonMultiItemBean item = getPageAdapter().getItem(iFindFirstVisibleItemPosition);
            if (item != null) {
                try {
                    int itemType = item.getItemType();
                    if (itemType != 1) {
                        int i10 = 0;
                        if (itemType == 2) {
                            DailyTodayGameBean dailyTodayGameBean = (DailyTodayGameBean) item.getData();
                            if (dailyTodayGameBean != null) {
                                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = rvList.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                                v2.c cVar = viewHolderFindViewHolderForAdapterPosition instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition : null;
                                if (cVar != null && (recyclerView = (RecyclerView) cVar.b(R.id.rv_list)) != null) {
                                    Object tag = cVar.itemView.getTag();
                                    DailyGameAdapter dailyGameAdapter = tag instanceof DailyGameAdapter ? (DailyGameAdapter) tag : null;
                                    List<CommonGameInfoBean> items = dailyTodayGameBean.getItems();
                                    if (items != null) {
                                        for (Object obj : items) {
                                            int i11 = i10 + 1;
                                            if (i10 < 0) {
                                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                                            }
                                            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) obj;
                                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = recyclerView.findViewHolderForAdapterPosition(i10);
                                            v2.c cVar2 = viewHolderFindViewHolderForAdapterPosition2 instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition2 : null;
                                            if (cVar2 != null && shouldApplyDownloadProgress(commonGameInfoBean)) {
                                                if (dailyGameAdapter != null) {
                                                    dailyGameAdapter.updateDownloadProgress(cVar2, commonGameInfoBean);
                                                } else {
                                                    applyProgressOnView(cVar2, commonGameInfoBean);
                                                }
                                            }
                                            i10 = i11;
                                        }
                                    }
                                }
                            }
                        } else if (itemType == 3) {
                            DailyRankItemBean dailyRankItemBean = (DailyRankItemBean) item.getData();
                            if (dailyRankItemBean != null) {
                                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition3 = rvList.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                                v2.c cVar3 = viewHolderFindViewHolderForAdapterPosition3 instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition3 : null;
                                if (cVar3 != null && (viewPager2 = (ViewPager2) cVar3.b(R.id.viewpager)) != null) {
                                    View childAt = viewPager2.getChildAt(0);
                                    RecyclerView recyclerView4 = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
                                    if (recyclerView4 != null) {
                                        RecyclerView.Adapter adapter = recyclerView4.getAdapter();
                                        DailyRankAdapter dailyRankAdapter = adapter instanceof DailyRankAdapter ? (DailyRankAdapter) adapter : null;
                                        if (dailyRankAdapter != null) {
                                            int itemCount = dailyRankAdapter.getItemCount();
                                            for (int i12 = 0; i12 < itemCount; i12++) {
                                                RecyclerView.LayoutManager layoutManager2 = recyclerView4.getLayoutManager();
                                                if (layoutManager2 != null && (viewFindViewByPosition = layoutManager2.findViewByPosition(i12)) != null && (recyclerView2 = (RecyclerView) viewFindViewByPosition.findViewById(R.id.rv_list)) != null) {
                                                    RecyclerView.Adapter adapter2 = recyclerView2.getAdapter();
                                                    DailyRankGameAdapter dailyRankGameAdapter = adapter2 instanceof DailyRankGameAdapter ? (DailyRankGameAdapter) adapter2 : null;
                                                    if (dailyRankGameAdapter != null) {
                                                        ArrayList<DailyRankListItemBean> rankListData = dailyRankItemBean.getRankListData();
                                                        List game_list = (rankListData == null || (dailyRankListItemBean = (DailyRankListItemBean) CollectionsKt___CollectionsKt.getOrNull(rankListData, i12)) == null) ? null : dailyRankListItemBean.getGame_list();
                                                        if (game_list == null) {
                                                            game_list = CollectionsKt__CollectionsKt.emptyList();
                                                        }
                                                        int i13 = 0;
                                                        for (Object obj2 : game_list) {
                                                            int i14 = i13 + 1;
                                                            if (i13 < 0) {
                                                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                                                            }
                                                            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) obj2;
                                                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition4 = recyclerView2.findViewHolderForAdapterPosition(i13);
                                                            v2.c cVar4 = viewHolderFindViewHolderForAdapterPosition4 instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition4 : null;
                                                            if (cVar4 != null && shouldApplyDownloadProgress(collectionBeanSub)) {
                                                                dailyRankGameAdapter.updateDownloadProgress(cVar4, collectionBeanSub);
                                                            }
                                                            i13 = i14;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else if (itemType == 4 && (dailyGuessGameBean = (DailyGuessGameBean) item.getData()) != null) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition5 = rvList.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                            v2.c cVar5 = viewHolderFindViewHolderForAdapterPosition5 instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition5 : null;
                            if (cVar5 != null && (recyclerView3 = (RecyclerView) cVar5.b(R.id.rv_list)) != null) {
                                Object tag2 = cVar5.itemView.getTag();
                                DailyGameHorizontalAdapter dailyGameHorizontalAdapter = tag2 instanceof DailyGameHorizontalAdapter ? (DailyGameHorizontalAdapter) tag2 : null;
                                List<CollectionBeanSub> curItems = dailyGuessGameBean.getCurItems();
                                if (curItems != null) {
                                    for (Object obj3 : curItems) {
                                        int i15 = i10 + 1;
                                        if (i10 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        CollectionBeanSub collectionBeanSub2 = (CollectionBeanSub) obj3;
                                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition6 = recyclerView3.findViewHolderForAdapterPosition(i10);
                                        v2.c cVar6 = viewHolderFindViewHolderForAdapterPosition6 instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition6 : null;
                                        if (cVar6 != null && shouldApplyDownloadProgress(collectionBeanSub2)) {
                                            if (dailyGameHorizontalAdapter != null) {
                                                dailyGameHorizontalAdapter.updateDownloadProgress(cVar6, collectionBeanSub2);
                                            } else {
                                                applyProgressOnView(cVar6, collectionBeanSub2);
                                            }
                                        }
                                        i10 = i15;
                                    }
                                }
                            }
                        }
                    } else {
                        DailyDiscoveryGameBean dailyDiscoveryGameBean = (DailyDiscoveryGameBean) item.getData();
                        if (dailyDiscoveryGameBean != null && (game = dailyDiscoveryGameBean.getGame()) != null) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition7 = rvList.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                            v2.c cVar7 = viewHolderFindViewHolderForAdapterPosition7 instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition7 : null;
                            if (cVar7 != null) {
                                getPageAdapter().updateDailyGameProgress(cVar7, game);
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                return;
            } else {
                iFindFirstVisibleItemPosition++;
            }
        }
    }

    public final void autoPlay() {
        getMHandler().postDelayed(new Runnable() { // from class: com.join.kotlin.autocode.dailyfind.fragment.g
            @Override // java.lang.Runnable
            public final void run() {
                DailyFindContentFragment.autoPlay$lambda$11(this.f48529b);
            }
        }, 500L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        ((DailyFindViewModel) getMViewModel()).getListData().observe(this, new DailyFindContentFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.autocode.dailyfind.fragment.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DailyFindContentFragment.createObserver$lambda$14$lambda$13(this.f48528b, (ListDataUiState) obj);
            }
        }));
    }

    @NotNull
    public final List<DateItem> getTimeItems() {
        return this.timeItems;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        DailyFindViewModel dailyFindViewModel = (DailyFindViewModel) getMViewModel();
        Bundle arguments = getArguments();
        DateStripAdapter dateStripAdapter = null;
        Serializable serializable = arguments != null ? arguments.getSerializable("extBean") : null;
        dailyFindViewModel.setParentExtBean(serializable instanceof ExtBean ? (ExtBean) serializable : null);
        ((DailyFindViewModel) getMViewModel()).getPageExtBean().setParent(((DailyFindViewModel) getMViewModel()).getParentExtBean());
        t.l(requireContext()).R1(Event.commonExp, ((DailyFindViewModel) getMViewModel()).getPageExtBean().copy().setTypeCode("page").buildScene().toExt());
        XQuickRecyclerView rvList = getMViewBind().f40846g;
        Intrinsics.checkNotNullExpressionValue(rvList, "rvList");
        this.loadSir = CustomViewExtKt.loadServiceInit(rvList, new Function0() { // from class: com.join.kotlin.autocode.dailyfind.fragment.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DailyFindContentFragment.initView$lambda$2(this.f48523b);
            }
        });
        this.videoHelper = new com.join.android.app.component.video.h(getMViewBind().f40846g, "DailyFindContentFragment");
        j0.a().d(this);
        getMViewBind().f40846g.setLayoutManager(getListLayoutManager());
        getMViewBind().f40846g.setAdapter(getPageAdapter());
        getMViewBind().f40846g.setPullRefreshEnabled(false);
        getMViewBind().f40846g.setHasFixedSize(true);
        getMViewBind().f40846g.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.autocode.dailyfind.fragment.DailyFindContentFragment.initView.2
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                DailyFindContentFragment.this.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
            }
        });
        this.cellWidthPx = getResources().getDimensionPixelSize(R.dimen.wdp104);
        Iterator<DateItem> it2 = this.timeItems.iterator();
        int i10 = 0;
        while (true) {
            if (!it2.hasNext()) {
                i10 = -1;
                break;
            } else if (it2.next().isToday()) {
                break;
            } else {
                i10++;
            }
        }
        Integer numValueOf = Integer.valueOf(i10);
        if (!(numValueOf.intValue() >= 0)) {
            numValueOf = null;
        }
        this.todayIndex = numValueOf != null ? numValueOf.intValue() : 0;
        this.timeAdapter = new DateStripAdapter(this.timeItems, new Function3() { // from class: com.join.kotlin.autocode.dailyfind.fragment.b
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return DailyFindContentFragment.initView$lambda$5(this.f48524b, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (DateItem) obj3);
            }
        });
        getMViewBind().f40845f.setLayoutManager(new LinearLayoutManager(requireContext(), 0, false));
        RecyclerView recyclerView = getMViewBind().f40845f;
        DateStripAdapter dateStripAdapter2 = this.timeAdapter;
        if (dateStripAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("timeAdapter");
        } else {
            dateStripAdapter = dateStripAdapter2;
        }
        recyclerView.setAdapter(dateStripAdapter);
        getMViewBind().f40845f.setHasFixedSize(true);
        getMViewBind().f40845f.post(new Runnable() { // from class: com.join.kotlin.autocode.dailyfind.fragment.c
            @Override // java.lang.Runnable
            public final void run() {
                DailyFindContentFragment.initView$lambda$6(this.f48525b);
            }
        });
        getMViewBind().f40845f.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.autocode.dailyfind.fragment.DailyFindContentFragment.initView.7
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView2, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView2, "recyclerView");
                super.onScrollStateChanged(recyclerView2, newState);
                if (newState == 0) {
                    DailyFindContentFragment.this.expTimeStrip(recyclerView2);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView2, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView2, "recyclerView");
                RecyclerView.LayoutManager layoutManager = recyclerView2.getLayoutManager();
                LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                int iFindFirstVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findFirstVisibleItemPosition() : 0;
                RecyclerView.LayoutManager layoutManager2 = recyclerView2.getLayoutManager();
                LinearLayoutManager linearLayoutManager2 = layoutManager2 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager2 : null;
                int iFindLastVisibleItemPosition = linearLayoutManager2 != null ? linearLayoutManager2.findLastVisibleItemPosition() : 0;
                int i11 = DailyFindContentFragment.this.todayIndex;
                DailyFindContentFragment.this.getMViewBind().f40842c.setVisibility(iFindFirstVisibleItemPosition <= i11 && i11 <= iFindLastVisibleItemPosition ? 8 : 0);
            }
        });
        getMViewBind().f40842c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.autocode.dailyfind.fragment.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DailyFindContentFragment.initView$lambda$7(this.f48526b, view);
            }
        });
        getMViewBind().f40846g.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.autocode.dailyfind.fragment.DailyFindContentFragment.initView.9
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView2, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView2, "recyclerView");
                super.onScrollStateChanged(recyclerView2, newState);
                if (newState == 0) {
                    if (DailyFindContentFragment.this.videoHelper != null) {
                        com.join.android.app.component.video.h hVar = DailyFindContentFragment.this.videoHelper;
                        Intrinsics.checkNotNull(hVar);
                        hVar.f(1);
                    }
                    DailyFindContentFragment.this.updateLeftSelection();
                    DailyFindContentFragment.this.expListPoint();
                }
                DailyFindContentFragment.this.SCROLLING = newState != 0;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView2, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView2, "recyclerView");
                super.onScrolled(recyclerView2, dx, dy);
                DailyFindContentFragment dailyFindContentFragment = DailyFindContentFragment.this;
                dailyFindContentFragment.lastVisibleIndex = dailyFindContentFragment.getListLayoutManager().findLastVisibleItemPosition();
                DailyFindContentFragment dailyFindContentFragment2 = DailyFindContentFragment.this;
                dailyFindContentFragment2.firstVisiblePosition = dailyFindContentFragment2.getListLayoutManager().findFirstVisibleItemPosition();
            }
        });
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
        DailyFindViewModel dailyFindViewModel = (DailyFindViewModel) getMViewModel();
        List<DateItem> list = this.timeItems;
        dailyFindViewModel.setCurClickDateItem(list.get(list.size() - 1));
        loadData(true);
        getMViewBind().f40845f.postDelayed(new Runnable() { // from class: com.join.kotlin.autocode.dailyfind.fragment.j
            @Override // java.lang.Runnable
            public final void run() {
                DailyFindContentFragment.lazyLoadData$lambda$27(this.f48532b);
            }
        }, 100L);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        j0.a().e(this);
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.x();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onEventMainThread(downloadTaskEvent);
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
            return;
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC != 5) {
            if (iC == 6) {
                updateUI(downloadTaskA, 6);
                return;
            }
            if (iC == 7) {
                updateUI(downloadTaskA, 3);
                return;
            }
            if (iC == 8) {
                if (this.SCROLLING) {
                    return;
                }
                updateProgressPartly();
                return;
            } else if (iC != 48) {
                switch (iC) {
                    case 10:
                        updateUI(downloadTaskA, 7);
                        break;
                    case 12:
                        updateUI(downloadTaskA, 8);
                        break;
                    case 13:
                        updateUI(downloadTaskA, 9);
                        break;
                }
                return;
            }
        }
        updateUI(downloadTaskA, 5);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            Intrinsics.checkNotNull(hVar);
            hVar.y();
        }
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            Intrinsics.checkNotNull(hVar);
            hVar.F();
        }
    }

    public final void updateUI(@Nullable DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }
}
