package com.join.kotlin.module.hmcloud.menu;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.GameArchitectureType;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.mm;
import com.join.kotlin.module.hmcloud.bean.GuideState;
import com.join.kotlin.module.hmcloud.dialog.HMBaseFragmentDialog;
import com.join.kotlin.module.hmcloud.dialog.HMGuideKey1Dialog;
import com.join.kotlin.module.hmcloud.dialog.HMGuideKeyDialog;
import com.join.kotlin.module.hmcloud.pad.HMKeyData;
import com.join.kotlin.module.hmcloud.pad.HMOpView;
import com.join.kotlin.module.hmcloud.pad.SimpleHMOpEventListener;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.mgps.customview.guideview.GuideBuilder;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.hmcloud.CloudGamingCfgInfo;
import com.join.mgps.dto.hmcloud.GameButtonTips;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import com.join.mgps.dto.hmcloud.HMOpConfig;
import com.join.mgps.dto.hmcloud.HandleCfg;
import com.papa.sim.statistic.Event;
import com.papa91.arc.ext.Log;
import com.psk.kotlin.ext.CommonExtKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101H\u0016J&\u00102\u001a\u0004\u0018\u00010\u00172\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u0001062\b\u00100\u001a\u0004\u0018\u000101H\u0016J\u001a\u00107\u001a\u00020/2\u0006\u00108\u001a\u00020\u00172\b\u00100\u001a\u0004\u0018\u000101H\u0016J\b\u0010E\u001a\u00020/H\u0002J\u0010\u0010F\u001a\u00020/2\b\u0010G\u001a\u0004\u0018\u00010HJ\u0006\u0010I\u001a\u00020/J\u0010\u0010J\u001a\u00020/2\b\u0010K\u001a\u0004\u0018\u00010LJ\u0006\u0010S\u001a\u00020/J\u0006\u0010T\u001a\u00020/R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001f\u0010\u0010\u001a\u0010\u0012\f\u0012\n \u0013*\u0004\u0018\u00010\u00120\u00120\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001c\u0010M\u001a\u0004\u0018\u00010NX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010R¨\u0006U"}, d2 = {"Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmKeyGuideBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmKeyGuideBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmKeyGuideBinding;)V", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "instruction", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getInstruction", "()Landroidx/lifecycle/MutableLiveData;", "targetView", "Landroid/view/View;", "getTargetView", "()Landroid/view/View;", "setTargetView", "(Landroid/view/View;)V", "targetLayoutParams", "Landroid/widget/FrameLayout$LayoutParams;", "getTargetLayoutParams", "()Landroid/widget/FrameLayout$LayoutParams;", "setTargetLayoutParams", "(Landroid/widget/FrameLayout$LayoutParams;)V", "lastKey", "", "getLastKey", "()Ljava/lang/String;", "setLastKey", "(Ljava/lang/String;)V", "lastKeyToastTime", "", "getLastKeyToastTime", "()J", "setLastKeyToastTime", "(J)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", "view", "guide3Dialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;", "getGuide3Dialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;", "setGuide3Dialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;)V", "guide31Dialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;", "getGuide31Dialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;", "setGuide31Dialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;)V", "guideFinish", "showGuide3Dialog", "item", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "showGuide3", "loadKey", "config", "Lcom/join/mgps/dto/hmcloud/HMOpConfig;", "guide", "Lcom/join/mgps/customview/guideview/Guide;", "getGuide", "()Lcom/join/mgps/customview/guideview/Guide;", "setGuide", "(Lcom/join/mgps/customview/guideview/Guide;)V", "guide2Next", "showGuide2", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMKeyGuideFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMKeyGuideFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,359:1\n172#2,9:360\n10#3:369\n10#3:370\n295#4,2:371\n295#4,2:373\n*S KotlinDebug\n*F\n+ 1 HMKeyGuideFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment\n*L\n46#1:360,9\n175#1:369\n185#1:370\n188#1:371,2\n203#1:373,2\n*E\n"})
public final class HMKeyGuideFragment extends HMBaseFragmentDialog {
    public mm binding;

