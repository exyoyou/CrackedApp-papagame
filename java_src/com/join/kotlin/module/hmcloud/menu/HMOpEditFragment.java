package com.join.kotlin.module.hmcloud.menu;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.join.android.app.mgsim.wufun.databinding.y90;
import com.join.android.app.mgsim.wufun.databinding.z90;
import com.join.kotlin.module.hmcloud.dialog.HMBaseFragmentDialog;
import com.join.kotlin.module.hmcloud.dialog.HMConfirmDialog;
import com.join.kotlin.module.hmcloud.dialog.HMKeyAddDialog;
import com.join.kotlin.module.hmcloud.dialog.HMKeyCombineAddDialog;
import com.join.kotlin.module.hmcloud.dialog.HMKeyEditDialog;
import com.join.kotlin.module.hmcloud.dialog.HMKeyboardAddDialog;
import com.join.kotlin.module.hmcloud.dialog.HMKeyboardCombineAddDialog;
import com.join.kotlin.module.hmcloud.dialog.HMSaveCustomDialog;
import com.join.kotlin.module.hmcloud.pad.HMOpView;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import com.join.mgps.dto.hmcloud.HMMenuAction;
import com.join.mgps.dto.hmcloud.HMOpConfig;
import com.join.mgps.dto.hmcloud.HandleCfg;
import com.join.mgps.dto.hmcloud.HandleCfgSource;
import com.join.mgps.dto.hmcloud.HandleType;
import com.psk.kotlin.ext.CommonExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0006\u0010\"\u001a\u00020\u001fJ$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010)\u001a\u00020\u001f2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010*\u001a\u0004\u0018\u00010$J\u001a\u0010+\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020$2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010,\u001a\u00020\u001fH\u0002J\u0010\u0010-\u001a\u00020\u001f2\u0006\u0010.\u001a\u00020\u0017H\u0016J\u000e\u00105\u001a\u00020\u001f2\u0006\u00106\u001a\u000207J\u0006\u0010>\u001a\u00020\u001fJ\u0010\u0010?\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020AH\u0002J\u0006\u0010H\u001a\u00020\u001fJ\u0006\u0010a\u001a\u00020\u001fJ\u0006\u0010b\u001a\u00020\u001fJ\u0010\u0010c\u001a\u00020\u001f2\b\b\u0002\u0010d\u001a\u00020\u0017J\b\u0010e\u001a\u00020\u001fH\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0019\"\u0004\b\u001d\u0010\u001bR\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u00108\u001a\u0004\u0018\u000109X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001c\u0010B\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001c\u0010I\u001a\u0004\u0018\u00010JX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\u001c\u0010O\u001a\u0004\u0018\u00010PX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001c\u0010U\u001a\u0004\u0018\u00010VX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001c\u0010[\u001a\u0004\u0018\u00010\\X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`¨\u0006f"}, d2 = {"Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmOpEditPadBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmOpEditPadBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmOpEditPadBinding;)V", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", com.umeng.ccg.a.f84982i, "Lcom/join/mgps/dto/hmcloud/HandleCfg;", "getCfg", "()Lcom/join/mgps/dto/hmcloud/HandleCfg;", "setCfg", "(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V", "fold", "", "getFold", "()Z", "setFold", "(Z)V", "isAnimating", "setAnimating", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "initObserver", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "measure", "view", "onViewCreated", "refreshUi", "onHiddenChanged", "hidden", "keyEditDialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;", "getKeyEditDialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;", "setKeyEditDialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;)V", "showEditKeyDialog", "item", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "saveNameDialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;", "getSaveNameDialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;", "setSaveNameDialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)V", "showSaveNameDialog", "saveKeys", "projectName", "", "resetConfirmDialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;", "getResetConfirmDialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;", "setResetConfirmDialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)V", "showResetConfirmDialog", "addKeyDialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;", "getAddKeyDialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;", "setAddKeyDialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;)V", "addKeyKeyboardDialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;", "getAddKeyKeyboardDialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;", "setAddKeyKeyboardDialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;)V", "addCombineKeyDialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;", "getAddCombineKeyDialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;", "setAddCombineKeyDialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;)V", "addCombineKeyboardDialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;", "getAddCombineKeyboardDialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;", "setAddCombineKeyboardDialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;)V", "showAddKeyDialog", "showCombineKeyDialog", "startMenuAnimation", "newFold", "onDestroy", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMOpEditFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMOpEditFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMOpEditFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,365:1\n172#2,9:366\n*S KotlinDebug\n*F\n+ 1 HMOpEditFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMOpEditFragment\n*L\n31#1:366,9\n*E\n"})
public final class HMOpEditFragment extends HMBaseFragmentDialog {

