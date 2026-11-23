package com.join.kotlin.module.hmcloud.menu;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.enums.TouchMode;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.qm;
import com.join.kotlin.module.hmcloud.dialog.HMConfirmDialog;
import com.join.kotlin.module.hmcloud.dialog.HMOpModeDialog;
import com.join.kotlin.module.hmcloud.dialog.HMOpTemplateDialog;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.mgps.dto.hmcloud.HMMenuAction;
import com.join.mgps.dto.hmcloud.HMOpConfig;
import com.join.mgps.dto.hmcloud.HandleCfg;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010C\u001a\u0004\u0018\u00010\u00172\u0006\u0010D\u001a\u00020E2\b\u0010F\u001a\u0004\u0018\u00010G2\b\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u001a\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020\u00172\b\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0010\u0010M\u001a\u00020K2\b\u0010N\u001a\u0004\u0018\u00010OJ\u0010\u0010P\u001a\u00020K2\b\u0010N\u001a\u0004\u0018\u00010OJ\u0006\u0010Q\u001a\u00020KJ\u000e\u0010R\u001a\u00020K2\u0006\u0010S\u001a\u00020TJ\u0006\u0010U\u001a\u00020KJ\u0010\u0010V\u001a\u00020K2\u0006\u0010W\u001a\u00020XH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0017X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\u0017X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0019\"\u0004\b!\u0010\u001bR\u001a\u0010\"\u001a\u00020\u0017X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0019\"\u0004\b$\u0010\u001bR\u001a\u0010%\u001a\u00020&X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001a\u0010+\u001a\u00020,X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001b\u00101\u001a\u0002028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b3\u00104R\u001c\u00107\u001a\u0004\u0018\u000108X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001c\u0010=\u001a\u0004\u0018\u00010>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010B¨\u0006Y"}, d2 = {"Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "sbTransparent", "Landroid/widget/SeekBar;", "getSbTransparent", "()Landroid/widget/SeekBar;", "setSbTransparent", "(Landroid/widget/SeekBar;)V", "tvTransparent", "Landroid/widget/TextView;", "getTvTransparent", "()Landroid/widget/TextView;", "setTvTransparent", "(Landroid/widget/TextView;)V", "sbSen", "getSbSen", "setSbSen", "tvSen", "getTvSen", "setTvSen", "ivVibrate", "Landroid/view/View;", "getIvVibrate", "()Landroid/view/View;", "setIvVibrate", "(Landroid/view/View;)V", "ivKeyHide", "getIvKeyHide", "setIvKeyHide", "ivZoom", "getIvZoom", "setIvZoom", "ivKeyboardInput", "getIvKeyboardInput", "setIvKeyboardInput", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsOpBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsOpBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsOpBinding;)V", "keyTypeAdapter", "Lcom/join/mgps/adapter/hmcloud/HMKeyTypeAdapter;", "getKeyTypeAdapter", "()Lcom/join/mgps/adapter/hmcloud/HMKeyTypeAdapter;", "setKeyTypeAdapter", "(Lcom/join/mgps/adapter/hmcloud/HMKeyTypeAdapter;)V", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "dialogOpMode", "Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;", "getDialogOpMode", "()Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;", "setDialogOpMode", "(Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;)V", "dialogOpTemplate", "Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;", "getDialogOpTemplate", "()Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;", "setDialogOpTemplate", "(Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;)V", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "showDeleteKeyTypeDialog", com.umeng.ccg.a.f84982i, "Lcom/join/mgps/dto/hmcloud/HandleCfg;", "onKeyTypeClick", "showOpModeDialog", "showOpTemplateDialog", "type", "", "initObserver", com.papa.controller.component.bluetooth.spp.c.f76484o, "msg", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMSettingsOpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMSettingsOpFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,303:1\n172#2,9:304\n1878#3,3:313\n*S KotlinDebug\n*F\n+ 1 HMSettingsOpFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment\n*L\n44#1:304,9\n288#1:313,3\n*E\n"})
public final class HMSettingsOpFragment extends Fragment {
    public qm binding;

    @Nullable
    private HMOpModeDialog dialogOpMode;

    @Nullable
    private HMOpTemplateDialog dialogOpTemplate;
    public View ivKeyHide;
    public View ivKeyboardInput;
    public View ivVibrate;
    public View ivZoom;
    public h6.d keyTypeAdapter;
    public SeekBar sbSen;
    public SeekBar sbTransparent;
    public TextView tvSen;
    public TextView tvTransparent;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel;

    public HMSettingsOpFragment() {
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(HMCloudMainViewModel.class), new Function0<ViewModelStore>() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsOpFragment$special$$inlined$activityViewModels$default$1
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
        }, new Function0<CreationExtras>() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsOpFragment$special$$inlined$activityViewModels$default$2
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsOpFragment$special$$inlined$activityViewModels$default$3
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
    public static final Unit initObserver$lambda$31(HMSettingsOpFragment hMSettingsOpFragment, HandleCfg handleCfg) {
        hMSettingsOpFragment.getKeyTypeAdapter().k(handleCfg);
        hMSettingsOpFragment.getKeyTypeAdapter().notifyDataSetChanged();
        hMSettingsOpFragment.getBinding().f43896g.invalidate();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initObserver$lambda$32(HMSettingsOpFragment hMSettingsOpFragment, List list) {
        h6.d keyTypeAdapter = hMSettingsOpFragment.getKeyTypeAdapter();
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        keyTypeAdapter.setItems(list);
        hMSettingsOpFragment.getKeyTypeAdapter().notifyDataSetChanged();
        hMSettingsOpFragment.getBinding().f43896g.invalidate();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$33(HMSettingsOpFragment hMSettingsOpFragment, Float f10) {
        int iRoundToInt = MathKt__MathJVMKt.roundToInt(f10.floatValue() * 100);
        if (hMSettingsOpFragment.getSbTransparent().getProgress() != iRoundToInt) {
            hMSettingsOpFragment.getSbTransparent().setProgress(iRoundToInt);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$34(HMSettingsOpFragment hMSettingsOpFragment, Float f10) {
        int iFloatValue = (int) ((f10.floatValue() / 2.0f) * 100);
        if (hMSettingsOpFragment.getSbSen().getProgress() != iFloatValue) {
            hMSettingsOpFragment.getSbSen().setProgress(iFloatValue);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$35(HMSettingsOpFragment hMSettingsOpFragment, Boolean bool) {
        hMSettingsOpFragment.getIvVibrate().setSelected(bool.booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$36(HMSettingsOpFragment hMSettingsOpFragment, Boolean bool) {
        hMSettingsOpFragment.getIvKeyHide().setSelected(bool.booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$37(HMSettingsOpFragment hMSettingsOpFragment, Boolean bool) {
        hMSettingsOpFragment.getIvZoom().setSelected(bool.booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$38(HMSettingsOpFragment hMSettingsOpFragment, Boolean bool) {
        hMSettingsOpFragment.getIvKeyboardInput().setSelected(bool.booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$41(HMSettingsOpFragment hMSettingsOpFragment, Integer num) {
        if (num == null) {
            return Unit.INSTANCE;
        }
        Integer num2 = (Integer) MapsKt__MapsKt.mapOf(TuplesKt.to(Integer.valueOf(TouchMode.TOUCH_MODE_NONE.ordinal()), Integer.valueOf(R.string.hm_touch_mode_0)), TuplesKt.to(Integer.valueOf(TouchMode.TOUCH_MODE_MOUSE.ordinal()), Integer.valueOf(R.string.hm_touch_mode_1)), TuplesKt.to(Integer.valueOf(TouchMode.TOUCH_MODE_SCREEN.ordinal()), Integer.valueOf(R.string.hm_touch_mode_2)), TuplesKt.to(Integer.valueOf(TouchMode.TOUCH_MODE_MULTIPLE.ordinal()), Integer.valueOf(R.string.hm_touch_mode_3)), TuplesKt.to(Integer.valueOf(TouchMode.TOUCH_MODE_SCREEN_SLIDE.ordinal()), Integer.valueOf(R.string.hm_touch_mode_4)), TuplesKt.to(Integer.valueOf(TouchMode.TOUCH_MODE_MOUSE_SLIDE.ordinal()), Integer.valueOf(R.string.hm_touch_mode_5))).get(num);
        int iIntValue = num2 != null ? num2.intValue() : R.string.hm_touch_mode;
        qm binding = hMSettingsOpFragment.getBinding();
        binding.f43914y.setText(hMSettingsOpFragment.getString(iIntValue));
        int i10 = 0;
        for (Object obj : CollectionsKt__CollectionsKt.listOf((Object[]) new LinearLayout[]{binding.f43908s, binding.f43905p, binding.f43909t, binding.f43907r, binding.f43910u, binding.f43906q})) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ((LinearLayout) obj).setSelected(i10 == num.intValue());
            i10 = i11;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$42(HMSettingsOpFragment hMSettingsOpFragment, List list) {
        HMOpTemplateDialog hMOpTemplateDialog = hMSettingsOpFragment.dialogOpTemplate;
        if (hMOpTemplateDialog != null) {
            Intrinsics.checkNotNull(list);
            hMOpTemplateDialog.setTemplateList(list, hMSettingsOpFragment.getViewModel().getCurrentKeyType().getValue());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$0(HMSettingsOpFragment hMSettingsOpFragment, HandleCfg it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        hMSettingsOpFragment.onKeyTypeClick(it2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$17$lambda$10(Function1 function1, View view) {
        function1.invoke(Integer.valueOf(TouchMode.TOUCH_MODE_NONE.ordinal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$17$lambda$11(Function1 function1, View view) {
        function1.invoke(Integer.valueOf(TouchMode.TOUCH_MODE_MOUSE.ordinal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$17$lambda$12(Function1 function1, View view) {
        function1.invoke(Integer.valueOf(TouchMode.TOUCH_MODE_SCREEN.ordinal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$17$lambda$13(Function1 function1, View view) {
        function1.invoke(Integer.valueOf(TouchMode.TOUCH_MODE_MULTIPLE.ordinal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$17$lambda$14(Function1 function1, View view) {
        function1.invoke(Integer.valueOf(TouchMode.TOUCH_MODE_SCREEN_SLIDE.ordinal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$17$lambda$15(Function1 function1, View view) {
        function1.invoke(Integer.valueOf(TouchMode.TOUCH_MODE_MOUSE_SLIDE.ordinal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$17$lambda$16(SimpleDraweeView v10, int i10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        v10.setController(Fresco.newDraweeControllerBuilder().N(ImageRequestBuilder.w(i10).a()).F(true).build());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$17$lambda$9(HMSettingsOpFragment hMSettingsOpFragment, int i10) {
        hMSettingsOpFragment.getViewModel().setTouchMode(i10);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$2(HMSettingsOpFragment hMSettingsOpFragment, HandleCfg it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        HMCloudMainViewModel viewModel = hMSettingsOpFragment.getViewModel();
        it2.setFrom("edit");
        viewModel.editCustomOpConfig(it2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$3(HMSettingsOpFragment hMSettingsOpFragment, HandleCfg it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        hMSettingsOpFragment.showDeleteKeyTypeDialog(it2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5(HMSettingsOpFragment hMSettingsOpFragment, View view) {
        hMSettingsOpFragment.getViewModel().getKeyVibrate().postValue(Boolean.valueOf(!hMSettingsOpFragment.getIvVibrate().isSelected()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$6(HMSettingsOpFragment hMSettingsOpFragment, View view) {
        hMSettingsOpFragment.getViewModel().getKeyHide().postValue(Boolean.valueOf(!hMSettingsOpFragment.getIvKeyHide().isSelected()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$7(HMSettingsOpFragment hMSettingsOpFragment, View view) {
        hMSettingsOpFragment.getViewModel().getPinchToZoom().postValue(Boolean.valueOf(!hMSettingsOpFragment.getIvZoom().isSelected()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$8(HMSettingsOpFragment hMSettingsOpFragment, View view) {
        hMSettingsOpFragment.getViewModel().getKeyboardInput().postValue(Boolean.valueOf(!hMSettingsOpFragment.getIvKeyboardInput().isSelected()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showDeleteKeyTypeDialog$lambda$19$lambda$18(HMSettingsOpFragment hMSettingsOpFragment, HandleCfg handleCfg, HMConfirmDialog hMConfirmDialog) {
        HMCloudMainViewModel.deleteCustomOpConfig$default(hMSettingsOpFragment.getViewModel(), handleCfg, null, 2, null);
        hMConfirmDialog.dismiss();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showOpModeDialog$lambda$22(HMSettingsOpFragment hMSettingsOpFragment) {
        hMSettingsOpFragment.showOpTemplateDialog(0);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showOpModeDialog$lambda$23(HMSettingsOpFragment hMSettingsOpFragment) {
        hMSettingsOpFragment.showOpTemplateDialog(1);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showOpTemplateDialog$lambda$26(HMSettingsOpFragment hMSettingsOpFragment, HandleCfg it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        MutableLiveData<HMMenuAction> menuAction = hMSettingsOpFragment.getViewModel().getMenuAction();
        it2.setFrom(null);
        menuAction.postValue(new HMMenuAction.EditOp(it2, false, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showOpTemplateDialog$lambda$28(final HMSettingsOpFragment hMSettingsOpFragment, final int i10, HandleCfg it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        hMSettingsOpFragment.getViewModel().deleteCustomOpConfig(it2, new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.s2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.showOpTemplateDialog$lambda$28$lambda$27(this.f48767b, i10, ((Boolean) obj).booleanValue());
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showOpTemplateDialog$lambda$28$lambda$27(HMSettingsOpFragment hMSettingsOpFragment, int i10, boolean z10) {
        hMSettingsOpFragment.getViewModel().loadTemplate(i10);
        hMSettingsOpFragment.getViewModel().refreshKeyboardTypeList();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showOpTemplateDialog$lambda$30(final HMSettingsOpFragment hMSettingsOpFragment, FrameLayout parent, HandleCfg cfg) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(cfg, "cfg");
        hMSettingsOpFragment.getViewModel().loadTemplateKeys(cfg, new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.t1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.showOpTemplateDialog$lambda$30$lambda$29(this.f48773b, (HMOpConfig) obj);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showOpTemplateDialog$lambda$30$lambda$29(HMSettingsOpFragment hMSettingsOpFragment, HMOpConfig hMOpConfig) {
        HMOpTemplateDialog hMOpTemplateDialog = hMSettingsOpFragment.dialogOpTemplate;
        if (hMOpTemplateDialog != null) {
            hMOpTemplateDialog.setTemplateKeys(hMOpConfig);
        }
        return Unit.INSTANCE;
    }

    private final void toast(String msg) {
        Toast.makeText(getContext(), msg, 0).show();
    }

    @NotNull
    public final qm getBinding() {
        qm qmVar = this.binding;
        if (qmVar != null) {
            return qmVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final HMOpModeDialog getDialogOpMode() {
        return this.dialogOpMode;
    }

    @Nullable
    public final HMOpTemplateDialog getDialogOpTemplate() {
        return this.dialogOpTemplate;
    }

    @NotNull
    public final View getIvKeyHide() {
        View view = this.ivKeyHide;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ivKeyHide");
        return null;
    }

    @NotNull
    public final View getIvKeyboardInput() {
        View view = this.ivKeyboardInput;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ivKeyboardInput");
        return null;
    }

    @NotNull
    public final View getIvVibrate() {
        View view = this.ivVibrate;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ivVibrate");
        return null;
    }

    @NotNull
    public final View getIvZoom() {
        View view = this.ivZoom;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ivZoom");
        return null;
    }

    @NotNull
    public final h6.d getKeyTypeAdapter() {
        h6.d dVar = this.keyTypeAdapter;
        if (dVar != null) {
            return dVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("keyTypeAdapter");
        return null;
    }

    @NotNull
    public final SeekBar getSbSen() {
        SeekBar seekBar = this.sbSen;
        if (seekBar != null) {
            return seekBar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sbSen");
        return null;
    }

    @NotNull
    public final SeekBar getSbTransparent() {
        SeekBar seekBar = this.sbTransparent;
        if (seekBar != null) {
            return seekBar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sbTransparent");
        return null;
    }

    @NotNull
    public final TextView getTvSen() {
        TextView textView = this.tvSen;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvSen");
        return null;
    }

    @NotNull
    public final TextView getTvTransparent() {
        TextView textView = this.tvTransparent;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvTransparent");
        return null;
    }

    @NotNull
    public final HMCloudMainViewModel getViewModel() {
        return (HMCloudMainViewModel) this.viewModel.getValue();
    }

    public final void initObserver() {
        getViewModel().getCurrentKeyType().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.h2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$31(this.f48717b, (HandleCfg) obj);
            }
        }));
        getViewModel().getKeyTypeList().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.i2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$32(this.f48721b, (List) obj);
            }
        }));
        getViewModel().getKeyAlpha().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.j2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$33(this.f48725b, (Float) obj);
            }
        }));
        getViewModel().getMouseSensitivity().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.k2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$34(this.f48729b, (Float) obj);
            }
        }));
        getViewModel().getKeyVibrate().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.l2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$35(this.f48733b, (Boolean) obj);
            }
        }));
        getViewModel().getKeyHide().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.m2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$36(this.f48735b, (Boolean) obj);
            }
        }));
        getViewModel().getPinchToZoom().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.n2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$37(this.f48740b, (Boolean) obj);
            }
        }));
        getViewModel().getKeyboardInput().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.o2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$38(this.f48745b, (Boolean) obj);
            }
        }));
        getViewModel().getTouchMode().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.q2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$41(this.f48754b, (Integer) obj);
            }
        }));
        getViewModel().getTemplateList().observe(getViewLifecycleOwner(), new HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.r2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.initObserver$lambda$42(this.f48762b, (List) obj);
            }
        }));
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(qm.inflate(inflater, container, false));
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setSbTransparent((SeekBar) root.findViewById(R.id.sbTransparent));
        setTvTransparent((TextView) root.findViewById(R.id.tvTransparent));
        setIvVibrate(root.findViewById(R.id.ivVibrate));
        setIvKeyHide(root.findViewById(R.id.ivKeyHide));
        setIvZoom(root.findViewById(R.id.ivZoom));
        setIvKeyboardInput(root.findViewById(R.id.ivKeyboardInput));
        setSbSen((SeekBar) root.findViewById(R.id.sbSen));
        setTvSen((TextView) root.findViewById(R.id.tvSen));
        return getBinding().getRoot();
    }

    public final void onKeyTypeClick(@Nullable HandleCfg cfg) {
        if (cfg != null) {
            if (!getViewModel().isAddKeyType(cfg)) {
                getViewModel().switchOpConfig(cfg);
            } else if (getViewModel().getCustomOpConfig().size() >= getViewModel().getMaxOpConfigSize()) {
                toast("最多支持添加3个自定义方案");
            } else {
                showOpModeDialog();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setKeyTypeAdapter(new h6.d(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.w2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.onViewCreated$lambda$0(this.f48786b, (HandleCfg) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.w1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.onViewCreated$lambda$2(this.f48785b, (HandleCfg) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.x1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.onViewCreated$lambda$3(this.f48790b, (HandleCfg) obj);
            }
        }));
        qm binding = getBinding();
        binding.f43896g.setLayoutManager(new LinearLayoutManager(requireActivity(), 0, false));
        binding.f43896g.setAdapter(getKeyTypeAdapter());
        final int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.wdp30);
        binding.f43896g.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsOpFragment$onViewCreated$4$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view2, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view2, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                super.getItemOffsets(outRect, view2, parent, state);
                outRect.right = dimensionPixelSize;
            }
        });
        binding.f43896g.dispatchConfigurationChanged(getResources().getConfiguration());
        initObserver();
        final int i10 = 100;
        getSbTransparent().setMax(100);
        Float value = getViewModel().getKeyAlpha().getValue();
        int iFloatValue = (int) ((value != null ? value.floatValue() : 1.0f) * 100);
        getSbTransparent().setProgress(iFloatValue);
        TextView tvTransparent = getTvTransparent();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(RangesKt___RangesKt.coerceIn(iFloatValue, 0, 100));
        sb2.append('%');
        tvTransparent.setText(sb2.toString());
        getSbTransparent().setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsOpFragment.onViewCreated.5
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                TextView tvTransparent2 = HMSettingsOpFragment.this.getTvTransparent();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(RangesKt___RangesKt.coerceIn(progress, 0, 100));
                sb3.append('%');
                tvTransparent2.setText(sb3.toString());
                HMSettingsOpFragment.this.getViewModel().getKeyAlpha().postValue(Float.valueOf(progress / 100.0f));
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
        getIvVibrate().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.y1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$5(this.f48794b, view2);
            }
        });
        getIvKeyHide().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.z1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$6(this.f48798b, view2);
            }
        });
        getIvZoom().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.a2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$7(this.f48673b, view2);
            }
        });
        getIvKeyboardInput().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.b2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$8(this.f48678b, view2);
            }
        });
        qm binding2 = getBinding();
        final Function1 function1 = new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.c2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsOpFragment.onViewCreated$lambda$17$lambda$9(this.f48684b, ((Integer) obj).intValue());
            }
        };
        binding2.f43908s.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.d2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$17$lambda$10(function1, view2);
            }
        });
        binding2.f43905p.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.f2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$17$lambda$11(function1, view2);
            }
        });
        binding2.f43909t.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.x2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$17$lambda$12(function1, view2);
            }
        });
        binding2.f43907r.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.y2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$17$lambda$13(function1, view2);
            }
        });
        binding2.f43910u.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.z2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$17$lambda$14(function1, view2);
            }
        });
        binding2.f43906q.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.u1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsOpFragment.onViewCreated$lambda$17$lambda$15(function1, view2);
            }
        });
        Function2 function2 = new Function2() { // from class: com.join.kotlin.module.hmcloud.menu.v1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return HMSettingsOpFragment.onViewCreated$lambda$17$lambda$16((SimpleDraweeView) obj, ((Integer) obj2).intValue());
            }
        };
        SimpleDraweeView sdvNone = binding2.f43902m;
        Intrinsics.checkNotNullExpressionValue(sdvNone, "sdvNone");
        function2.invoke(sdvNone, Integer.valueOf(R.drawable.ic_hm_gesture_0));
        SimpleDraweeView sdvMouse = binding2.f43899j;
        Intrinsics.checkNotNullExpressionValue(sdvMouse, "sdvMouse");
        function2.invoke(sdvMouse, Integer.valueOf(R.drawable.ic_hm_gesture_1));
        SimpleDraweeView sdvScreen = binding2.f43903n;
        Intrinsics.checkNotNullExpressionValue(sdvScreen, "sdvScreen");
        function2.invoke(sdvScreen, Integer.valueOf(R.drawable.ic_hm_gesture_2));
        SimpleDraweeView sdvMultiple = binding2.f43901l;
        Intrinsics.checkNotNullExpressionValue(sdvMultiple, "sdvMultiple");
        function2.invoke(sdvMultiple, Integer.valueOf(R.drawable.ic_hm_gesture_3));
        SimpleDraweeView sdvScreenSlide = binding2.f43904o;
        Intrinsics.checkNotNullExpressionValue(sdvScreenSlide, "sdvScreenSlide");
        function2.invoke(sdvScreenSlide, Integer.valueOf(R.drawable.ic_hm_gesture_4));
        SimpleDraweeView sdvMouseSlide = binding2.f43900k;
        Intrinsics.checkNotNullExpressionValue(sdvMouseSlide, "sdvMouseSlide");
        function2.invoke(sdvMouseSlide, Integer.valueOf(R.drawable.ic_hm_gesture_5));
        getSbSen().setMax(100);
        getSbSen().setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsOpFragment.onViewCreated.11
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                float f10 = progress / i10;
                TextView tvSen = this.getTvSen();
                StringBuilder sb3 = new StringBuilder();
                sb3.append((int) Math.rint(100 * f10));
                sb3.append('%');
                tvSen.setText(sb3.toString());
                this.getViewModel().getMouseSensitivity().postValue(Float.valueOf(f10 * 2.0f));
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
    }

    public final void setBinding(@NotNull qm qmVar) {
        Intrinsics.checkNotNullParameter(qmVar, "<set-?>");
        this.binding = qmVar;
    }

    public final void setDialogOpMode(@Nullable HMOpModeDialog hMOpModeDialog) {
        this.dialogOpMode = hMOpModeDialog;
    }

    public final void setDialogOpTemplate(@Nullable HMOpTemplateDialog hMOpTemplateDialog) {
        this.dialogOpTemplate = hMOpTemplateDialog;
    }

    public final void setIvKeyHide(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.ivKeyHide = view;
    }

    public final void setIvKeyboardInput(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.ivKeyboardInput = view;
    }

    public final void setIvVibrate(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.ivVibrate = view;
    }

    public final void setIvZoom(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.ivZoom = view;
    }

    public final void setKeyTypeAdapter(@NotNull h6.d dVar) {
        Intrinsics.checkNotNullParameter(dVar, "<set-?>");
        this.keyTypeAdapter = dVar;
    }

    public final void setSbSen(@NotNull SeekBar seekBar) {
        Intrinsics.checkNotNullParameter(seekBar, "<set-?>");
        this.sbSen = seekBar;
    }

    public final void setSbTransparent(@NotNull SeekBar seekBar) {
        Intrinsics.checkNotNullParameter(seekBar, "<set-?>");
        this.sbTransparent = seekBar;
    }

    public final void setTvSen(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvSen = textView;
    }

    public final void setTvTransparent(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvTransparent = textView;
    }

    public final void showDeleteKeyTypeDialog(@Nullable final HandleCfg cfg) {
        if (cfg != null) {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            final HMConfirmDialog hMConfirmDialog = new HMConfirmDialog(fragmentActivityRequireActivity);
            hMConfirmDialog.show();
            hMConfirmDialog.setContent("确定删除吗？");
            HMConfirmDialog.setCallback$default(hMConfirmDialog, new Function0() { // from class: com.join.kotlin.module.hmcloud.menu.g2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMSettingsOpFragment.showDeleteKeyTypeDialog$lambda$19$lambda$18(this.f48711b, cfg, hMConfirmDialog);
                }
            }, null, 2, null);
        }
    }

    public final void showOpModeDialog() {
        HMOpModeDialog hMOpModeDialog;
        if (this.dialogOpMode == null) {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            this.dialogOpMode = new HMOpModeDialog(fragmentActivityRequireActivity);
            Unit unit = Unit.INSTANCE;
        }
        HMOpModeDialog hMOpModeDialog2 = this.dialogOpMode;
        if (((hMOpModeDialog2 == null || hMOpModeDialog2.isShowing()) ? false : true) && (hMOpModeDialog = this.dialogOpMode) != null) {
            hMOpModeDialog.show();
        }
        HMOpModeDialog hMOpModeDialog3 = this.dialogOpMode;
        if (hMOpModeDialog3 != null) {
            HandleCfg value = getViewModel().getCurrentKeyType().getValue();
            hMOpModeDialog3.setTip(value != null ? value.getCfg_type() : 0);
        }
        HMOpModeDialog hMOpModeDialog4 = this.dialogOpMode;
        if (hMOpModeDialog4 != null) {
            hMOpModeDialog4.setCallback(new Function0() { // from class: com.join.kotlin.module.hmcloud.menu.u2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMSettingsOpFragment.showOpModeDialog$lambda$22(this.f48778b);
                }
            }, new Function0() { // from class: com.join.kotlin.module.hmcloud.menu.v2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMSettingsOpFragment.showOpModeDialog$lambda$23(this.f48781b);
                }
            });
        }
    }

    public final void showOpTemplateDialog(final int type) {
        String gameId;
        HMOpTemplateDialog hMOpTemplateDialog;
        HMOpTemplateDialog hMOpTemplateDialog2 = this.dialogOpTemplate;
        if (!(hMOpTemplateDialog2 != null && hMOpTemplateDialog2.isShowing())) {
            this.dialogOpTemplate = null;
        }
        if (this.dialogOpTemplate == null) {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            this.dialogOpTemplate = new HMOpTemplateDialog(fragmentActivityRequireActivity);
            Unit unit = Unit.INSTANCE;
        }
        HMOpTemplateDialog hMOpTemplateDialog3 = this.dialogOpTemplate;
        if (((hMOpTemplateDialog3 == null || hMOpTemplateDialog3.isShowing()) ? false : true) && (hMOpTemplateDialog = this.dialogOpTemplate) != null) {
            hMOpTemplateDialog.show();
        }
        HMOpTemplateDialog hMOpTemplateDialog4 = this.dialogOpTemplate;
        if (hMOpTemplateDialog4 != null) {
            hMOpTemplateDialog4.setCallback(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.e2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMSettingsOpFragment.showOpTemplateDialog$lambda$26(this.f48692b, (HandleCfg) obj);
                }
            });
        }
        HMOpTemplateDialog hMOpTemplateDialog5 = this.dialogOpTemplate;
        if (hMOpTemplateDialog5 != null) {
            hMOpTemplateDialog5.setOnItemDelete(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.p2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMSettingsOpFragment.showOpTemplateDialog$lambda$28(this.f48749b, type, (HandleCfg) obj);
                }
            });
        }
        HMOpTemplateDialog hMOpTemplateDialog6 = this.dialogOpTemplate;
        if (hMOpTemplateDialog6 != null) {
            hMOpTemplateDialog6.setOnItemSelected(new Function2() { // from class: com.join.kotlin.module.hmcloud.menu.t2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return HMSettingsOpFragment.showOpTemplateDialog$lambda$30(this.f48774b, (FrameLayout) obj, (HandleCfg) obj2);
                }
            });
        }
        DownloadTask downloadTaskL = q5.f.M().L(getViewModel().getGameId());
        if (downloadTaskL == null || (gameId = downloadTaskL.getShowName()) == null) {
            gameId = getViewModel().getGameId();
        }
        HMOpTemplateDialog hMOpTemplateDialog7 = this.dialogOpTemplate;
        if (hMOpTemplateDialog7 != null) {
            hMOpTemplateDialog7.setTip(gameId, type);
        }
        getViewModel().loadTemplate(type);
    }
}