    @Nullable
    private com.join.mgps.customview.guideview.d guide;

    @Nullable
    private HMGuideKey1Dialog guide31Dialog;

    @Nullable
    private HMGuideKeyDialog guide3Dialog;

    @NotNull
    private final MutableLiveData<Boolean> instruction = new MutableLiveData<>(Boolean.FALSE);

    @Nullable
    private String lastKey;
    private long lastKeyToastTime;

    @Nullable
    private FrameLayout.LayoutParams targetLayoutParams;

    @Nullable
    private View targetView;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel;

    public HMKeyGuideFragment() {
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(HMCloudMainViewModel.class), new Function0<ViewModelStore>() { // from class: com.join.kotlin.module.hmcloud.menu.HMKeyGuideFragment$special$$inlined$activityViewModels$default$1
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
        }, new Function0<CreationExtras>() { // from class: com.join.kotlin.module.hmcloud.menu.HMKeyGuideFragment$special$$inlined$activityViewModels$default$2
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.join.kotlin.module.hmcloud.menu.HMKeyGuideFragment$special$$inlined$activityViewModels$default$3
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
    public final void guideFinish() {
        getViewModel().guideNext(true);
        Boolean value = this.instruction.getValue();
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.areEqual(value, bool)) {
            return;
        }
        this.instruction.postValue(bool);
        ExtBean extBeanBuildScene = new ExtBean().setChatId("cloudGameSetting").setTypeCode("btnOk").setScenesCode("完成").buildScene();
        Intrinsics.checkNotNullExpressionValue(extBeanBuildScene, "buildScene(...)");
        com.papa.sim.statistic.t.l(getContext()).R1(Event.commonClick, extBeanBuildScene.toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadKey$lambda$20$lambda$19(HMKeyGuideFragment hMKeyGuideFragment, HMKeyItem item, View view, FrameLayout.LayoutParams lp) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(lp, "lp");
        HMKeyItem.Guide guide = item.getGuide();
        if ((guide != null ? guide.getIndex() : null) != null) {
            hMKeyGuideFragment.targetView = view;
            hMKeyGuideFragment.targetLayoutParams = lp;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$2(final HMKeyGuideFragment hMKeyGuideFragment, Boolean bool) {
        mm binding = hMKeyGuideFragment.getBinding();
        binding.f41970c.setVisibility(bool.booleanValue() ? 0 : 8);
        binding.f41972e.setOnEventListener(new SimpleHMOpEventListener() { // from class: com.join.kotlin.module.hmcloud.menu.HMKeyGuideFragment$onViewCreated$2$1$1
            @Override // com.join.kotlin.module.hmcloud.pad.SimpleHMOpEventListener, com.join.kotlin.module.hmcloud.pad.OnHMOpEventListener
            public void onKeyItem(HMKeyItem item) {
                if (!Intrinsics.areEqual(this.this$0.getInstruction().getValue(), Boolean.TRUE)) {
                    this.this$0.guide2Next();
                    return;
                }
                String key = item != null ? item.getKey() : null;
                if (!CollectionsKt___CollectionsKt.contains(SetsKt__SetsKt.setOf((Object[]) new String[]{HMKeyData.JoyL.getKey(), HMKeyData.JoyR.getKey(), HMKeyData.Dpad.getKey(), HMKeyData.JoyWasd.getKey(), HMKeyData.JoyArrow.getKey(), HMKeyData.JoyDpad.getKey()}), key)) {
                    this.this$0.showGuide3Dialog(item);
                    return;
                }
                if (!Intrinsics.areEqual(this.this$0.getLastKey(), key) || System.currentTimeMillis() - this.this$0.getLastKeyToastTime() >= BaseCloudFileManager.ACK_TIMEOUT) {
                    this.this$0.setLastKey(key);
                    this.this$0.setLastKeyToastTime(System.currentTimeMillis());
                    Context contextRequireContext = this.this$0.requireContext();
                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                    CommonExtKt.toast(contextRequireContext, "可通过虚拟摇杆控制游戏方向");
                }
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$3(HMKeyGuideFragment hMKeyGuideFragment, HMOpConfig hMOpConfig) {
        hMKeyGuideFragment.loadKey(hMOpConfig);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$4(HMKeyGuideFragment hMKeyGuideFragment, GuideState guideState) {
        if (Intrinsics.areEqual(hMKeyGuideFragment.instruction.getValue(), Boolean.TRUE)) {
            return Unit.INSTANCE;
        }
        if (guideState instanceof GuideState.Page) {
            GuideState.Page page = (GuideState.Page) guideState;
            if (page.getIndex() != 2) {
                if (page.getIndex() == 3) {
                    hMKeyGuideFragment.showGuide3();
                } else {
                    hMKeyGuideFragment.dismiss();
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showGuide2$lambda$23$lambda$21(HMKeyGuideFragment hMKeyGuideFragment) {
        HMCloudMainViewModel.guideNext$default(hMKeyGuideFragment.getViewModel(), false, 1, null);
        com.join.mgps.customview.guideview.d dVar = hMKeyGuideFragment.guide;
        if (dVar != null) {
            dVar.e();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showGuide2$lambda$23$lambda$22(View view, int i10, int i11, int i12, int i13, final HMKeyGuideFragment hMKeyGuideFragment, boolean z10, boolean z11, float f10) {
        GuideBuilder guideBuilder = new GuideBuilder();
        int i14 = i10 / 2;
        guideBuilder.t(view).c(200).h(i14).d(false).h(i14).q(true).s(new Rect(i11, i12, i13 + i11, i10 + i12));
        guideBuilder.p(new GuideBuilder.b() { // from class: com.join.kotlin.module.hmcloud.menu.HMKeyGuideFragment$showGuide2$1$1$1
            @Override // com.join.mgps.customview.guideview.GuideBuilder.b
            public void onDismiss() {
                GuideState value = this.this$0.getViewModel().getGuideState().getValue();
                if ((value instanceof GuideState.Page) && ((GuideState.Page) value).getIndex() == 2) {
                    HMCloudMainViewModel.guideNext$default(this.this$0.getViewModel(), false, 1, null);
                }
            }

            @Override // com.join.mgps.customview.guideview.GuideBuilder.b
            public void onShown() {
            }
        });
        guideBuilder.a(new HMKeyGuideFragment$showGuide2$1$1$2(z10, z11, f10));
        com.join.mgps.customview.guideview.d dVarB = guideBuilder.b();
        hMKeyGuideFragment.guide = dVarB;
        if (dVarB != null) {
            dVarB.l(true);
        }
        com.join.mgps.customview.guideview.d dVar = hMKeyGuideFragment.guide;
        if (dVar != null) {
            dVar.n(hMKeyGuideFragment.requireActivity(), hMKeyGuideFragment.getBinding().getRoot());
        }
    }

    @NotNull
    public final mm getBinding() {
        mm mmVar = this.binding;
        if (mmVar != null) {
            return mmVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final com.join.mgps.customview.guideview.d getGuide() {
        return this.guide;
    }

    @Nullable
    public final HMGuideKey1Dialog getGuide31Dialog() {
        return this.guide31Dialog;
    }

    @Nullable
    public final HMGuideKeyDialog getGuide3Dialog() {
        return this.guide3Dialog;
    }

    @NotNull
    public final MutableLiveData<Boolean> getInstruction() {
        return this.instruction;
    }

    @Nullable
    public final String getLastKey() {
        return this.lastKey;
    }

    public final long getLastKeyToastTime() {
        return this.lastKeyToastTime;
    }

    @Nullable
    public final FrameLayout.LayoutParams getTargetLayoutParams() {
        return this.targetLayoutParams;
    }

    @Nullable
    public final View getTargetView() {
        return this.targetView;
    }

    @NotNull
    public final HMCloudMainViewModel getViewModel() {
        return (HMCloudMainViewModel) this.viewModel.getValue();
    }

    public final void guide2Next() {
        GuideState value = getViewModel().getGuideState().getValue();
        if ((value instanceof GuideState.Page) && ((GuideState.Page) value).getIndex() == 2) {
            HMCloudMainViewModel.guideNext$default(getViewModel(), false, 1, null);
            com.join.mgps.customview.guideview.d dVar = this.guide;
            if (dVar != null) {
                dVar.e();
            }
        }
    }

    public final void loadKey(@Nullable HMOpConfig config) {
        List<HMKeyItem> listEmptyList;
        List<HMKeyItem> keys;
        Object next;
        HMKeyItem hMKeyItem;
        List<HMKeyItem> keys2;
        Object next2;
        HMKeyItem hMKeyItem2;
        HMKeyItem hMKeyItem3;
        GameButtonTips game_button_tips;
        String default_position;
        mm binding = getBinding();
        CloudGamingCfgInfo gameCfgInfo = getViewModel().getGameCfgInfo();
        Object objFromJson = (gameCfgInfo == null || (game_button_tips = gameCfgInfo.getGame_button_tips()) == null || (default_position = game_button_tips.getDefault_position()) == null) ? null : JsonMapper.getInstance().fromJson(default_position, HMKeyItem.class);
        int i10 = 0;
        if (config != null && (keys2 = config.getKeys()) != null) {
            Iterator<T> it2 = keys2.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it2.next();
                    hMKeyItem2 = (HMKeyItem) next2;
                    hMKeyItem3 = (HMKeyItem) objFromJson;
                }
            } while (!(Intrinsics.areEqual(hMKeyItem2.getKey(), hMKeyItem3 != null ? hMKeyItem3.getKey() : null) && hMKeyItem2.getX() == hMKeyItem3.getX() && hMKeyItem2.getY() == hMKeyItem3.getY() && hMKeyItem2.getWidth() == hMKeyItem3.getWidth() && hMKeyItem2.getHeight() == hMKeyItem3.getHeight()));
            HMKeyItem hMKeyItem4 = (HMKeyItem) next2;
            if (hMKeyItem4 != null) {
                if (hMKeyItem4.getGuide() == null) {
                    hMKeyItem4.setGuide(new HMKeyItem.Guide());
                }
                HMKeyItem.Guide guide = hMKeyItem4.getGuide();
                if (guide != null) {
                    guide.setIndex(0);
                    i10 = 1;
                }
            }
        }
        if (i10 == 0 && config != null && (keys = config.getKeys()) != null) {
            Iterator<T> it3 = keys.iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it3.next();
                    hMKeyItem = (HMKeyItem) objFromJson;
                }
            } while (!Intrinsics.areEqual(((HMKeyItem) next).getKey(), hMKeyItem != null ? hMKeyItem.getKey() : null));
            HMKeyItem hMKeyItem5 = (HMKeyItem) next;
            if (hMKeyItem5 != null) {
                if (hMKeyItem5.getGuide() == null) {
                    hMKeyItem5.setGuide(new HMKeyItem.Guide());
                }
                HMKeyItem.Guide guide2 = hMKeyItem5.getGuide();
                if (guide2 != null) {
                    guide2.setIndex(Integer.valueOf(i10));
                }
            }
        }
        binding.f41972e.setOnItemLayout(new Function3() { // from class: com.join.kotlin.module.hmcloud.menu.h
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return HMKeyGuideFragment.loadKey$lambda$20$lambda$19(this.f48714b, (HMKeyItem) obj, (View) obj2, (FrameLayout.LayoutParams) obj3);
            }
        });
        HMOpView hMOpView = binding.f41972e;
        Float density = config != null ? config.getDensity() : null;
        Integer layoutWidth = config != null ? config.getLayoutWidth() : null;
        Integer layoutHeight = config != null ? config.getLayoutHeight() : null;
        if (config == null || (listEmptyList = config.getKeys()) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        hMOpView.loadKeys(density, layoutWidth, layoutHeight, listEmptyList);
        if (Intrinsics.areEqual(this.instruction.getValue(), Boolean.TRUE)) {
            return;
        }
        GuideState value = getViewModel().getGuideState().getValue();
        if ((value instanceof GuideState.Page) && ((GuideState.Page) value).getIndex() == 2) {
            showGuide2();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.instruction.postValue(Boolean.valueOf(arguments != null ? arguments.getBoolean("instruction") : false));
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(mm.inflate(inflater, container, false));
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        List<HandleCfg> handle_cfg;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        boolean z10 = true;
        getBinding().f41971d.setTranslateX(true);
        getBinding().f41970c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f48718b.dismiss();
            }
        });
        this.instruction.observe(getViewLifecycleOwner(), new HMKeyGuideFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMKeyGuideFragment.onViewCreated$lambda$2(this.f48722b, (Boolean) obj);
            }
        }));
        if (GameArchitectureType.X86 == HmcpManager.getInstance().getGameArchitectureType()) {
            CloudGamingCfgInfo gameCfgInfo = getViewModel().getGameCfgInfo();
            HandleCfg handleCfg = (gameCfgInfo == null || (handle_cfg = gameCfgInfo.getHandle_cfg()) == null) ? null : (HandleCfg) CollectionsKt___CollectionsKt.firstOrNull((List) handle_cfg);
            String url = handleCfg != null ? handleCfg.getUrl() : null;
            if (url != null && url.length() != 0) {
                z10 = false;
            }
            if (z10) {
                return;
            } else {
                getViewModel().loadTemplateKeys(handleCfg, new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.k
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return HMKeyGuideFragment.onViewCreated$lambda$3(this.f48726b, (HMOpConfig) obj);
                    }
                });
            }
        }
        getViewModel().getGuideState().observe(getViewLifecycleOwner(), new HMKeyGuideFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMKeyGuideFragment.onViewCreated$lambda$4(this.f48730b, (GuideState) obj);
            }
        }));
    }

    public final void setBinding(@NotNull mm mmVar) {
        Intrinsics.checkNotNullParameter(mmVar, "<set-?>");
        this.binding = mmVar;
    }

    public final void setGuide(@Nullable com.join.mgps.customview.guideview.d dVar) {
        this.guide = dVar;
    }

    public final void setGuide31Dialog(@Nullable HMGuideKey1Dialog hMGuideKey1Dialog) {
        this.guide31Dialog = hMGuideKey1Dialog;
    }

    public final void setGuide3Dialog(@Nullable HMGuideKeyDialog hMGuideKeyDialog) {
        this.guide3Dialog = hMGuideKeyDialog;
    }

    public final void setLastKey(@Nullable String str) {
        this.lastKey = str;
    }

    public final void setLastKeyToastTime(long j10) {
        this.lastKeyToastTime = j10;
    }

    public final void setTargetLayoutParams(@Nullable FrameLayout.LayoutParams layoutParams) {
        this.targetLayoutParams = layoutParams;
    }

    public final void setTargetView(@Nullable View view) {
        this.targetView = view;
    }

    public final void showGuide2() {
        FrameLayout.LayoutParams layoutParams;
        FrameLayout.LayoutParams layoutParams2;
        mm binding = getBinding();
        new Function0() { // from class: com.join.kotlin.module.hmcloud.menu.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HMKeyGuideFragment.showGuide2$lambda$23$lambda$21(this.f48694b);
            }
        };
        final View view = this.targetView;
        if (view == null) {
            Log.d("WF", "guide target view is null.");
            return;
        }
        FrameLayout.LayoutParams layoutParams3 = this.targetLayoutParams;
        final int i10 = layoutParams3 != null ? layoutParams3.leftMargin : 0;
        final int i11 = layoutParams3 != null ? layoutParams3.topMargin : 0;
        final int measuredWidth = (view.getMeasuredWidth() != 0 || (layoutParams2 = this.targetLayoutParams) == null) ? view.getMeasuredWidth() : layoutParams2.width;
        final int measuredHeight = (view.getMeasuredHeight() != 0 || (layoutParams = this.targetLayoutParams) == null) ? view.getMeasuredHeight() : layoutParams.height;
        Context context = view.getContext();
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.wdp120);
        context.getResources().getDimensionPixelSize(R.dimen.wdp50);
        final float dimension = context.getResources().getDimension(R.dimen.wdp28);
        boolean z10 = i10 < dimensionPixelSize;
        boolean z11 = (i11 + measuredHeight) + dimensionPixelSize > binding.f41972e.getMeasuredHeight();
        Log.d("WF", "guide target view: [" + i10 + ", " + i11 + "], [" + measuredWidth + ", " + measuredHeight + ']');
        final boolean z12 = z10;
        final boolean z13 = z11;
        view.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.menu.g
            @Override // java.lang.Runnable
            public final void run() {
                HMKeyGuideFragment.showGuide2$lambda$23$lambda$22(view, measuredHeight, i10, i11, measuredWidth, this, z12, z13, dimension);
            }
        });
    }

    public final void showGuide3() {
        GameButtonTips game_button_tips;
        String default_position;
        HMKeyItem hMKeyItem;
        CloudGamingCfgInfo gameCfgInfo = getViewModel().getGameCfgInfo();
        if (gameCfgInfo == null || (game_button_tips = gameCfgInfo.getGame_button_tips()) == null || (default_position = game_button_tips.getDefault_position()) == null || (hMKeyItem = (HMKeyItem) JsonMapper.getInstance().fromJson(default_position, HMKeyItem.class)) == null) {
            return;
        }
        showGuide3Dialog(hMKeyItem);
    }

    public final void showGuide3Dialog(@Nullable HMKeyItem item) {
        if (item != null) {
            HMKeyItem.Guide guide = item.getGuide();
            String img = guide != null ? guide.getImg() : null;
            if (img == null || img.length() == 0) {
                if (this.guide31Dialog == null) {
                    Context contextRequireContext = requireContext();
                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                    this.guide31Dialog = new HMGuideKey1Dialog(contextRequireContext);
                    Unit unit = Unit.INSTANCE;
                }
                HMGuideKey1Dialog hMGuideKey1Dialog = this.guide31Dialog;
                if (hMGuideKey1Dialog != null) {
                    hMGuideKey1Dialog.show();
                }
                HMGuideKey1Dialog hMGuideKey1Dialog2 = this.guide31Dialog;
                if (hMGuideKey1Dialog2 != null) {
                    hMGuideKey1Dialog2.setData(item);
                }
                HMGuideKey1Dialog hMGuideKey1Dialog3 = this.guide31Dialog;
                if (hMGuideKey1Dialog3 != null) {
                    hMGuideKey1Dialog3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.join.kotlin.module.hmcloud.menu.e
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            this.f48690b.guideFinish();
                        }
                    });
                    return;
                }
                return;
            }
            if (this.guide3Dialog == null) {
                Context contextRequireContext2 = requireContext();
                Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
                this.guide3Dialog = new HMGuideKeyDialog(contextRequireContext2);
                Unit unit2 = Unit.INSTANCE;
            }
            HMGuideKeyDialog hMGuideKeyDialog = this.guide3Dialog;
            if (hMGuideKeyDialog != null) {
                hMGuideKeyDialog.show();
            }
            HMGuideKeyDialog hMGuideKeyDialog2 = this.guide3Dialog;
            if (hMGuideKeyDialog2 != null) {
                hMGuideKeyDialog2.setData(item);
            }
            HMGuideKeyDialog hMGuideKeyDialog3 = this.guide3Dialog;
            if (hMGuideKeyDialog3 != null) {
                hMGuideKeyDialog3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.join.kotlin.module.hmcloud.menu.d
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        this.f48686b.guideFinish();
                    }
                });
            }
        }
    }
}