    @Nullable
    private HMKeyCombineAddDialog addCombineKeyDialog;

    @Nullable
    private HMKeyboardCombineAddDialog addCombineKeyboardDialog;

    @Nullable
    private HMKeyAddDialog addKeyDialog;

    @Nullable
    private HMKeyboardAddDialog addKeyKeyboardDialog;

    @Nullable
    private z90 binding;
    public HandleCfg cfg;
    private boolean fold;
    private boolean isAnimating;

    @Nullable
    private HMKeyEditDialog keyEditDialog;

    @Nullable
    private HMConfirmDialog resetConfirmDialog;

    @Nullable
    private HMSaveCustomDialog saveNameDialog;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel;

    public HMOpEditFragment() {
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(HMCloudMainViewModel.class), new Function0<ViewModelStore>() { // from class: com.join.kotlin.module.hmcloud.menu.HMOpEditFragment$special$$inlined$activityViewModels$default$1
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
        }, new Function0<CreationExtras>() { // from class: com.join.kotlin.module.hmcloud.menu.HMOpEditFragment$special$$inlined$activityViewModels$default$2
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.join.kotlin.module.hmcloud.menu.HMOpEditFragment$special$$inlined$activityViewModels$default$3
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
    public static final Unit initObserver$lambda$2(HMOpEditFragment hMOpEditFragment, List list) {
        HMOpView hMOpView;
        z90 z90Var = hMOpEditFragment.binding;
        if (z90Var != null && (hMOpView = z90Var.f48141c) != null) {
            hMOpView.setPreventResize(false);
            final HMOpConfig value = hMOpEditFragment.getViewModel().getEditOpConfig().getValue();
            hMOpView.setOnInsetsChanged(new Function4() { // from class: com.join.kotlin.module.hmcloud.menu.s0
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    return HMOpEditFragment.initObserver$lambda$2$lambda$1$lambda$0(value, ((Float) obj).floatValue(), (Integer) obj2, (Integer) obj3, (List) obj4);
                }
            });
            Float density = value != null ? value.getDensity() : null;
            Integer layoutWidth = value != null ? value.getLayoutWidth() : null;
            Integer layoutHeight = value != null ? value.getLayoutHeight() : null;
            Intrinsics.checkNotNull(list);
            hMOpView.loadKeys(density, layoutWidth, layoutHeight, list);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$2$lambda$1$lambda$0(HMOpConfig hMOpConfig, float f10, Integer num, Integer num2, List keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        if (hMOpConfig != null) {
            hMOpConfig.setDensity(Float.valueOf(f10));
        }
        if (hMOpConfig != null) {
            hMOpConfig.setLayoutWidth(num);
        }
        if (hMOpConfig != null) {
            hMOpConfig.setLayoutHeight(num2);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void measure$lambda$16$lambda$15(ViewGroup viewGroup, View view) {
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
    public static final void onCreateView$lambda$10$lambda$3(HMOpEditFragment hMOpEditFragment, View view) {
        hMOpEditFragment.getViewModel().getMenuAction().postValue(new HMMenuAction.EditOpClose(null, false, 3, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$10$lambda$4(HMOpEditFragment hMOpEditFragment, View view) {
        hMOpEditFragment.startMenuAnimation(!hMOpEditFragment.fold);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$10$lambda$8(HMOpEditFragment hMOpEditFragment, View view) {
        HMOpView hMOpView;
        z90 z90Var = hMOpEditFragment.binding;
        if (z90Var != null && (hMOpView = z90Var.f48141c) != null) {
            hMOpView.setPreventResize(true);
        }
        hMOpEditFragment.showSaveNameDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$10$lambda$9(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$13$lambda$12(z90 z90Var, HMOpEditFragment hMOpEditFragment, HMKeyItem hMKeyItem) {
        if (hMKeyItem != null) {
            z90Var.f48141c.setPreventResize(true);
            hMOpEditFragment.showEditKeyDialog(hMKeyItem);
        }
        return Unit.INSTANCE;
    }

    private final void refreshUi() {
        y90 y90Var;
        z90 z90Var = this.binding;
        if (z90Var == null || (y90Var = z90Var.f48142d) == null) {
            return;
        }
        int cfg_type = getCfg().getCfg_type();
        if (cfg_type == HandleType.GAME_PAD.getValue()) {
            y90Var.f47630c.setText("添加摇杆按键");
        } else if (cfg_type == HandleType.KEYBOARD.getValue()) {
            y90Var.f47630c.setText("添加键盘按键");
        }
    }

    private final void saveKeys(String projectName) {
        int measuredWidth;
        int measuredHeight;
        HMOpView hMOpView;
        if (StringsKt__StringsKt.isBlank(StringsKt__StringsKt.trim((CharSequence) projectName).toString())) {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            CommonExtKt.toast(contextRequireContext, "请输入自定义方案名称");
            return;
        }
        z90 z90Var = this.binding;
        if (z90Var == null || (hMOpView = z90Var.f48141c) == null) {
            measuredWidth = requireContext().getResources().getDisplayMetrics().widthPixels;
            measuredHeight = requireContext().getResources().getDisplayMetrics().heightPixels;
        } else {
            measuredWidth = hMOpView.getMeasuredWidth();
            measuredHeight = hMOpView.getMeasuredHeight();
        }
        getViewModel().saveCustomOpConfig(projectName, getCfg().getCfg_type(), getCfg().getFrom() == null ? null : getCfg().getUrl(), Integer.valueOf(measuredWidth), Integer.valueOf(measuredHeight));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showAddKeyDialog$lambda$39$lambda$38(HMOpEditFragment hMOpEditFragment, String k10) {
        Intrinsics.checkNotNullParameter(k10, "k");
        hMOpEditFragment.getViewModel().addKey(k10);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showAddKeyDialog$lambda$42$lambda$41(HMOpEditFragment hMOpEditFragment, List k10) {
        Intrinsics.checkNotNullParameter(k10, "k");
        if (!k10.isEmpty()) {
            hMOpEditFragment.getViewModel().addKey((String) CollectionsKt___CollectionsKt.first(k10));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showCombineKeyDialog$lambda$45$lambda$44(HMOpEditFragment hMOpEditFragment, List it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        hMOpEditFragment.getViewModel().addCombineKey(it2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showCombineKeyDialog$lambda$48$lambda$47(HMOpEditFragment hMOpEditFragment, List it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        hMOpEditFragment.getViewModel().addCombineKey(it2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showEditKeyDialog$lambda$27$lambda$24(HMOpEditFragment hMOpEditFragment, HMKeyItem hMKeyItem, HMKeyItem target) {
        HMOpView hMOpView;
        Intrinsics.checkNotNullParameter(target, "target");
        z90 z90Var = hMOpEditFragment.binding;
        if (z90Var != null && (hMOpView = z90Var.f48141c) != null) {
            hMOpView.remove(hMKeyItem);
            hMOpEditFragment.getViewModel().getEditKeys().postValue(hMOpView.getKeys());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showEditKeyDialog$lambda$27$lambda$26(HMOpEditFragment hMOpEditFragment, HMKeyItem hMKeyItem, HMKeyItem target) {
        HMOpView hMOpView;
        Intrinsics.checkNotNullParameter(target, "target");
        z90 z90Var = hMOpEditFragment.binding;
        if (z90Var != null && (hMOpView = z90Var.f48141c) != null) {
            hMOpView.change(hMKeyItem, target);
            hMOpEditFragment.getViewModel().getEditKeys().postValue(hMOpView.getKeys());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showResetConfirmDialog$lambda$36$lambda$34(HMOpEditFragment hMOpEditFragment, HMConfirmDialog hMConfirmDialog) {
        hMOpEditFragment.getViewModel().resetEdit(hMOpEditFragment.getCfg());
        hMConfirmDialog.dismiss();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showResetConfirmDialog$lambda$36$lambda$35(HMConfirmDialog hMConfirmDialog) {
        hMConfirmDialog.dismiss();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showSaveNameDialog$lambda$30$lambda$29(HMOpEditFragment hMOpEditFragment, HMSaveCustomDialog hMSaveCustomDialog, String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        hMOpEditFragment.saveKeys(name);
        hMSaveCustomDialog.dismiss();
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void startMenuAnimation$default(HMOpEditFragment hMOpEditFragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        hMOpEditFragment.startMenuAnimation(z10);
    }

    @Nullable
    public final HMKeyCombineAddDialog getAddCombineKeyDialog() {
        return this.addCombineKeyDialog;
    }

    @Nullable
    public final HMKeyboardCombineAddDialog getAddCombineKeyboardDialog() {
        return this.addCombineKeyboardDialog;
    }

    @Nullable
    public final HMKeyAddDialog getAddKeyDialog() {
        return this.addKeyDialog;
    }

    @Nullable
    public final HMKeyboardAddDialog getAddKeyKeyboardDialog() {
        return this.addKeyKeyboardDialog;
    }

    @Nullable
    public final z90 getBinding() {
        return this.binding;
    }

    @NotNull
    public final HandleCfg getCfg() {
        HandleCfg handleCfg = this.cfg;
        if (handleCfg != null) {
            return handleCfg;
        }
        Intrinsics.throwUninitializedPropertyAccessException(com.umeng.ccg.a.f84982i);
        return null;
    }

    public final boolean getFold() {
        return this.fold;
    }

    @Nullable
    public final HMKeyEditDialog getKeyEditDialog() {
        return this.keyEditDialog;
    }

    @Nullable
    public final HMConfirmDialog getResetConfirmDialog() {
        return this.resetConfirmDialog;
    }

    @Nullable
    public final HMSaveCustomDialog getSaveNameDialog() {
        return this.saveNameDialog;
    }

    @NotNull
    public final HMCloudMainViewModel getViewModel() {
        return (HMCloudMainViewModel) this.viewModel.getValue();
    }

    public final void initObserver() {
        getViewModel().getEditKeys().observe(this, new HMOpEditFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.y0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMOpEditFragment.initObserver$lambda$2(this.f48793b, (List) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: isAnimating, reason: from getter */
    public final boolean getIsAnimating() {
        return this.isAnimating;
    }

    public final void measure(@Nullable final ViewGroup container, @Nullable final View view) {
        if (container != null) {
            container.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.menu.o0
                @Override // java.lang.Runnable
                public final void run() {
                    HMOpEditFragment.measure$lambda$16$lambda$15(container, view);
                }
            });
            return;
        }
        int i10 = getResources().getDisplayMetrics().widthPixels;
        int i11 = getResources().getDisplayMetrics().heightPixels;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
            view.setLayoutParams(new FrameLayout.LayoutParams(i10, i11));
            view.layout(0, 0, i10, i11);
            view.requestLayout();
            view.invalidate();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        HMMenuAction value = getViewModel().getMenuAction().getValue();
        if (value instanceof HMMenuAction.EditOp) {
            setCfg(((HMMenuAction.EditOp) value).getCfg());
        } else {
            getViewModel().getMenuAction().postValue(new HMMenuAction.EditOpClose(null, false, 3, null));
        }
        initObserver();
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        y90 y90Var;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        z90 z90VarInflate = z90.inflate(inflater, container, false);
        this.binding = z90VarInflate;
        if (z90VarInflate != null && (y90Var = z90VarInflate.f48142d) != null) {
            y90Var.f47632e.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.z0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HMOpEditFragment.onCreateView$lambda$10$lambda$3(this.f48797b, view);
                }
            });
            y90Var.f47631d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HMOpEditFragment.onCreateView$lambda$10$lambda$4(this.f48715b, view);
                }
            });
            y90Var.f47630c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.i0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f48719b.showAddKeyDialog();
                }
            });
            y90Var.f47633f.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f48723b.showCombineKeyDialog();
                }
            });
            y90Var.f47636i.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.k0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f48727b.showResetConfirmDialog();
                }
            });
            y90Var.f47637j.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.l0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HMOpEditFragment.onCreateView$lambda$10$lambda$8(this.f48731b, view);
                }
            });
            y90Var.f47634g.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.m0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HMOpEditFragment.onCreateView$lambda$10$lambda$9(view);
                }
            });
        }
        final z90 z90Var = this.binding;
        if (z90Var != null) {
            z90Var.f48141c.setEditMode(true);
            z90Var.f48141c.setOnEditKey(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.n0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpEditFragment.onCreateView$lambda$13$lambda$12(z90Var, this, (HMKeyItem) obj);
                }
            });
        }
        z90 z90Var2 = this.binding;
        Intrinsics.checkNotNull(z90Var2);
        ConstraintLayout root = z90Var2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getViewModel().getEditOpConfig().postValue(null);
        getViewModel().getEditKeys().postValue(new ArrayList());
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        HMMenuAction value = getViewModel().getMenuAction().getValue();
        if (value != null && (value instanceof HMMenuAction.EditOp)) {
            setCfg(((HMMenuAction.EditOp) value).getCfg());
        }
        getViewModel().loadEditKeys(getCfg());
        refreshUi();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Window window;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setSoftInputMode(32);
        }
        getViewModel().loadEditKeys(getCfg());
        refreshUi();
    }

    public final void setAddCombineKeyDialog(@Nullable HMKeyCombineAddDialog hMKeyCombineAddDialog) {
        this.addCombineKeyDialog = hMKeyCombineAddDialog;
    }

    public final void setAddCombineKeyboardDialog(@Nullable HMKeyboardCombineAddDialog hMKeyboardCombineAddDialog) {
        this.addCombineKeyboardDialog = hMKeyboardCombineAddDialog;
    }

    public final void setAddKeyDialog(@Nullable HMKeyAddDialog hMKeyAddDialog) {
        this.addKeyDialog = hMKeyAddDialog;
    }

    public final void setAddKeyKeyboardDialog(@Nullable HMKeyboardAddDialog hMKeyboardAddDialog) {
        this.addKeyKeyboardDialog = hMKeyboardAddDialog;
    }

    public final void setAnimating(boolean z10) {
        this.isAnimating = z10;
    }

    public final void setBinding(@Nullable z90 z90Var) {
        this.binding = z90Var;
    }

    public final void setCfg(@NotNull HandleCfg handleCfg) {
        Intrinsics.checkNotNullParameter(handleCfg, "<set-?>");
        this.cfg = handleCfg;
    }

    public final void setFold(boolean z10) {
        this.fold = z10;
    }

    public final void setKeyEditDialog(@Nullable HMKeyEditDialog hMKeyEditDialog) {
        this.keyEditDialog = hMKeyEditDialog;
    }

    public final void setResetConfirmDialog(@Nullable HMConfirmDialog hMConfirmDialog) {
        this.resetConfirmDialog = hMConfirmDialog;
    }

    public final void setSaveNameDialog(@Nullable HMSaveCustomDialog hMSaveCustomDialog) {
        this.saveNameDialog = hMSaveCustomDialog;
    }

    public final void showAddKeyDialog() {
        if (getCfg().getCfg_type() == HandleType.GAME_PAD.getValue()) {
            if (this.addKeyDialog == null) {
                this.addKeyDialog = new HMKeyAddDialog();
                Unit unit = Unit.INSTANCE;
            }
            HMKeyAddDialog hMKeyAddDialog = this.addKeyDialog;
            if (hMKeyAddDialog != null) {
                hMKeyAddDialog.show(getChildFragmentManager(), HMKeyAddDialog.class.getSimpleName());
                hMKeyAddDialog.setOnAddKey(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.u0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return HMOpEditFragment.showAddKeyDialog$lambda$39$lambda$38(this.f48776b, (String) obj);
                    }
                });
                return;
            }
            return;
        }
        if (this.addKeyKeyboardDialog == null) {
            this.addKeyKeyboardDialog = new HMKeyboardAddDialog();
            Unit unit2 = Unit.INSTANCE;
        }
        HMKeyboardAddDialog hMKeyboardAddDialog = this.addKeyKeyboardDialog;
        if (hMKeyboardAddDialog != null) {
            hMKeyboardAddDialog.show(getChildFragmentManager(), HMKeyboardAddDialog.class.getSimpleName());
            hMKeyboardAddDialog.setOnAddKey(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.v0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpEditFragment.showAddKeyDialog$lambda$42$lambda$41(this.f48780b, (List) obj);
                }
            });
        }
    }

