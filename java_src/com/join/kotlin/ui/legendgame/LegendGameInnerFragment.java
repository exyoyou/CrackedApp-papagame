package com.join.kotlin.ui.legendgame;

import android.os.Bundle;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.hd0;
import com.join.kotlin.base.fragment.BaseVmVbFragment;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.legendgame.adapter.LegendGameAdapter;
import com.join.kotlin.ui.legendgame.data.LegendGameBespeakUiState;
import com.join.kotlin.ui.legendgame.data.LegendGameListMapper;
import com.join.kotlin.ui.legendgame.data.LegendGameMultiItem;
import com.join.kotlin.ui.legendgame.data.LegendServerRemindResult;
import com.join.kotlin.ui.legendgame.data.LegendZoneResultData;
import com.join.kotlin.ui.legendgame.viewmodel.LegendGameInnerViewModel;
import com.join.kotlin.ui.legendgame.viewmodel.LegendGameZoneViewModel;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.j0;
import com.join.mgps.callbacks.q;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import com.papa91.arc.ext.ToastManager;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 62\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u00016B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010 \u001a\u00020\u001cH\u0016J\b\u0010!\u001a\u00020\u001cH\u0016J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010$\u001a\u00020\u001cH\u0002J\b\u0010%\u001a\u00020\u001cH\u0002J\b\u0010&\u001a\u00020\u001cH\u0002J\b\u0010+\u001a\u00020\u001cH\u0002J \u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020.2\u0006\u0010#\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u0014H\u0002J\b\u00100\u001a\u00020\u001cH\u0016J\u0010\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u000203H\u0007J\b\u00104\u001a\u00020\u001cH\u0002J\b\u00105\u001a\u00020\u001cH\u0002R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010'\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0004\n\u0002\u0010(R\u0012\u0010)\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0004\n\u0002\u0010*¨\u00067"}, d2 = {"Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;", "Lcom/join/kotlin/base/fragment/BaseVmVbFragment;", "Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/LegendGameCategoryInnerFragmentBinding;", "Lcom/join/mgps/callbacks/OnPageVisibleChanged;", "<init>", "()V", "zoneViewModel", "Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;", "getZoneViewModel", "()Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;", "zoneViewModel$delegate", "Lkotlin/Lazy;", "adapter", "Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;", "tabTitle", "", LegendGameInnerFragment.ARG_PAGE_INDEX, "", "pageVisible", "", "isExposuring", "moduleExtBean", "Lcom/join/mgps/dto/ExtBean;", "scrolling", "firstVisiblePosition", "lastVisibleIndex", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "initView", "lazyLoadData", "createObserver", "onPageVisible", "position", "trackBespeakBookSuccess", "trackBespeakCancelSuccess", "expVisibleGames", "pendingServerRemindPosition", "Ljava/lang/Integer;", "pendingServerRemindBook", "Ljava/lang/Boolean;", "openServerReminderPage", "handleLegendServerRemind", "item", "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;", "book", "onDestroy", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateBtnPartly", "updateProgressPartly", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLegendGameInnerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameInnerFragment.kt\ncom/join/kotlin/ui/legendgame/LegendGameInnerFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 LegendGameMultiItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameMultiItem\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,371:1\n172#2,9:372\n19#3:381\n19#3:384\n19#3:385\n1869#4,2:382\n*S KotlinDebug\n*F\n+ 1 LegendGameInnerFragment.kt\ncom/join/kotlin/ui/legendgame/LegendGameInnerFragment\n*L\n43#1:372,9\n236#1:381\n319#1:384\n333#1:385\n306#1:382,2\n*E\n"})
public final class LegendGameInnerFragment extends BaseVmVbFragment<LegendGameInnerViewModel, hd0> implements q {

    @NotNull
    private static final String ARG_PAGE_INDEX = "pageIndex";

    @NotNull
    private static final String ARG_TAB_ID = "tab_id";

