package com.join.kotlin.ui.legendgame;

import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.component.xrecyclerview.AppBarStateChangeListener;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.gd0;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmVbFragment;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.ui.legendgame.data.LegendGameHeaderData;
import com.join.kotlin.ui.legendgame.data.LegendGameListMapper;
import com.join.kotlin.ui.legendgame.data.LegendGameTabData;
import com.join.kotlin.ui.legendgame.data.LegendZoneGameItemKt;
import com.join.kotlin.ui.legendgame.data.LegendZoneResultData;
import com.join.kotlin.ui.legendgame.viewmodel.LegendGameCategoryViewModel;
import com.join.kotlin.ui.legendgame.viewmodel.LegendGameZoneViewModel;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.j0;
import com.join.mgps.callbacks.q;
import com.join.mgps.callbacks.w;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010\"\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010#\u001a\u00020\u001fH\u0016J\b\u0010$\u001a\u00020\u001fH\u0016J\b\u0010%\u001a\u00020\u001fH\u0016J\b\u0010&\u001a\u00020\u001fH\u0016J\b\u0010'\u001a\u00020\u001fH\u0016J\b\u0010(\u001a\u00020\u001fH\u0002J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u0015H\u0002J\b\u0010+\u001a\u00020\u001fH\u0002J\b\u0010,\u001a\u00020\u001fH\u0016J\u0010\u0010-\u001a\u00020\u001f2\u0006\u0010.\u001a\u00020/H\u0007J\u0010\u00100\u001a\u00020\u001f2\u0006\u00101\u001a\u000202H\u0007J\u0010\u00103\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u0013H\u0002J\u0010\u00105\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u0013H\u0002J\u0012\u00106\u001a\u00020\u001f2\b\u00107\u001a\u0004\u0018\u000108H\u0002J\u0010\u00109\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u0013H\u0002J\u001a\u0010:\u001a\u00020\u001f2\u0006\u00107\u001a\u0002082\b\u00104\u001a\u0004\u0018\u00010\u0013H\u0002J\b\u0010;\u001a\u00020\u001fH\u0002J\b\u0010<\u001a\u00020\u001fH\u0002J\b\u0010=\u001a\u00020\u001fH\u0002J\b\u0010>\u001a\u00020\u001fH\u0002J\b\u0010?\u001a\u00020\u0015H\u0002J\u0010\u0010@\u001a\u00020\u001f2\u0006\u00107\u001a\u000208H\u0002J\b\u0010A\u001a\u00020\u001fH\u0002J\u0010\u0010B\u001a\u00020\u001f2\u0006\u0010C\u001a\u00020DH\u0002J\u0018\u0010E\u001a\u00020\u001f2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u0015H\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006I"}, d2 = {"Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;", "Lcom/join/kotlin/base/fragment/BaseVmVbFragment;", "Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameCategoryViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/LegendGameCategoryFragmentBinding;", "<init>", "()V", "zoneViewModel", "Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;", "getZoneViewModel", "()Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;", "zoneViewModel$delegate", "Lkotlin/Lazy;", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "tabTypes", "", "Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;", "headerGame", "Lcom/join/mgps/dto/CommonGameInfoBean;", "headerHasVideo", "", "appBarExpanded", "legendPageExposed", "videoPlayTag", "", "videoHandler", "Landroid/os/Handler;", "startVideoRunnable", "Ljava/lang/Runnable;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "initView", "onPageVisible", "onPause", "onDestroyView", "lazyLoadData", "createObserver", "loadZoneData", "setPageContentVisible", "visible", "ensureTabs", "onDestroy", "onAccountChangeEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/join/mgps/event/AccountEvent;", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateFeaturedGameDownload", "game", "updateFeaturedGameProgress", "bindHeader", "header", "Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;", "bindFeaturedGameDownload", "bindHeaderBanner", "tryStartHeaderVideo", "pauseHeaderVideo", "releaseHeaderVideo", "cancelStartHeaderVideo", "canAutoPlayHeaderVideo", "bindHeaderTags", "setupTabs", "notifyPageVisible", "position", "", "applyTabStyle", "tab", "Lcom/google/android/material/tabs/TabLayout$Tab;", "selected", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLegendGameCategoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameCategoryFragment.kt\ncom/join/kotlin/ui/legendgame/LegendGameCategoryFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,529:1\n172#2,9:530\n1#3:539\n1869#4,2:540\n1869#4,2:542\n1869#4,2:544\n470#5:546\n470#5:547\n*S KotlinDebug\n*F\n+ 1 LegendGameCategoryFragment.kt\ncom/join/kotlin/ui/legendgame/LegendGameCategoryFragment\n*L\n64#1:530,9\n437#1:540,2\n451#1:542,2\n503#1:544,2\n518#1:546\n523#1:547\n*E\n"})
public final class LegendGameCategoryFragment extends BaseVmVbFragment<LegendGameCategoryViewModel, gd0> {

    @Nullable
    private CommonGameInfoBean headerGame;
    private boolean headerHasVideo;
    private boolean legendPageExposed;
    private com.kingja.loadsir.core.b<Object> loadSir;

    @Nullable
    private Runnable startVideoRunnable;

    /* JADX INFO: renamed from: zoneViewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy zoneViewModel;

    @NotNull
    private List<LegendGameTabData> tabTypes = CollectionsKt__CollectionsKt.emptyList();
    private boolean appBarExpanded = true;

    @NotNull
    private final String videoPlayTag = "LegendGameCategoryFragment";

    @NotNull
    private final Handler videoHandler = new Handler(Looper.getMainLooper());

    public LegendGameCategoryFragment() {
        final Function0 function0 = null;
        this.zoneViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(LegendGameZoneViewModel.class), new Function0<ViewModelStore>() { // from class: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment$special$$inlined$activityViewModels$default$1
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
        }, new Function0<CreationExtras>() { // from class: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment$special$$inlined$activityViewModels$default$2
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment$special$$inlined$activityViewModels$default$3
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
    public final void applyTabStyle(TabLayout.g gVar, boolean z10) {
        View viewG = gVar.g();
        if (viewG == null) {
            return;
        }
        View viewFindViewById = viewG.findViewById(R.id.ivTabIndicator);
        TextView textView = (TextView) viewG.findViewById(R.id.tabText);
        if (textView == null) {
            return;
        }
        float dimension = getResources().getDimension(R.dimen.wdp32);
        float dimension2 = getResources().getDimension(R.dimen.wdp26);
        if (z10) {
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            textView.setTextColor(Color.parseColor("#000000"));
            textView.setTextSize(0, dimension);
            textView.getPaint().setFakeBoldText(true);
            return;
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        textView.setTextColor(Color.parseColor("#A8A8A8"));
        textView.setTextSize(0, dimension2);
        textView.getPaint().setFakeBoldText(false);
    }

    private final void bindFeaturedGameDownload(CommonGameInfoBean game) {
        DlTaskManager.INSTANCE.updateDownloadTask(game);
        getMViewBind().f38803f.f(new m6.c(this, requireContext()) { // from class: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment.bindFeaturedGameDownload.1
            final /* synthetic */ LegendGameCategoryFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(context, this.$game);
                this.this$0 = this;
            }

            @Override // m6.c, com.join.mgps.callbacks.f
            public void onViewClicked(DownloadNormalView downView) {
                ExtBean extBean = this.$game.getExtBean();
                if (extBean != null) {
                    t.l(this.this$0.requireContext()).R1(Event.commonClick, extBean.copy().setTypeCode("btnDown").buildScene().toExt());
                }
                super.onViewClicked(downView);
            }
        });
    }

    private final void bindHeader(LegendGameHeaderData header) {
        if (header == null) {
            this.headerGame = null;
            this.headerHasVideo = false;
            releaseHeaderVideo();
            getMViewBind().f38812o.setVisibility(8);
            return;
        }
        getMViewBind().f38812o.setVisibility(0);
        final CommonGameInfoBean game_info = header.getGame_info();
        bindHeaderBanner(header, game_info);
        TextView textView = getMViewBind().f38818u;
        String strResolveTitle = header.resolveTitle();
        if (strResolveTitle == null) {
            strResolveTitle = "";
        }
        textView.setText(strResolveTitle);
        TextView textView2 = getMViewBind().f38817t;
        String strResolveDesc = header.resolveDesc();
        textView2.setText(strResolveDesc != null ? strResolveDesc : "");
        String strResolveIcon = header.resolveIcon();
        if (strResolveIcon != null) {
            com.join.android.app.common.utils.l.o(getMViewBind().f38805h, strResolveIcon);
        }
        this.headerGame = game_info;
        bindHeaderTags(header);
        if (game_info != null) {
            bindFeaturedGameDownload(game_info);
            getMViewBind().f38809l.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.legendgame.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LegendGameCategoryFragment.bindHeader$lambda$6(this.f49271b, game_info, view);
                }
            });
        } else {
            this.headerGame = null;
            getMViewBind().f38803f.setVisibility(0);
            getMViewBind().f38809l.setOnClickListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bindHeader$lambda$6(LegendGameCategoryFragment legendGameCategoryFragment, CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(legendGameCategoryFragment.requireContext(), commonGameInfoBean.getIntentDataBean());
    }

    private final void bindHeaderBanner(LegendGameHeaderData header, final CommonGameInfoBean game) {
        Integer link_type;
        String strResolveVideoUrl = header.resolveVideoUrl();
        String strResolveCoverUrl = header.resolveCoverUrl();
        final Function0 function0 = new Function0() { // from class: com.join.kotlin.ui.legendgame.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegendGameCategoryFragment.bindHeaderBanner$lambda$8(game, this);
            }
        };
        boolean z10 = true;
        if ((strResolveVideoUrl == null || strResolveVideoUrl.length() == 0) || game == null) {
            this.headerHasVideo = false;
            releaseHeaderVideo();
            getMViewBind().f38821x.setVisibility(8);
            getMViewBind().f38804g.setVisibility(4);
            if (strResolveCoverUrl != null && strResolveCoverUrl.length() != 0) {
                z10 = false;
            }
            if (z10) {
                getMViewBind().f38811n.setVisibility(8);
                getMViewBind().f38806i.setVisibility(8);
                getMViewBind().f38806i.setImageResource(0);
                return;
            } else {
                getMViewBind().f38811n.setVisibility(0);
                getMViewBind().f38806i.setVisibility(0);
                com.join.android.app.common.utils.l.o(getMViewBind().f38806i, strResolveCoverUrl);
                return;
            }
        }
        this.headerHasVideo = true;
        getMViewBind().f38811n.setVisibility(0);
        getMViewBind().f38806i.setVisibility(8);
        getMViewBind().f38804g.setVisibility(4);
        getMViewBind().f38821x.setVisibility(0);
        MultiStandVideo wfHeaderVideo = getMViewBind().f38821x;
        Intrinsics.checkNotNullExpressionValue(wfHeaderVideo, "wfHeaderVideo");
        if (!TextUtils.equals(strResolveVideoUrl, wfHeaderVideo.getUrl()) || (game.getJp_info() != null && ((link_type = game.getJp_info().getLink_type()) == null || link_type.intValue() != 1))) {
            wfHeaderVideo.l(strResolveCoverUrl);
            wfHeaderVideo.setName(header.resolveTitle());
            wfHeaderVideo.setPlayTag(this.videoPlayTag);
            wfHeaderVideo.setPlayPosition(game.hashCode());
            wfHeaderVideo.setUpLazy(strResolveVideoUrl, false, null, null, "");
            wfHeaderVideo.setRotateViewAuto(false);
            wfHeaderVideo.setLockLand(true);
            wfHeaderVideo.setReleaseWhenLossAudio(false);
            wfHeaderVideo.setShowFullAnimation(false);
            wfHeaderVideo.setIsTouchWiget(false);
            wfHeaderVideo.setNeedLockFull(false);
            wfHeaderVideo.setBottomProgressBarDrawable(null);
            wfHeaderVideo.setVideoAllCallBack(new w() { // from class: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment.bindHeaderBanner.1
                @Override // com.join.mgps.callbacks.w, v7.h
                public void onClickBlank(String s10, Object... objects) {
                    Intrinsics.checkNotNullParameter(objects, "objects");
                    super.onClickBlank(s10, Arrays.copyOf(objects, objects.length));
                    function0.invoke();
                }

                @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
                public void onClickCover() {
                    super.onClickCover();
                    function0.invoke();
                }
            });
        }
        tryStartHeaderVideo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit bindHeaderBanner$lambda$8(CommonGameInfoBean commonGameInfoBean, LegendGameCategoryFragment legendGameCategoryFragment) {
        if (commonGameInfoBean == null) {
            return null;
        }
        IntentUtil.getInstance().intentActivity(legendGameCategoryFragment.requireContext(), commonGameInfoBean.getIntentDataBean());
        return Unit.INSTANCE;
    }

    private final void bindHeaderTags(LegendGameHeaderData header) {
        LinearLayout layoutGameTags = getMViewBind().f38810m;
        Intrinsics.checkNotNullExpressionValue(layoutGameTags, "layoutGameTags");
        List<String> listResolveCustomTags = LegendZoneGameItemKt.resolveCustomTags(header);
        boolean z10 = true;
        if (!(!listResolveCustomTags.isEmpty())) {
            listResolveCustomTags = null;
        }
        layoutGameTags.removeAllViews();
        List<String> list = listResolveCustomTags;
        if (list != null && !list.isEmpty()) {
            z10 = false;
        }
        if (z10) {
            layoutGameTags.setVisibility(8);
            return;
        }
        layoutGameTags.setVisibility(0);
        layoutGameTags.setOrientation(0);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(layoutGameTags.getContext());
        for (String str : CollectionsKt___CollectionsKt.take(listResolveCustomTags, 4)) {
            View viewInflate = layoutInflaterFrom.inflate(R.layout.layout_legend_game_tag_item, (ViewGroup) layoutGameTags, false);
            Intrinsics.checkNotNull(viewInflate, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) viewInflate;
            textView.setText(str);
            layoutGameTags.addView(textView);
        }
    }

    private final boolean canAutoPlayHeaderVideo() {
        int iZ = com.join.mgps.pref.h.n(MApplication.f3182z).z();
        if (iZ == 0) {
            return true;
        }
        if (iZ != 1) {
            return false;
        }
        return com.papa.gsyvideoplayer.utils.k.i(MApplication.f3182z);
    }

    private final void cancelStartHeaderVideo() {
        Runnable runnable = this.startVideoRunnable;
        if (runnable != null) {
            this.videoHandler.removeCallbacks(runnable);
        }
        this.startVideoRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$2(LegendGameCategoryFragment legendGameCategoryFragment, LegendGameHeaderData legendGameHeaderData) {
        if (legendGameCategoryFragment.getZoneViewModel().getZoneState().getValue() instanceof ResultState.Success) {
            legendGameCategoryFragment.bindHeader(legendGameHeaderData);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$3(LegendGameCategoryFragment legendGameCategoryFragment, ResultState resultState) {
        com.kingja.loadsir.core.b<Object> bVar = null;
        if (resultState instanceof ResultState.Loading) {
            legendGameCategoryFragment.setPageContentVisible(false);
            legendGameCategoryFragment.bindHeader(null);
            legendGameCategoryFragment.pauseHeaderVideo();
            com.kingja.loadsir.core.b<Object> bVar2 = legendGameCategoryFragment.loadSir;
            if (bVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            } else {
                bVar = bVar2;
            }
            CustomViewExtKt.showLoading(bVar);
        } else if (resultState instanceof ResultState.Success) {
            legendGameCategoryFragment.ensureTabs();
            legendGameCategoryFragment.setPageContentVisible(true);
            legendGameCategoryFragment.bindHeader(legendGameCategoryFragment.getZoneViewModel().getHeaderData().getValue());
            com.kingja.loadsir.core.b<Object> bVar3 = legendGameCategoryFragment.loadSir;
            if (bVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            } else {
                bVar = bVar3;
            }
            bVar.h();
        } else if (resultState instanceof ResultState.Error) {
            legendGameCategoryFragment.setPageContentVisible(false);
            legendGameCategoryFragment.bindHeader(null);
            legendGameCategoryFragment.pauseHeaderVideo();
            com.kingja.loadsir.core.b<Object> bVar4 = legendGameCategoryFragment.loadSir;
            if (bVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            } else {
                bVar = bVar4;
            }
            CustomViewExtKt.showError(bVar, ((ResultState.Error) resultState).getError().getErrorMsg());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$4(LegendGameCategoryFragment legendGameCategoryFragment, ResultState resultState) {
        if (resultState instanceof ResultState.Success) {
            List<LegendGameTabData> list = (List) ((ResultState.Success) resultState).getData();
            List<LegendGameTabData> list2 = list;
            if (!(list2 == null || list2.isEmpty())) {
                legendGameCategoryFragment.tabTypes = list;
                if (legendGameCategoryFragment.getZoneViewModel().getZoneState().getValue() instanceof ResultState.Success) {
                    legendGameCategoryFragment.setupTabs();
                }
            }
        }
        return Unit.INSTANCE;
    }

    private final void ensureTabs() {
        if (this.tabTypes.isEmpty()) {
            this.tabTypes = CollectionsKt__CollectionsKt.listOf((Object[]) new LegendGameTabData[]{new LegendGameTabData(0, LegendGameListMapper.SOP_LATEST_SERVER), new LegendGameTabData(1, LegendGameListMapper.SOP_BRAND)});
        }
        setupTabs();
    }

    private final LegendGameZoneViewModel getZoneViewModel() {
        return (LegendGameZoneViewModel) this.zoneViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$0(LegendGameCategoryFragment legendGameCategoryFragment) {
        legendGameCategoryFragment.loadZoneData();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$1(LegendGameCategoryFragment legendGameCategoryFragment, View view) {
        t.l(legendGameCategoryFragment.requireContext()).R1(Event.commonClick, LegendGameListMapper.INSTANCE.legendTrackExtBean(LegendGameListMapper.SOP_SERVER_REMIND).buildScene().toExt());
        IntentUtil intentUtil = IntentUtil.getInstance();
        FragmentActivity fragmentActivityRequireActivity = legendGameCategoryFragment.requireActivity();
        LegendZoneResultData zoneData = legendGameCategoryFragment.getZoneViewModel().getZoneData();
        intentUtil.goShareWebActivity(fragmentActivityRequireActivity, String.valueOf(zoneData != null ? zoneData.getMp_subscribe_url() : null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void loadZoneData() {
        setPageContentVisible(false);
        com.kingja.loadsir.core.b<Object> bVar = null;
        bindHeader(null);
        pauseHeaderVideo();
        com.kingja.loadsir.core.b<Object> bVar2 = this.loadSir;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
        } else {
            bVar = bVar2;
        }
        CustomViewExtKt.showLoading(bVar);
        ((LegendGameCategoryViewModel) getMViewModel()).loadTabs();
        getZoneViewModel().loadZone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyPageVisible(int position) {
        if (isVisible()) {
            List<Fragment> fragments = getChildFragmentManager().getFragments();
            Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
            for (ActivityResultCaller activityResultCaller : fragments) {
                if (activityResultCaller instanceof q) {
                    ((q) activityResultCaller).onPageVisible(position);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pauseHeaderVideo() {
        cancelStartHeaderVideo();
        if (this.headerHasVideo && isAdded()) {
            getMViewBind().f38821x.onVideoPause();
        }
    }

    private final void releaseHeaderVideo() {
        cancelStartHeaderVideo();
        if (isAdded()) {
            MultiStandVideo wfHeaderVideo = getMViewBind().f38821x;
            Intrinsics.checkNotNullExpressionValue(wfHeaderVideo, "wfHeaderVideo");
            wfHeaderVideo.onVideoPause();
            wfHeaderVideo.release();
        }
    }

    private final void setPageContentVisible(boolean visible) {
        getMViewBind().f38802e.setVisibility(visible ? 0 : 8);
    }

    private final void setupTabs() {
        TextView textView;
        if (getMViewBind().f38820w.getAdapter() != null) {
            return;
        }
        getMViewBind().f38816s.L();
        for (LegendGameTabData legendGameTabData : this.tabTypes) {
            TabLayout.g gVarU = getMViewBind().f38816s.I().u(R.layout.layout_custom_tab_legend_game_category);
            Intrinsics.checkNotNullExpressionValue(gVarU, "setCustomView(...)");
            View viewG = gVarU.g();
            if (viewG != null && (textView = (TextView) viewG.findViewById(R.id.tabText)) != null) {
                String title = legendGameTabData.getTitle();
                if (title == null) {
                    title = "";
                }
                textView.setText(title);
            }
            getMViewBind().f38816s.l(gVarU, false);
        }
        getMViewBind().f38820w.setAdapter(new FragmentStateAdapter() { // from class: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment.setupTabs.2
            {
                super(LegendGameCategoryFragment.this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int position) {
                LegendGameInnerFragment.Companion companion = LegendGameInnerFragment.INSTANCE;
                int id2 = ((LegendGameTabData) LegendGameCategoryFragment.this.tabTypes.get(position)).getId();
                String title2 = ((LegendGameTabData) LegendGameCategoryFragment.this.tabTypes.get(position)).getTitle();
                if (title2 == null) {
                    title2 = "";
                }
                return companion.newInstance(id2, title2, position);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return LegendGameCategoryFragment.this.tabTypes.size();
            }
        });
        getMViewBind().f38816s.h(new TabLayout.d() { // from class: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment.setupTabs.3
            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabReselected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabSelected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                LegendGameCategoryFragment.this.getMViewBind().f38820w.setCurrentItem(tab.k());
                LegendGameCategoryFragment.this.applyTabStyle(tab, true);
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabUnselected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                LegendGameCategoryFragment.this.applyTabStyle(tab, false);
            }
        });
        getMViewBind().f38820w.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment.setupTabs.4
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                TabLayout.g gVarD = LegendGameCategoryFragment.this.getMViewBind().f38816s.D(position);
                if (gVarD != null) {
                    gVarD.r();
                }
                LegendGameCategoryFragment.this.notifyPageVisible(position);
            }
        });
        getMViewBind().f38820w.setOffscreenPageLimit(RangesKt___RangesKt.coerceAtMost(this.tabTypes.size(), 2));
        getMViewBind().f38820w.post(new Runnable() { // from class: com.join.kotlin.ui.legendgame.g
            @Override // java.lang.Runnable
            public final void run() {
                LegendGameCategoryFragment.setupTabs$lambda$14(this.f49270b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupTabs$lambda$14(LegendGameCategoryFragment legendGameCategoryFragment) {
        if (!legendGameCategoryFragment.isAdded() || legendGameCategoryFragment.getView() == null) {
            return;
        }
        legendGameCategoryFragment.getMViewBind().f38820w.setCurrentItem(0, false);
        TabLayout.g gVarD = legendGameCategoryFragment.getMViewBind().f38816s.D(0);
        if (gVarD != null) {
            gVarD.r();
        }
        legendGameCategoryFragment.notifyPageVisible(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tryStartHeaderVideo() {
        if (this.headerHasVideo && isAdded() && isResumed() && this.appBarExpanded) {
            final MultiStandVideo wfHeaderVideo = getMViewBind().f38821x;
            Intrinsics.checkNotNullExpressionValue(wfHeaderVideo, "wfHeaderVideo");
            if (wfHeaderVideo.getVisibility() == 0 && canAutoPlayHeaderVideo()) {
                cancelStartHeaderVideo();
                Runnable runnable = new Runnable() { // from class: com.join.kotlin.ui.legendgame.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        LegendGameCategoryFragment.tryStartHeaderVideo$lambda$9(this.f49260b, wfHeaderVideo);
                    }
                };
                this.startVideoRunnable = runnable;
                Handler handler = this.videoHandler;
                Intrinsics.checkNotNull(runnable);
                handler.postDelayed(runnable, 100L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void tryStartHeaderVideo$lambda$9(LegendGameCategoryFragment legendGameCategoryFragment, MultiStandVideo multiStandVideo) {
        if (legendGameCategoryFragment.headerHasVideo && legendGameCategoryFragment.isAdded() && legendGameCategoryFragment.isResumed() && legendGameCategoryFragment.appBarExpanded) {
            int currentState = multiStandVideo.getCurrentState();
            if (currentState == 0) {
                multiStandVideo.startPlayLogic();
            } else {
                if (currentState != 5) {
                    return;
                }
                multiStandVideo.onVideoResume(false);
            }
        }
    }

    private final void updateFeaturedGameDownload(CommonGameInfoBean game) {
        if (game.getG_info() == null || !isAdded()) {
            return;
        }
        try {
            bindFeaturedGameDownload(game);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void updateFeaturedGameProgress(CommonGameInfoBean game) {
        DownloadTask task;
        if (game.getG_info() == null || !isAdded() || (task = DlTaskManager.INSTANCE.getTask(game)) == null) {
            return;
        }
        int status = task.getStatus();
        if (status == 1 || status == 2 || status == 3 || status == 10 || status == 12) {
            getMViewBind().f38803f.d(task);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        getZoneViewModel().getHeaderData().observe(getViewLifecycleOwner(), new LegendGameCategoryFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.legendgame.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LegendGameCategoryFragment.createObserver$lambda$2(this.f49262b, (LegendGameHeaderData) obj);
            }
        }));
        getZoneViewModel().getZoneState().observe(getViewLifecycleOwner(), new LegendGameCategoryFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.legendgame.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LegendGameCategoryFragment.createObserver$lambda$3(this.f49268b, (ResultState) obj);
            }
        }));
        ((LegendGameCategoryViewModel) getMViewModel()).getTabData().observe(getViewLifecycleOwner(), new LegendGameCategoryFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.legendgame.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LegendGameCategoryFragment.createObserver$lambda$4(this.f49269b, (ResultState) obj);
            }
        }));
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        FrameLayout loadContent = getMViewBind().f38814q;
        Intrinsics.checkNotNullExpressionValue(loadContent, "loadContent");
        this.loadSir = CustomViewExtKt.loadServiceInit(loadContent, new Function0() { // from class: com.join.kotlin.ui.legendgame.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegendGameCategoryFragment.initView$lambda$0(this.f49249b);
            }
        });
        getMViewBind().f38813p.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.legendgame.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LegendGameCategoryFragment.initView$lambda$1(this.f49259b, view);
            }
        });
        getMViewBind().f38800c.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new AppBarStateChangeListener() { // from class: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment.initView.3

            /* JADX INFO: renamed from: com.join.kotlin.ui.legendgame.LegendGameCategoryFragment$initView$3$WhenMappings */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[AppBarStateChangeListener.State.values().length];
                    try {
                        iArr[AppBarStateChangeListener.State.EXPANDED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[AppBarStateChangeListener.State.COLLAPSED.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[AppBarStateChangeListener.State.IDLE.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // com.join.android.app.component.xrecyclerview.AppBarStateChangeListener
            public void onStateChanged(AppBarLayout appBarLayout, AppBarStateChangeListener.State state) {
                Intrinsics.checkNotNullParameter(appBarLayout, "appBarLayout");
                Intrinsics.checkNotNullParameter(state, "state");
                int i10 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i10 == 1) {
                    LegendGameCategoryFragment.this.appBarExpanded = true;
                    LegendGameCategoryFragment.this.tryStartHeaderVideo();
                } else {
                    if (i10 != 2 && i10 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    LegendGameCategoryFragment.this.appBarExpanded = false;
                    LegendGameCategoryFragment.this.pauseHeaderVideo();
                }
            }
        });
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
        loadZoneData();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountChangeEvent(@NotNull com.join.mgps.event.b event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if ((event.b() == 2 || event.b() == 4) && isAdded()) {
            loadZoneData();
        }
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

    @Override // com.join.kotlin.base.fragment.BaseVmVbFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        cancelStartHeaderVideo();
        releaseHeaderVideo();
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        CommonGameInfoBean commonGameInfoBean = this.headerGame;
        if (commonGameInfoBean == null) {
            return;
        }
        int iC = downloadTaskEvent.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7) {
            if (iC == 8) {
                updateFeaturedGameProgress(commonGameInfoBean);
                return;
            } else if (iC != 48) {
                switch (iC) {
                }
                return;
            }
        }
        updateFeaturedGameDownload(commonGameInfoBean);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void onPageVisible() {
        super.onPageVisible();
        tryStartHeaderVideo();
        if (!this.legendPageExposed) {
            this.legendPageExposed = true;
            t.l(requireContext()).R1(Event.commonExp, LegendGameListMapper.INSTANCE.legendPageExpExtBean().buildScene().toExt());
        }
        if (getMViewBind().f38820w.getAdapter() != null) {
            notifyPageVisible(getMViewBind().f38820w.getCurrentItem());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        pauseHeaderVideo();
        super.onPause();
    }
}
