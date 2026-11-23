package com.join.kotlin.module.hmcloud.menu;

import android.annotation.NonNull;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.GameArchitectureType;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.nm;
import com.join.android.app.mgsim.wufun.databinding.p90;
import com.join.kotlin.module.hmcloud.bean.GuideState;
import com.join.kotlin.module.hmcloud.dialog.HMBaseFragmentDialog;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.mgps.customview.guideview.GuideBuilder;
import com.join.mgps.dto.hmcloud.HMMenuAction;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u0001002\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u0016J\u0006\u00107\u001a\u000204J\b\u00108\u001a\u000204H\u0002J\u000e\u00109\u001a\u0002042\u0006\u0010:\u001a\u00020\u000bJ\u000e\u0010;\u001a\u0002042\u0006\u0010<\u001a\u000206J\u001a\u0010=\u001a\u0002042\u0006\u0010>\u001a\u00020,2\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u0010?\u001a\u0002042\b\u0010@\u001a\u0004\u0018\u00010,J\u000e\u0010A\u001a\u0002042\u0006\u0010B\u001a\u00020CJ\u0006\u0010J\u001a\u000204J\u0006\u0010K\u001a\u000204J\u0006\u0010L\u001a\u000204J\u0010\u0010M\u001a\u0002042\u0006\u0010N\u001a\u00020OH\u0016J\b\u0010P\u001a\u000204H\u0016J\b\u0010Q\u001a\u000204H\u0016J\u0012\u0010R\u001a\u0004\u0018\u00010,2\u0006\u0010S\u001a\u00020\u000bH\u0002J\u0006\u0010Z\u001a\u000204R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001b\u0010\u001f\u001a\u00020 8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b!\u0010\"R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001c\u0010D\u001a\u0004\u0018\u00010EX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u001c\u0010T\u001a\u0004\u0018\u00010UX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010W\"\u0004\bX\u0010Y¨\u0006["}, d2 = {"Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;", "<init>", "()V", "tabAdapter", "Lcom/join/mgps/adapter/hmcloud/HMMenuItemAdapter;", "getTabAdapter", "()Lcom/join/mgps/adapter/hmcloud/HMMenuItemAdapter;", "setTabAdapter", "(Lcom/join/mgps/adapter/hmcloud/HMMenuItemAdapter;)V", "lastIndex", "", "getLastIndex", "()I", "setLastIndex", "(I)V", "settings", "Landroidx/fragment/app/Fragment;", "getSettings", "()Landroidx/fragment/app/Fragment;", "setSettings", "(Landroidx/fragment/app/Fragment;)V", "archive", "getArchive", "setArchive", "popRule", "Landroid/widget/PopupWindow;", "getPopRule", "()Landroid/widget/PopupWindow;", "setPopRule", "(Landroid/widget/PopupWindow;)V", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmMenuBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmMenuBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmMenuBinding;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onHiddenChanged", "", "hidden", "", "close", "refresh", "setTab", "index", "setRulePopVisible", "visible", "onViewCreated", "view", "showGuide1", TypedValues.AttributesType.S_TARGET, "setRemainTime", "time", "", "countDownTimer", "Landroid/os/CountDownTimer;", "getCountDownTimer", "()Landroid/os/CountDownTimer;", "setCountDownTimer", "(Landroid/os/CountDownTimer;)V", "startTimer", "stopTimer", "initObserver", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "onResume", "onDestroy", "getRecyclerViewItemView", "position", "keyGuideFragment", "Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;", "getKeyGuideFragment", "()Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;", "setKeyGuideFragment", "(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V", "showGuide2", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMMenuFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMenuFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMMenuFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,443:1\n172#2,9:444\n1#3:453\n*S KotlinDebug\n*F\n+ 1 HMMenuFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMMenuFragment\n*L\n44#1:444,9\n*E\n"})
public final class HMMenuFragment extends HMBaseFragmentDialog {

    @Nullable
    private Fragment archive;

    @Nullable
    private nm binding;

    @Nullable
    private CountDownTimer countDownTimer;

    @Nullable
    private HMKeyGuideFragment keyGuideFragment;
    private int lastIndex;

    @Nullable
    private PopupWindow popRule;