    @NotNull
    private static final String ARG_TAB_TITLE = "tab_title";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private static final int TAB_RECOMMEND = 0;
    private LegendGameAdapter adapter;
    private int firstVisiblePosition;
    private boolean isExposuring;
    private int lastVisibleIndex;
    private ExtBean moduleExtBean;
    private boolean pageVisible;

    @Nullable
    private Boolean pendingServerRemindBook;

    @Nullable
    private Integer pendingServerRemindPosition;
    private boolean scrolling;

    /* JADX INFO: renamed from: zoneViewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy zoneViewModel;

    @NotNull
    private String tabTitle = "";
    private int pageIndex = -1;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$Companion;", "", "<init>", "()V", "ARG_TAB_ID", "", "ARG_TAB_TITLE", "ARG_PAGE_INDEX", "TAB_RECOMMEND", "", "newInstance", "Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;", "tabId", "tabTitle", LegendGameInnerFragment.ARG_PAGE_INDEX, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LegendGameInnerFragment newInstance(int tabId, @NotNull String tabTitle, int pageIndex) {
            Intrinsics.checkNotNullParameter(tabTitle, "tabTitle");
            LegendGameInnerFragment legendGameInnerFragment = new LegendGameInnerFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(LegendGameInnerFragment.ARG_TAB_ID, tabId);
            bundle.putString(LegendGameInnerFragment.ARG_TAB_TITLE, tabTitle);
            bundle.putInt(LegendGameInnerFragment.ARG_PAGE_INDEX, pageIndex);
            legendGameInnerFragment.setArguments(bundle);
            return legendGameInnerFragment;
        }

        private Companion() {
        }
    }

    public LegendGameInnerFragment() {
        final Function0 function0 = null;
        this.zoneViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(LegendGameZoneViewModel.class), new Function0<ViewModelStore>() { // from class: com.join.kotlin.ui.legendgame.LegendGameInnerFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStore invoke() {
                ViewModelStore viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.checkNotNullExpressionValue(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<CreationExtras>() { // from class: com.join.kotlin.ui.legendgame.LegendGameInnerFragment$special$$inlined$activityViewModels$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                if (function1 != null && (creationExtras = (CreationExtras) function1.invoke()) != null) {
                    return creationExtras;
                }
                CreationExtras defaultViewModelCreationExtras = this.requireActivity().getDefaultViewModelCreationExtras();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "requireActivity().defaultViewModelCreationExtras");
                return defaultViewModelCreationExtras;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.join.kotlin.ui.legendgame.LegendGameInnerFragment$special$$inlined$activityViewModels$default$3
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$1(LegendGameInnerFragment legendGameInnerFragment, ResultState resultState) {
        if (resultState instanceof ResultState.Success) {
            ((LegendGameInnerViewModel) legendGameInnerFragment.getMViewModel()).applyZoneData((LegendZoneResultData) ((ResultState.Success) resultState).getData(), true);
        } else if (resultState instanceof ResultState.Error) {
            legendGameInnerFragment.getMViewBind().f39305c.refreshComplete();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$3(final LegendGameInnerFragment legendGameInnerFragment, ListDataUiState listDataUiState) {
        legendGameInnerFragment.getMViewBind().f39305c.loadMoreComplete();
        if (listDataUiState.isSuccess()) {
            LegendGameAdapter legendGameAdapter = null;
            if (listDataUiState.isRefresh()) {
                LegendGameAdapter legendGameAdapter2 = legendGameInnerFragment.adapter;
                if (legendGameAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    legendGameAdapter = legendGameAdapter2;
                }
                legendGameAdapter.submitList(listDataUiState.getListData());
            } else {
                LegendGameAdapter legendGameAdapter3 = legendGameInnerFragment.adapter;
                if (legendGameAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    legendGameAdapter = legendGameAdapter3;
                }
                legendGameAdapter.addAll(listDataUiState.getListData());
            }
            legendGameInnerFragment.getMViewBind().f39305c.refreshComplete();
            if (listDataUiState.getListData().isEmpty() || !listDataUiState.getHasMore()) {
                legendGameInnerFragment.getMViewBind().f39305c.setNoMore();
            }
            if (legendGameInnerFragment.pageVisible && (!listDataUiState.getListData().isEmpty())) {
                legendGameInnerFragment.getMViewBind().f39305c.postDelayed(new Runnable() { // from class: com.join.kotlin.ui.legendgame.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f49275b.expVisibleGames();
                    }
                }, 300L);
            }
        } else if (listDataUiState.isRefresh()) {
            legendGameInnerFragment.getMViewBind().f39305c.refreshComplete();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$6(LegendGameInnerFragment legendGameInnerFragment, ResultState resultState) {
        LegendGameAdapter legendGameAdapter = null;
        if (resultState instanceof ResultState.Success) {
            Integer num = legendGameInnerFragment.pendingServerRemindPosition;
            if (num == null) {
                return Unit.INSTANCE;
            }
            int iIntValue = num.intValue();
            Boolean bool = legendGameInnerFragment.pendingServerRemindBook;
            if (bool == null) {
                return Unit.INSTANCE;
            }
            boolean zBooleanValue = bool.booleanValue();
            legendGameInnerFragment.pendingServerRemindPosition = null;
            legendGameInnerFragment.pendingServerRemindBook = null;
            LegendServerRemindResult legendServerRemindResult = (LegendServerRemindResult) ((ResultState.Success) resultState).getData();
            if (legendServerRemindResult != null) {
                LegendGameAdapter legendGameAdapter2 = legendGameInnerFragment.adapter;
                if (legendGameAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    legendGameAdapter2 = null;
                }
                LegendGameMultiItem item = legendGameAdapter2.getItem(iIntValue);
                if (item != null) {
                    LegendGameBespeakUiState bespeakUi = item.getBespeakUi();
                    if (bespeakUi != null) {
                        bespeakUi.set_reminded(legendServerRemindResult.is_reminded);
                        bespeakUi.set_follow(legendServerRemindResult.is_follow);
                    }
                    LegendGameAdapter legendGameAdapter3 = legendGameInnerFragment.adapter;
                    if (legendGameAdapter3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    } else {
                        legendGameAdapter = legendGameAdapter3;
                    }
                    legendGameAdapter.notifyItemChanged(iIntValue);
                    if (zBooleanValue) {
                        if (legendServerRemindResult.is_follow) {
                            ToastManager.show("预约成功！");
                        } else {
                            legendGameInnerFragment.openServerReminderPage();
                        }
                    }
                }
            }
            if (zBooleanValue) {
                legendGameInnerFragment.trackBespeakBookSuccess();
            } else {
                legendGameInnerFragment.trackBespeakCancelSuccess();
            }
        } else if (resultState instanceof ResultState.Error) {
            legendGameInnerFragment.pendingServerRemindPosition = null;
            legendGameInnerFragment.pendingServerRemindBook = null;
            ToastManager.show(((ResultState.Error) resultState).getError().getErrorMsg());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void expVisibleGames() {
        ExtBean extBean;
        if (!isAdded() || !this.pageVisible || this.isExposuring || ((LegendGameInnerViewModel) getMViewModel()).getAllGameList().isEmpty()) {
            return;
        }
        this.isExposuring = true;
        try {
            try {
                int iCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(getMViewBind().f39305c.getFirstVisiblePosition(), 0);
                int lastVisiblePosition = getMViewBind().f39305c.getLastVisiblePosition();
                if (lastVisiblePosition == -1) {
                    return;
                }
                LegendGameAdapter legendGameAdapter = this.adapter;
                if (legendGameAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    legendGameAdapter = null;
                }
                List<LegendGameMultiItem> items = legendGameAdapter.getItems();
                int iCoerceAtMost = RangesKt___RangesKt.coerceAtMost(lastVisiblePosition, items.size() - 1);
                if (iCoerceAtLeast <= iCoerceAtMost) {
                    while (true) {
                        LegendGameMultiItem legendGameMultiItem = (LegendGameMultiItem) CollectionsKt___CollectionsKt.getOrNull(items, iCoerceAtLeast);
                        if (legendGameMultiItem != null && legendGameMultiItem.isGameItem()) {
                            Object data = legendGameMultiItem.getData();
                            if (!(data instanceof CommonGameInfoBean)) {
                                data = null;
                            }
                            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) data;
                            if (commonGameInfoBean != null && (extBean = commonGameInfoBean.getExtBean()) != null && !extBean.hasExplore()) {
                                extBean.setHasExplore(true);
                                t.l(requireContext()).R1(Event.commonExp, extBean.copy().setTypeCode("game").buildScene().toExt());
                            }
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
    public final LegendGameZoneViewModel getZoneViewModel() {
        return (LegendGameZoneViewModel) this.zoneViewModel.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void handleLegendServerRemind(LegendGameMultiItem item, int position, boolean book) {
        LegendGameBespeakUiState bespeakUi;
        if (IntentUtil.getInstance().goLogin(requireContext()) || (bespeakUi = item.getBespeakUi()) == null) {
            return;
        }
        long detailId = bespeakUi.getDetailId();
        if (detailId <= 0) {
            return;
        }
        this.pendingServerRemindPosition = Integer.valueOf(position);
        this.pendingServerRemindBook = Boolean.valueOf(book);
        ((LegendGameInnerViewModel) getMViewModel()).toggleServerRemind(detailId, book);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$0(LegendGameInnerFragment legendGameInnerFragment, LegendGameMultiItem item, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(item, "item");
        legendGameInnerFragment.handleLegendServerRemind(item, i10, z10);
        return Unit.INSTANCE;
    }

    private final void openServerReminderPage() {
        LegendZoneResultData zoneData = getZoneViewModel().getZoneData();
        String mp_subscribe_url = zoneData != null ? zoneData.getMp_subscribe_url() : null;
        if (mp_subscribe_url == null || StringsKt__StringsKt.isBlank(mp_subscribe_url)) {
            return;
        }
        IntentUtil.getInstance().goShareWebActivity(requireActivity(), mp_subscribe_url);
    }

    private final void trackBespeakBookSuccess() {
        t.l(requireContext()).R1(Event.commonClick, LegendGameListMapper.legendTrackExtBean$default(LegendGameListMapper.INSTANCE, null, 1, null).setTypeCode("btnOk").setResultCode("succ").buildScene().toExt());
    }

    private final void trackBespeakCancelSuccess() {
        t.l(requireContext()).R1(Event.commonClick, LegendGameListMapper.legendTrackExtBean$default(LegendGameListMapper.INSTANCE, null, 1, null).setTypeCode("btnCancel").setResultCode("cancel").buildScene().toExt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void updateBtnPartly() {
        for (CommonGameInfoBean commonGameInfoBean : ((LegendGameInnerViewModel) getMViewModel()).getAllGameList()) {
            if (commonGameInfoBean.getG_info() != null) {
                try {
                    DlTaskManager.INSTANCE.updateDownloadTask(commonGameInfoBean);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        if (this.firstVisiblePosition < 0) {
            return;
        }
        XQuickRecyclerView recycleView = getMViewBind().f39305c;
        Intrinsics.checkNotNullExpressionValue(recycleView, "recycleView");
        int i10 = this.firstVisiblePosition;
        int i11 = this.lastVisibleIndex + 1;
        LegendGameAdapter legendGameAdapter = this.adapter;
        if (legendGameAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            legendGameAdapter = null;
        }
        int iMin = Math.min(i11, legendGameAdapter.getItemCount() - 1);
        if (i10 > iMin) {
            return;
        }
        while (true) {
            LegendGameAdapter legendGameAdapter2 = this.adapter;
            if (legendGameAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                legendGameAdapter2 = null;
            }
            LegendGameMultiItem item = legendGameAdapter2.getItem(i10);
            if (item != null && item.isGameItem()) {
                Object data = item.getData();
                if (!(data instanceof CommonGameInfoBean)) {
                    data = null;
                }
                CommonGameInfoBean commonGameInfoBean2 = (CommonGameInfoBean) data;
                if (commonGameInfoBean2 != null && commonGameInfoBean2.getG_info() != null) {
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recycleView.findViewHolderForAdapterPosition(i10);
                    v2.c cVar = viewHolderFindViewHolderForAdapterPosition instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition : null;
                    if (cVar != null) {
                        LegendGameAdapter legendGameAdapter3 = this.adapter;
                        if (legendGameAdapter3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            legendGameAdapter3 = null;
                        }
                        legendGameAdapter3.updateGameDownload(cVar, commonGameInfoBean2);
                    }
                }
            }
            if (i10 == iMin) {
                return;
            } else {
                i10++;
            }
        }
    }

    private final void updateProgressPartly() {
        DownloadTask task;
        int status;
        if (this.firstVisiblePosition < 0) {
            return;
        }
        try {
            XQuickRecyclerView recycleView = getMViewBind().f39305c;
            Intrinsics.checkNotNullExpressionValue(recycleView, "recycleView");
            int i10 = this.firstVisiblePosition;
            int i11 = this.lastVisibleIndex + 1;
            LegendGameAdapter legendGameAdapter = this.adapter;
            if (legendGameAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                legendGameAdapter = null;
            }
            int iMin = Math.min(i11, legendGameAdapter.getItemCount() - 1);
            if (i10 > iMin) {
                return;
            }
            while (true) {
                LegendGameAdapter legendGameAdapter2 = this.adapter;
                if (legendGameAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    legendGameAdapter2 = null;
                }
                LegendGameMultiItem item = legendGameAdapter2.getItem(i10);
                if (item != null && item.isGameItem()) {
                    Object data = item.getData();
                    if (!(data instanceof CommonGameInfoBean)) {
                        data = null;
                    }
                    CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) data;
                    if (commonGameInfoBean != null && commonGameInfoBean.getG_info() != null && (task = DlTaskManager.INSTANCE.getTask(commonGameInfoBean)) != null && ((status = task.getStatus()) == 1 || status == 2 || status == 3 || status == 10 || status == 12)) {
                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recycleView.findViewHolderForAdapterPosition(i10);
                        v2.c cVar = viewHolderFindViewHolderForAdapterPosition instanceof v2.c ? (v2.c) viewHolderFindViewHolderForAdapterPosition : null;
                        if (cVar != null) {
                            LegendGameAdapter legendGameAdapter3 = this.adapter;
                            if (legendGameAdapter3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                legendGameAdapter3 = null;
                            }
                            legendGameAdapter3.updateDownloadProgress(cVar, commonGameInfoBean);
                        }
                    }
                }
                if (i10 == iMin) {
                    return;
                } else {
                    i10++;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        getZoneViewModel().getZoneState().observe(getViewLifecycleOwner(), new LegendGameInnerFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.legendgame.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LegendGameInnerFragment.createObserver$lambda$1(this.f49277b, (ResultState) obj);
            }
        }));
        ((LegendGameInnerViewModel) getMViewModel()).getListData().observe(getViewLifecycleOwner(), new LegendGameInnerFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.legendgame.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LegendGameInnerFragment.createObserver$lambda$3(this.f49278b, (ListDataUiState) obj);
            }
        }));
        ((LegendGameInnerViewModel) getMViewModel()).getServerRemindState().observe(getViewLifecycleOwner(), new LegendGameInnerFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.legendgame.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LegendGameInnerFragment.createObserver$lambda$6(this.f49279b, (ResultState) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        LegendGameInnerViewModel legendGameInnerViewModel = (LegendGameInnerViewModel) getMViewModel();
        Bundle arguments = getArguments();
        legendGameInnerViewModel.setTabId(arguments != null ? arguments.getInt(ARG_TAB_ID, 0) : 0);
        Bundle arguments2 = getArguments();
        LegendGameAdapter legendGameAdapter = null;
        String string = arguments2 != null ? arguments2.getString(ARG_TAB_TITLE) : null;
        if (string == null) {
            string = "";
        }
        this.tabTitle = string;
        Bundle arguments3 = getArguments();
        this.pageIndex = arguments3 != null ? arguments3.getInt(ARG_PAGE_INDEX, -1) : -1;
        this.moduleExtBean = LegendGameListMapper.INSTANCE.legendTrackExtBean(this.tabTitle);
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        getMViewBind().f39305c.setLayoutManager(linearLayoutManager);
        final int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.wdp36);
        final int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.wdp20);
        getMViewBind().f39305c.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.legendgame.LegendGameInnerFragment.initView.1
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i10) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                int i11 = dimensionPixelSize;
                int i12 = dimensionPixelSize2;
                aVar.f64116f = 0;
                aVar.f64117a = i11;
                aVar.f64118b = i11;
                aVar.f64119c = i10 == 0 ? i12 : 0;
                aVar.f64120d = i12;
                return aVar;
            }
        });
        this.adapter = new LegendGameAdapter();
        if (((LegendGameInnerViewModel) getMViewModel()).getTabId() == 0) {
            LegendGameAdapter legendGameAdapter2 = this.adapter;
            if (legendGameAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                legendGameAdapter2 = null;
            }
            legendGameAdapter2.setOnBespeakConfirm(new Function3() { // from class: com.join.kotlin.ui.legendgame.k
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return LegendGameInnerFragment.initView$lambda$0(this.f49276b, (LegendGameMultiItem) obj, ((Integer) obj2).intValue(), ((Boolean) obj3).booleanValue());
                }
            });
        }
        XQuickRecyclerView xQuickRecyclerView = getMViewBind().f39305c;
        LegendGameAdapter legendGameAdapter3 = this.adapter;
        if (legendGameAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            legendGameAdapter = legendGameAdapter3;
        }
        xQuickRecyclerView.setAdapter(legendGameAdapter);
        getMViewBind().f39305c.setPullRefreshEnabled(true);
        getMViewBind().f39305c.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.ui.legendgame.LegendGameInnerFragment.initView.3
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                LegendGameInnerFragment.this.getZoneViewModel().loadZone();
            }
        });
        getMViewBind().f39305c.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.legendgame.LegendGameInnerFragment.initView.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                LegendGameInnerFragment.this.scrolling = newState != 0;
                if (newState == 0) {
                    LegendGameInnerFragment.this.expVisibleGames();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                LegendGameInnerFragment.this.firstVisiblePosition = linearLayoutManager.findFirstVisibleItemPosition();
                LegendGameInnerFragment.this.lastVisibleIndex = linearLayoutManager.findLastVisibleItemPosition();
            }
        });
        ResultState<LegendZoneResultData> value = getZoneViewModel().getZoneState().getValue();
        if (value instanceof ResultState.Success) {
            ((LegendGameInnerViewModel) getMViewModel()).applyZoneData((LegendZoneResultData) ((ResultState.Success) value).getData(), true);
        }
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        j0.a().d(this);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        int iC = downloadTaskEvent.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7) {
            if (iC == 8) {
                if (this.scrolling) {
                    return;
                }
                updateProgressPartly();
                return;
            } else if (iC != 48) {
                switch (iC) {
                }
            }
        }
        updateBtnPartly();
    }

    @Override // com.join.mgps.callbacks.q
    public void onPageVisible(int position) {
        boolean z10 = position == this.pageIndex;
        this.pageVisible = z10;
        if (z10) {
            ExtBean extBean = this.moduleExtBean;
            ExtBean extBean2 = null;
            if (extBean == null) {
                Intrinsics.throwUninitializedPropertyAccessException("moduleExtBean");
                extBean = null;
            }
            if (extBean.hasExplore()) {
                return;
            }
            t.l(requireContext()).R1(Event.commonExp, LegendGameListMapper.INSTANCE.legendModuleExpExtBean(this.tabTitle).buildScene().toExt());
            ExtBean extBean3 = this.moduleExtBean;
            if (extBean3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("moduleExtBean");
            } else {
                extBean2 = extBean3;
            }
            extBean2.setHasExplore(true);
            expVisibleGames();
        }
    }
}
