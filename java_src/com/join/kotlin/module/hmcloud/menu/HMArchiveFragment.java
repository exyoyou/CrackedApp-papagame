package com.join.kotlin.module.hmcloud.menu;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.lm;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.mgps.dto.hmcloud.HMMenuAction;
import com.join.mgps.hmcloud.HMCloudGameManager;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.text.SimpleDateFormat;
import java.util.Date;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001c\u0010\u001b\u001a\u00020\u00192\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0011H\u0002J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fR\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006 "}, d2 = {"Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmArchiveBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmArchiveBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmArchiveBinding;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "measure", "toFormatTime", "", "date", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMArchiveFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMArchiveFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMArchiveFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,110:1\n172#2,9:111\n*S KotlinDebug\n*F\n+ 1 HMArchiveFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMArchiveFragment\n*L\n23#1:111,9\n*E\n"})
public final class HMArchiveFragment extends Fragment {
    public lm binding;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel;

    public HMArchiveFragment() {
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(HMCloudMainViewModel.class), new Function0<ViewModelStore>() { // from class: com.join.kotlin.module.hmcloud.menu.HMArchiveFragment$special$$inlined$activityViewModels$default$1
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
        }, new Function0<CreationExtras>() { // from class: com.join.kotlin.module.hmcloud.menu.HMArchiveFragment$special$$inlined$activityViewModels$default$2
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.join.kotlin.module.hmcloud.menu.HMArchiveFragment$special$$inlined$activityViewModels$default$3
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

    private final void measure(final ViewGroup container, final View view) {
        if (container != null) {
            container.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.menu.c
                @Override // java.lang.Runnable
                public final void run() {
                    HMArchiveFragment.measure$lambda$6$lambda$5(container, view);
                }
            });
            return;
        }
        int dimensionPixelSize = getResources().getDisplayMetrics().widthPixels - getResources().getDimensionPixelSize(R.dimen.wdp210);
        int i10 = getResources().getDisplayMetrics().heightPixels;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec(dimensionPixelSize, 1073741824), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
            view.setLayoutParams(new FrameLayout.LayoutParams(dimensionPixelSize, i10));
            view.layout(0, 0, dimensionPixelSize, i10);
            view.requestLayout();
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void measure$lambda$6$lambda$5(ViewGroup viewGroup, View view) {
        int measuredWidth = viewGroup.getMeasuredWidth();
        int measuredHeight = viewGroup.getMeasuredHeight();
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            view.setLayoutParams(new FrameLayout.LayoutParams(measuredWidth, measuredHeight));
            view.layout(0, 0, measuredWidth, measuredHeight);
            view.requestLayout();
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(HMArchiveFragment hMArchiveFragment, View view) {
        hMArchiveFragment.getViewModel().getMenuAction().postValue(HMMenuAction.MenuClose.INSTANCE);
        hMArchiveFragment.getViewModel().getMenuAction().postValue(HMMenuAction.ShowUploadArchive.INSTANCE);
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(hMArchiveFragment.requireContext());
        Event event = Event.commonClick;
        Ext ext = new Ext();
        ext.setTypeCode("AD");
        ext.setChatId("cloudGameSave");
        ext.setResourceId(hMArchiveFragment.getViewModel().getGameId());
        ext.setScenesCode("悟饭云存档");
        if (hMArchiveFragment.getViewModel().isCloudVip()) {
            ext.setResultCode("cloudGameVip");
        }
        Unit unit = Unit.INSTANCE;
        tVarL.R1(event, ext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(HMArchiveFragment hMArchiveFragment, View view) {
        hMArchiveFragment.getViewModel().getToast().postValue("关闭云主机后，将自动在云端生成存档，后续游戏可继续游戏进度");
    }

    @NotNull
    public final lm getBinding() {
        lm lmVar = this.binding;
        if (lmVar != null) {
            return lmVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    public final HMCloudMainViewModel getViewModel() {
        return (HMCloudMainViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(lm.inflate(inflater, container, false));
        measure(container, getBinding().getRoot());
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        HMCloudGameManager.f fVarB0 = HMCloudGameManager.W().b0();
        if (fVarB0 != null) {
            getBinding().f41408i.setVisibility(fVarB0.f71683e == 1 ? 0 : 8);
            long j10 = fVarB0.f71698t;
            getBinding().f41402c.setText(j10 > 0 ? toFormatTime(j10) : "");
        }
        getBinding().f41407h.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMArchiveFragment.onViewCreated$lambda$2(this.f48671b, view2);
            }
        });
        getBinding().f41403d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMArchiveFragment.onViewCreated$lambda$3(this.f48675b, view2);
            }
        });
    }

    public final void setBinding(@NotNull lm lmVar) {
        Intrinsics.checkNotNullParameter(lmVar, "<set-?>");
        this.binding = lmVar;
    }

    @NotNull
    public final String toFormatTime(long date) {
        String str = new SimpleDateFormat("yyyy/MM/dd HH:mm").format(new Date(date));
        Intrinsics.checkNotNull(str);
        return str;
    }
}