    @Nullable
    private Fragment settings;
    public h6.i tabAdapter;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel;

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.menu.HMMenuFragment$showGuide1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016¨\u0006\u000b"}, d2 = {"com/join/kotlin/module/hmcloud/menu/HMMenuFragment$showGuide1$1", "Lcom/join/mgps/customview/guideview/Component;", "getView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "getAnchor", "", "getFitPosition", "getXOffset", "getYOffset", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 implements com.join.mgps.customview.guideview.b {
        final /* synthetic */ Function0<Unit> $next;

        AnonymousClass1(Function0<Unit> function0) {
            this.$next = function0;
        }

        @Override // com.join.mgps.customview.guideview.b
        public int getAnchor() {
            return 1;
        }

        @Override // com.join.mgps.customview.guideview.b
        public int getFitPosition() {
            return 16;
        }

        @Override // com.join.mgps.customview.guideview.b
        public View getView(LayoutInflater inflater) {
            if (inflater == null) {
                return null;
            }
            final Function0<Unit> function0 = this.$next;
            p90 p90VarInflate = p90.inflate(inflater);
            Intrinsics.checkNotNullExpressionValue(p90VarInflate, "inflate(...)");
            p90VarInflate.f43283e.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    function0.invoke();
                }
            });
            return p90VarInflate.getRoot();
        }

        @Override // com.join.mgps.customview.guideview.b
        public int getXOffset() {
            return 0;
        }

        @Override // com.join.mgps.customview.guideview.b
        public int getYOffset() {
            return 0;
        }
    }

    public HMMenuFragment() {
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(HMCloudMainViewModel.class), new Function0<ViewModelStore>() { // from class: com.join.kotlin.module.hmcloud.menu.HMMenuFragment$special$$inlined$activityViewModels$default$1
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
        }, new Function0<CreationExtras>() { // from class: com.join.kotlin.module.hmcloud.menu.HMMenuFragment$special$$inlined$activityViewModels$default$2
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.join.kotlin.module.hmcloud.menu.HMMenuFragment$special$$inlined$activityViewModels$default$3
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

    private final View getRecyclerViewItemView(int position) {
        RecyclerView recyclerView;
        nm nmVar = this.binding;
        if (nmVar == null || (recyclerView = nmVar.f42418i) == null) {
            return null;
        }
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        boolean z10 = false;
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        if (position >= 0 && position < itemCount) {
            z10 = true;
        }
        if (!z10) {
            System.out.println((Object) ("position不合法：" + position + "（总数量：" + itemCount + (char) 65289));
            return null;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(position) : null;
        if (viewFindViewByPosition == null || recyclerView.getChildViewHolder(viewFindViewByPosition).getAdapterPosition() == position) {
            return viewFindViewByPosition;
        }
        System.out.println((Object) ("View已被复用，不属于position=" + position));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$34(HMMenuFragment hMMenuFragment, Long l10) {
        Intrinsics.checkNotNull(l10);
        hMMenuFragment.setRemainTime(l10.longValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$35(HMMenuFragment hMMenuFragment, Long l10) {
        hMMenuFragment.startTimer();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2$lambda$1(ViewGroup viewGroup, HMMenuFragment hMMenuFragment) {
        ConstraintLayout root;
        int measuredWidth = viewGroup.getMeasuredWidth();
        int measuredHeight = viewGroup.getMeasuredHeight();
        nm nmVar = hMMenuFragment.binding;
        if (nmVar == null || (root = nmVar.getRoot()) == null) {
            return;
        }
        root.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        root.setLayoutParams(new FrameLayout.LayoutParams(measuredWidth, measuredHeight));
        root.layout(0, 0, measuredWidth, measuredHeight);
        root.requestLayout();
        root.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$22$lambda$16(HMMenuFragment hMMenuFragment, int i10) {
        hMMenuFragment.setTab(i10);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$22$lambda$18(HMMenuFragment hMMenuFragment, View view) {
        hMMenuFragment.getViewModel().getMenuAction().postValue(HMMenuAction.BackToApp.INSTANCE);
        hMMenuFragment.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$22$lambda$19(HMMenuFragment hMMenuFragment, View view) {
        hMMenuFragment.getViewModel().getMenuAction().postValue(HMMenuAction.RelaunchGame.INSTANCE);
        hMMenuFragment.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$22$lambda$21(HMMenuFragment hMMenuFragment, View view) {
        hMMenuFragment.getViewModel().getMenuAction().postValue(HMMenuAction.AddTime.INSTANCE);
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(hMMenuFragment.requireContext());
        Event event = Event.commonClick;
        Ext ext = new Ext();
        ext.setTypeCode("btnBuy");
        ext.setChatId("cloudGameSetting");
        ext.setResourceId(hMMenuFragment.getViewModel().getGameId());
        ext.setScenesCode("时长入口");
        Unit unit = Unit.INSTANCE;
        tVarL.R1(event, ext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$23(HMMenuFragment hMMenuFragment, Boolean bool) {
        hMMenuFragment.getTabAdapter().g(bool != null ? bool.booleanValue() : false);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$26(final HMMenuFragment hMMenuFragment, GuideState guideState) {
        nm nmVar;
        RecyclerView recyclerView;
        if (guideState != null && (guideState instanceof GuideState.Page) && ((GuideState.Page) guideState).getIndex() == 1 && (nmVar = hMMenuFragment.binding) != null && (recyclerView = nmVar.f42418i) != null) {
            recyclerView.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.menu.n
                @Override // java.lang.Runnable
                public final void run() {
                    HMMenuFragment.onViewCreated$lambda$26$lambda$25$lambda$24(this.f48736b);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$26$lambda$25$lambda$24(HMMenuFragment hMMenuFragment) {
        View recyclerViewItemView = hMMenuFragment.getRecyclerViewItemView(3);
        if (recyclerViewItemView != null) {
            hMMenuFragment.getTabAdapter().f(3);
            hMMenuFragment.showGuide1(recyclerViewItemView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$28$lambda$27(FrameLayout frameLayout) {
        frameLayout.requestLayout();
        frameLayout.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onViewCreated$lambda$30$lambda$29(HMMenuFragment hMMenuFragment, DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        hMMenuFragment.getViewModel().dispatchEvent(keyEvent);
        return i10 == 4;
    }

    private final void refresh() {
        setTab(this.lastIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setRulePopVisible$lambda$12$lambda$11(TextView textView, TextView textView2, TextView textView3, Context context, TextView textView4, MessageCloudGamingPlaytimeResponse.PlaytimeSummary playtimeSummary) {
        String freeTime;
        String vipTime;
        String diamond;
        String diamondTime;
        String coinTime;
        String coin;
        String str = "0分钟";
        if (playtimeSummary == null || (freeTime = playtimeSummary.getFreeTime()) == null) {
            freeTime = "0分钟";
        }
        textView.setText(freeTime);
        if (playtimeSummary == null || (vipTime = playtimeSummary.getVipTime()) == null) {
            vipTime = "0分钟";
        }
        textView2.setText(vipTime);
        Object[] objArr = new Object[2];
        String str2 = "0";
        if (playtimeSummary == null || (diamond = playtimeSummary.getDiamond()) == null) {
            diamond = "0";
        }
        objArr[0] = diamond;
        if (playtimeSummary == null || (diamondTime = playtimeSummary.getDiamondTime()) == null) {
            diamondTime = "0分钟";
        }
        objArr[1] = diamondTime;
        textView3.setText(context.getString(R.string.cloud_remain_time_exchange, objArr));
        Object[] objArr2 = new Object[2];
        if (playtimeSummary != null && (coin = playtimeSummary.getCoin()) != null) {
            str2 = coin;
        }
        objArr2[0] = str2;
        if (playtimeSummary != null && (coinTime = playtimeSummary.getCoinTime()) != null) {
            str = coinTime;
        }
        objArr2[1] = str;
        textView4.setText(context.getString(R.string.cloud_remain_time_exchange, objArr2));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showGuide1$lambda$31(HMMenuFragment hMMenuFragment, Ref.ObjectRef<com.join.mgps.customview.guideview.d> objectRef) {
        HMCloudMainViewModel.guideNext$default(hMMenuFragment.getViewModel(), false, 1, null);
        com.join.mgps.customview.guideview.d dVar = objectRef.element;
        if (dVar != null) {
            dVar.e();
        }
        hMMenuFragment.close();
        return Unit.INSTANCE;
    }

    public final void close() {
        requireActivity().getSupportFragmentManager().beginTransaction().hide(this).commitAllowingStateLoss();
        dismiss();
    }

    @Nullable
    public final Fragment getArchive() {
        return this.archive;
    }

    @Nullable
    public final nm getBinding() {
        return this.binding;
    }

    @Nullable
    public final CountDownTimer getCountDownTimer() {
        return this.countDownTimer;
    }

    @Nullable
    public final HMKeyGuideFragment getKeyGuideFragment() {
        return this.keyGuideFragment;
    }

    public final int getLastIndex() {
        return this.lastIndex;
    }

    @Nullable
    public final PopupWindow getPopRule() {
        return this.popRule;
    }

    @Nullable
    public final Fragment getSettings() {
        return this.settings;
    }

    @NotNull
    public final h6.i getTabAdapter() {
        h6.i iVar = this.tabAdapter;
        if (iVar != null) {
            return iVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tabAdapter");
        return null;
    }

    @NotNull
    public final HMCloudMainViewModel getViewModel() {
        return (HMCloudMainViewModel) this.viewModel.getValue();
    }

    public final void initObserver() {
        getViewModel().getRemainTime().observe(requireActivity(), new HMMenuFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMMenuFragment.initObserver$lambda$34(this.f48746b, (Long) obj);
            }
        }));
        getViewModel().getPlayTime().observe(getViewLifecycleOwner(), new HMMenuFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMMenuFragment.initObserver$lambda$35(this.f48751b, (Long) obj);
            }
        }));
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable final ViewGroup container, @Nullable Bundle savedInstanceState) {
        ConstraintLayout root;
        LinearLayout linearLayout;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        nm nmVarInflate = nm.inflate(inflater, container, false);
        this.binding = nmVarInflate;
        if (nmVarInflate != null && (linearLayout = nmVarInflate.f42417h) != null) {
            linearLayout.setVisibility(HmcpManager.getInstance().getGameArchitectureType() == GameArchitectureType.ARM ? 0 : 8);
        }
        if (container != null) {
            container.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.menu.s
                @Override // java.lang.Runnable
                public final void run() {
                    HMMenuFragment.onCreateView$lambda$2$lambda$1(container, this);
                }
            });
        } else {
            int i10 = getResources().getDisplayMetrics().widthPixels;
            int i11 = getResources().getDisplayMetrics().heightPixels;
            nm nmVar = this.binding;
            if (nmVar != null && (root = nmVar.getRoot()) != null) {
                root.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
                root.setLayoutParams(new FrameLayout.LayoutParams(i10, i11));
                root.layout(0, 0, i10, i11);
                root.requestLayout();
                root.invalidate();
            }
        }
        nm nmVar2 = this.binding;
        Intrinsics.checkNotNull(nmVar2);
        ConstraintLayout root2 = nmVar2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        return root2;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        stopTimer();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        getViewModel().saveLastOpConfig();
        getViewModel().saveLastCommonConfig();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        getViewModel().getMenuAction().postValue(new HMMenuAction.OnMenuHide(hidden));
        if (hidden) {
            refresh();
        } else {
            getViewModel().getGameCfgInfoBySrv();
            getViewModel().requestPlaytimeSummary();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        getViewModel().requestPlaytimeSummary();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        final FrameLayout frameLayout;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initObserver();
        nm nmVar = this.binding;
        if (nmVar != null) {
            nmVar.f42414e.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f48775b.close();
                }
            });
            nmVar.f42419j.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f48779b.setRulePopVisible(true);
                }
            });
            setTabAdapter(new h6.i(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.w
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMMenuFragment.onViewCreated$lambda$22$lambda$16(this.f48782b, ((Integer) obj).intValue());
                }
            }));
            getTabAdapter().f(this.lastIndex);
            getTabAdapter().e(getViewModel().getCid());
            RecyclerView recyclerView = nmVar.f42418i;
            recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
            recyclerView.setAdapter(getTabAdapter());
            recyclerView.requestLayout();
            nmVar.f42412c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    HMMenuFragment.onViewCreated$lambda$22$lambda$18(this.f48787b, view2);
                }
            });
            nmVar.f42417h.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    HMMenuFragment.onViewCreated$lambda$22$lambda$19(this.f48792b, view2);
                }
            });
            nmVar.f42415f.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    HMMenuFragment.onViewCreated$lambda$22$lambda$21(this.f48796b, view2);
                }
            });
        }
        getViewModel().getShowKeyTips().observe(getViewLifecycleOwner(), new HMMenuFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMMenuFragment.onViewCreated$lambda$23(this.f48672b, (Boolean) obj);
            }
        }));
        getViewModel().getGuideState().observe(getViewLifecycleOwner(), new HMMenuFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMMenuFragment.onViewCreated$lambda$26(this.f48676b, (GuideState) obj);
            }
        }));
        getViewModel().getGameCfgInfoBySrv();
        getViewModel().requestPlaytimeSummary();
        setTab(this.lastIndex);
        startTimer();
        nm nmVar2 = this.binding;
        if (nmVar2 != null && (frameLayout = nmVar2.f42416g) != null) {
            frameLayout.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.menu.c0
                @Override // java.lang.Runnable
                public final void run() {
                    HMMenuFragment.onViewCreated$lambda$28$lambda$27(frameLayout);
                }
            });
        }
        final Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.join.kotlin.module.hmcloud.menu.o
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                    return HMMenuFragment.onViewCreated$lambda$30$lambda$29(this.f48741b, dialogInterface, i10, keyEvent);
                }
            });
            Window window = dialog.getWindow();
            if (window != null) {
                window.setCallback(new Window.Callback(dialog, this) { // from class: com.join.kotlin.module.hmcloud.menu.HMMenuFragment$onViewCreated$5$2
                    private final /* synthetic */ Window.Callback $$delegate_0;
                    final /* synthetic */ HMMenuFragment this$0;

                    {
                        this.this$0 = this;
                        Window window2 = dialog.getWindow();
                        Intrinsics.checkNotNull(window2);
                        this.$$delegate_0 = window2.getCallback();
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchGenericMotionEvent(MotionEvent event) {
                        return this.this$0.getViewModel().dispatchEvent(event);
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchKeyEvent(KeyEvent event) {
                        Intrinsics.checkNotNullParameter(event, "event");
                        return this.this$0.getViewModel().dispatchEvent(event);
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchKeyShortcutEvent(KeyEvent p10) {
                        return this.$$delegate_0.dispatchKeyShortcutEvent(p10);
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent p10) {
                        return this.$$delegate_0.dispatchPopulateAccessibilityEvent(p10);
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchTouchEvent(MotionEvent p10) {
                        return this.$$delegate_0.dispatchTouchEvent(p10);
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchTrackballEvent(MotionEvent p10) {
                        return this.$$delegate_0.dispatchTrackballEvent(p10);
                    }

                    @Override // android.view.Window.Callback
                    public void onActionModeFinished(ActionMode p10) {
                        this.$$delegate_0.onActionModeFinished(p10);
                    }

                    @Override // android.view.Window.Callback
                    public void onActionModeStarted(ActionMode p10) {
                        this.$$delegate_0.onActionModeStarted(p10);
                    }

                    @Override // android.view.Window.Callback
                    public void onAttachedToWindow() {
                        this.$$delegate_0.onAttachedToWindow();
                    }

                    @Override // android.view.Window.Callback
                    public void onContentChanged() {
                        this.$$delegate_0.onContentChanged();
                    }

                    @Override // android.view.Window.Callback
                    public boolean onCreatePanelMenu(int p10, @NonNull Menu p11) {
                        Intrinsics.checkNotNullParameter(p11, "p1");
                        return this.$$delegate_0.onCreatePanelMenu(p10, p11);
                    }

                    @Override // android.view.Window.Callback
                    @android.annotation.Nullable
                    public View onCreatePanelView(int p10) {
                        return this.$$delegate_0.onCreatePanelView(p10);
                    }

                    @Override // android.view.Window.Callback
                    public void onDetachedFromWindow() {
                        this.$$delegate_0.onDetachedFromWindow();
                    }

                    @Override // android.view.Window.Callback
                    public boolean onMenuItemSelected(int p10, @NonNull MenuItem p11) {
                        Intrinsics.checkNotNullParameter(p11, "p1");
                        return this.$$delegate_0.onMenuItemSelected(p10, p11);
                    }

                    @Override // android.view.Window.Callback
                    public boolean onMenuOpened(int p10, @NonNull Menu p11) {
                        Intrinsics.checkNotNullParameter(p11, "p1");
                        return this.$$delegate_0.onMenuOpened(p10, p11);
                    }

                    @Override // android.view.Window.Callback
                    public void onPanelClosed(int p10, @NonNull Menu p11) {
                        Intrinsics.checkNotNullParameter(p11, "p1");
                        this.$$delegate_0.onPanelClosed(p10, p11);
                    }

                    @Override // android.view.Window.Callback
                    public boolean onPreparePanel(int p10, @android.annotation.Nullable View p11, @NonNull Menu p12) {
                        Intrinsics.checkNotNullParameter(p12, "p2");
                        return this.$$delegate_0.onPreparePanel(p10, p11, p12);
                    }

                    @Override // android.view.Window.Callback
                    public boolean onSearchRequested() {
                        return this.$$delegate_0.onSearchRequested();
                    }

                    @Override // android.view.Window.Callback
                    public void onWindowAttributesChanged(WindowManager.LayoutParams p10) {
                        this.$$delegate_0.onWindowAttributesChanged(p10);
                    }

                    @Override // android.view.Window.Callback
                    public void onWindowFocusChanged(boolean p10) {
                        this.$$delegate_0.onWindowFocusChanged(p10);
                    }

                    @Override // android.view.Window.Callback
                    @android.annotation.Nullable
                    public ActionMode onWindowStartingActionMode(ActionMode.Callback p10) {
                        return this.$$delegate_0.onWindowStartingActionMode(p10);
                    }

                    @Override // android.view.Window.Callback
                    public boolean onSearchRequested(SearchEvent p10) {
                        return this.$$delegate_0.onSearchRequested(p10);
                    }

                    @Override // android.view.Window.Callback
                    @android.annotation.Nullable
                    public ActionMode onWindowStartingActionMode(ActionMode.Callback p10, int p11) {
                        return this.$$delegate_0.onWindowStartingActionMode(p10, p11);
                    }
                });
            }
        }
    }

    public final void setArchive(@Nullable Fragment fragment) {
        this.archive = fragment;
    }

    public final void setBinding(@Nullable nm nmVar) {
        this.binding = nmVar;
    }

    public final void setCountDownTimer(@Nullable CountDownTimer countDownTimer) {
        this.countDownTimer = countDownTimer;
    }

    public final void setKeyGuideFragment(@Nullable HMKeyGuideFragment hMKeyGuideFragment) {
        this.keyGuideFragment = hMKeyGuideFragment;
    }

    public final void setLastIndex(int i10) {
        this.lastIndex = i10;
    }

    public final void setPopRule(@Nullable PopupWindow popupWindow) {
        this.popRule = popupWindow;
    }

    public final void setRemainTime(long time) {
        TextView textView;
        TextView textView2;
        if (time <= 0) {
            nm nmVar = this.binding;
            if (nmVar == null || (textView2 = nmVar.f42420k) == null) {
                return;
            }
            textView2.setText("已到期");
            return;
        }
        nm nmVar2 = this.binding;
        if (nmVar2 == null || (textView = nmVar2.f42420k) == null) {
            return;
        }
        textView.setText(getViewModel().formatRemainTime(time));
    }

    public final void setRulePopVisible(boolean visible) {
        LinearLayout linearLayout;
        PopupWindow popupWindow;
        if (!visible) {
            PopupWindow popupWindow2 = this.popRule;
            if (popupWindow2 != null) {
                popupWindow2.dismiss();
                return;
            }
            return;
        }
        if (this.popRule == null) {
            View viewInflate = getLayoutInflater().inflate(R.layout.layout_hm_remain_time_pop, (ViewGroup) null);
            final TextView textView = (TextView) viewInflate.findViewById(R.id.tv_free_time);
            final TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_vip_time);
            final TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_diamond);
            final TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_coin);
            this.popRule = new PopupWindow(viewInflate, -2, -2);
            final Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            getViewModel().getPlaytimeSummary().observe(getViewLifecycleOwner(), new HMMenuFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.r
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMMenuFragment.setRulePopVisible$lambda$12$lambda$11(textView, textView2, textView3, contextRequireContext, textView4, (MessageCloudGamingPlaytimeResponse.PlaytimeSummary) obj);
                }
            }));
            PopupWindow popupWindow3 = this.popRule;
            if (popupWindow3 != null) {
                popupWindow3.setOutsideTouchable(true);
            }
            Unit unit = Unit.INSTANCE;
        }
        PopupWindow popupWindow4 = this.popRule;
        if (popupWindow4 != null && popupWindow4.isShowing()) {
            return;
        }
        getViewModel().requestPlaytimeSummary();
        nm nmVar = this.binding;
        if (nmVar == null || (linearLayout = nmVar.f42419j) == null || (popupWindow = this.popRule) == null) {
            return;
        }
        popupWindow.showAsDropDown(linearLayout);
    }

    public final void setSettings(@Nullable Fragment fragment) {
        this.settings = fragment;
    }

    public final void setTab(int index) {
        if (index > 3) {
            return;
        }
        if (index == 3) {
            showGuide2();
            return;
        }
        if (index == 2) {
            HMCloudMainViewModel viewModel = getViewModel();
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            HMCloudMainViewModel.feedback$default(viewModel, contextRequireContext, null, null, 6, null);
            return;
        }
        if (index == 0 || index == 1) {
            getTabAdapter().f(index);
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
        this.lastIndex = index;
        Fragment fragment = this.settings;
        if (fragment != null && index != 0) {
            fragmentTransactionBeginTransaction.hide(fragment);
        }
        Fragment fragment2 = this.archive;
        if (fragment2 != null && index != 1) {
            fragmentTransactionBeginTransaction.hide(fragment2);
        }
        if (index == 0) {
            if (this.settings == null) {
                this.settings = new HMSettingsFragment();
                Unit unit = Unit.INSTANCE;
            }
            Fragment fragment3 = this.settings;
            if (fragment3 != null) {
                if (!fragment3.isAdded()) {
                    fragmentTransactionBeginTransaction.add(R.id.main, fragment3);
                }
                fragmentTransactionBeginTransaction.show(fragment3);
            }
        } else if (index == 1) {
            if (this.archive == null) {
                this.archive = new HMArchiveFragment();
                Unit unit2 = Unit.INSTANCE;
            }
            Fragment fragment4 = this.archive;
            if (fragment4 != null) {
                if (!fragment4.isAdded()) {
                    fragmentTransactionBeginTransaction.add(R.id.main, fragment4);
                }
                fragmentTransactionBeginTransaction.show(fragment4);
            }
        }
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    public final void setTabAdapter(@NotNull h6.i iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<set-?>");
        this.tabAdapter = iVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, com.join.mgps.customview.guideview.d] */
    public final void showGuide1(@Nullable View target) {
        if (target == null) {
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Function0 function0 = new Function0() { // from class: com.join.kotlin.module.hmcloud.menu.t
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HMMenuFragment.showGuide1$lambda$31(this.f48769b, objectRef);
            }
        };
        GuideBuilder guideBuilder = new GuideBuilder();
        guideBuilder.t(target).d(false).c(150);
        guideBuilder.a(new AnonymousClass1(function0));
        ?? B = guideBuilder.b();
        objectRef.element = B;
        B.l(true);
        com.join.mgps.customview.guideview.d dVar = (com.join.mgps.customview.guideview.d) objectRef.element;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        nm nmVar = this.binding;
        dVar.n(fragmentActivityRequireActivity, nmVar != null ? nmVar.getRoot() : null);
    }

    public final void showGuide2() {
        if (this.keyGuideFragment == null) {
            this.keyGuideFragment = new HMKeyGuideFragment();
            Unit unit = Unit.INSTANCE;
        }
        HMKeyGuideFragment hMKeyGuideFragment = this.keyGuideFragment;
        if (hMKeyGuideFragment != null) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("instruction", true);
            hMKeyGuideFragment.setArguments(bundle);
            hMKeyGuideFragment.show(getChildFragmentManager(), HMKeyGuideFragment.class.getSimpleName());
        }
    }

    public final void startTimer() {
        stopTimer();
        if (this.countDownTimer == null) {
            final long jCalcRemainTime = getViewModel().calcRemainTime() * 1000;
            this.countDownTimer = new CountDownTimer(jCalcRemainTime) { // from class: com.join.kotlin.module.hmcloud.menu.HMMenuFragment$startTimer$1$1
                @Override // android.os.CountDownTimer
                public void onFinish() {
                }

                @Override // android.os.CountDownTimer
                public void onTick(long millisUntilFinished) {
                    this.$this_run.getViewModel().getRemainTime().postValue(Long.valueOf(millisUntilFinished / 1000));
                }
            };
            Unit unit = Unit.INSTANCE;
        }
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.start();
        }
    }

    public final void stopTimer() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.countDownTimer = null;
    }
}