    public final void showCombineKeyDialog() {
        if (getCfg().getCfg_type() == HandleType.GAME_PAD.getValue()) {
            if (this.addCombineKeyDialog == null) {
                this.addCombineKeyDialog = new HMKeyCombineAddDialog();
                Unit unit = Unit.INSTANCE;
            }
            HMKeyCombineAddDialog hMKeyCombineAddDialog = this.addCombineKeyDialog;
            if (hMKeyCombineAddDialog != null) {
                FragmentManager childFragmentManager = getChildFragmentManager();
                Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
                hMKeyCombineAddDialog.show(childFragmentManager, HMKeyCombineAddDialog.class.getSimpleName());
                hMKeyCombineAddDialog.setOnAddKey(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.p0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return HMOpEditFragment.showCombineKeyDialog$lambda$45$lambda$44(this.f48747b, (List) obj);
                    }
                });
                return;
            }
            return;
        }
        if (this.addCombineKeyboardDialog == null) {
            this.addCombineKeyboardDialog = new HMKeyboardCombineAddDialog();
            Unit unit2 = Unit.INSTANCE;
        }
        HMKeyboardCombineAddDialog hMKeyboardCombineAddDialog = this.addCombineKeyboardDialog;
        if (hMKeyboardCombineAddDialog != null) {
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager2, "getChildFragmentManager(...)");
            hMKeyboardCombineAddDialog.show(childFragmentManager2, HMKeyboardCombineAddDialog.class.getSimpleName());
            hMKeyboardCombineAddDialog.setOnAddKey(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.q0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpEditFragment.showCombineKeyDialog$lambda$48$lambda$47(this.f48752b, (List) obj);
                }
            });
        }
    }

    public final void showEditKeyDialog(@NotNull final HMKeyItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (this.keyEditDialog == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            this.keyEditDialog = new HMKeyEditDialog(contextRequireContext);
            Unit unit = Unit.INSTANCE;
        }
        HMKeyEditDialog hMKeyEditDialog = this.keyEditDialog;
        if (hMKeyEditDialog != null) {
            if (!hMKeyEditDialog.isShowing()) {
                hMKeyEditDialog.show();
            }
            hMKeyEditDialog.setItem(item);
            hMKeyEditDialog.setOnDelete(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.w0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpEditFragment.showEditKeyDialog$lambda$27$lambda$24(this.f48783b, item, (HMKeyItem) obj);
                }
            });
            hMKeyEditDialog.setOnEdit(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.x0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpEditFragment.showEditKeyDialog$lambda$27$lambda$26(this.f48788b, item, (HMKeyItem) obj);
                }
            });
        }
    }

    public final void showResetConfirmDialog() {
        if (this.resetConfirmDialog == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            this.resetConfirmDialog = new HMConfirmDialog(contextRequireContext);
            Unit unit = Unit.INSTANCE;
        }
        final HMConfirmDialog hMConfirmDialog = this.resetConfirmDialog;
        if (hMConfirmDialog != null) {
            if (!hMConfirmDialog.isShowing()) {
                hMConfirmDialog.show();
            }
            hMConfirmDialog.setBtnConfirm("重置");
            hMConfirmDialog.setCallback(new Function0() { // from class: com.join.kotlin.module.hmcloud.menu.g0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMOpEditFragment.showResetConfirmDialog$lambda$36$lambda$34(this.f48708b, hMConfirmDialog);
                }
            }, new Function0() { // from class: com.join.kotlin.module.hmcloud.menu.r0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMOpEditFragment.showResetConfirmDialog$lambda$36$lambda$35(hMConfirmDialog);
                }
            });
        }
    }

    public final void showSaveNameDialog() {
        String url = getCfg().getUrl();
        if ((url == null || url.length() == 0) && getViewModel().getCustomOpConfig().size() >= getViewModel().getMaxOpConfigSize()) {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            CommonExtKt.toast(contextRequireContext, "最多支持添加3个自定义方案");
            return;
        }
        if (this.saveNameDialog == null) {
            Context contextRequireContext2 = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
            this.saveNameDialog = new HMSaveCustomDialog(contextRequireContext2);
            Unit unit = Unit.INSTANCE;
        }
        final HMSaveCustomDialog hMSaveCustomDialog = this.saveNameDialog;
        if (hMSaveCustomDialog != null) {
            if (!hMSaveCustomDialog.isShowing()) {
                hMSaveCustomDialog.show();
            }
            Integer source = getCfg().getSource();
            int value = HandleCfgSource.CUSTOM.getValue();
            if (source != null && source.intValue() == value) {
                hMSaveCustomDialog.setName(getCfg().getName());
            } else {
                hMSaveCustomDialog.setName("");
            }
            hMSaveCustomDialog.setOnSave(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.t0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpEditFragment.showSaveNameDialog$lambda$30$lambda$29(this.f48771b, hMSaveCustomDialog, (String) obj);
                }
            });
        }
    }

    public final void startMenuAnimation(final boolean newFold) {
        z90 z90Var;
        float f10;
        if (this.isAnimating || (z90Var = this.binding) == null) {
            return;
        }
        Intrinsics.checkNotNull(z90Var);
        ConstraintLayout opEditMenu = z90Var.f48142d.f47635h;
        Intrinsics.checkNotNullExpressionValue(opEditMenu, "opEditMenu");
        z90 z90Var2 = this.binding;
        Intrinsics.checkNotNull(z90Var2);
        LinearLayout menuMain = z90Var2.f48142d.f47634g;
        Intrinsics.checkNotNullExpressionValue(menuMain, "menuMain");
        z90 z90Var3 = this.binding;
        Intrinsics.checkNotNull(z90Var3);
        ImageView arr = z90Var3.f48142d.f47631d;
        Intrinsics.checkNotNullExpressionValue(arr, "arr");
        float f11 = -menuMain.getMeasuredHeight();
        float f12 = 180.0f;
        float f13 = 0.0f;
        if (newFold) {
            f13 = f11;
            f11 = 0.0f;
            f12 = 0.0f;
            f10 = 180.0f;
        } else {
            f10 = 0.0f;
        }
        com.nineoldandroids.animation.l lVarS0 = com.nineoldandroids.animation.l.s0(opEditMenu, "translationY", f11, f13);
        lVarS0.l(300L);
        lVarS0.a(new com.nineoldandroids.animation.a.InterfaceC0985a() { // from class: com.join.kotlin.module.hmcloud.menu.HMOpEditFragment.startMenuAnimation.1
            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
            }

            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
                HMOpEditFragment.this.setAnimating(false);
                HMOpEditFragment.this.setFold(newFold);
            }

            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationRepeat(com.nineoldandroids.animation.a aVar) {
            }

            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationStart(com.nineoldandroids.animation.a aVar) {
                HMOpEditFragment.this.setAnimating(true);
            }
        });
        lVarS0.r();
        com.nineoldandroids.animation.l lVarS1 = com.nineoldandroids.animation.l.s0(arr, "rotation", f12, f10);
        arr.setPivotX(arr.getMeasuredWidth() / 2.0f);
        arr.setPivotY(arr.getMeasuredHeight() / 2.0f);
        lVarS1.l(300L);
        lVarS1.r();
    }
}
