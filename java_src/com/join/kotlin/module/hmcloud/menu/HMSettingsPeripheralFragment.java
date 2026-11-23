package com.join.kotlin.module.hmcloud.menu;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.join.android.app.mgsim.wufun.databinding.pb0;
import com.join.android.app.mgsim.wufun.databinding.qb0;
import com.join.android.app.mgsim.wufun.databinding.rb0;
import com.join.android.app.mgsim.wufun.databinding.rm;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.papa.controller.core.BaseEvent;
import com.papa.controller.core.ControllerManager;
import com.papa.controller.core.PadKeyEvent;
import com.papa.controller.core.PadMotionEvent;
import dagger.hilt.android.AndroidEntryPoint;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u001b\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00182\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020'H\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010&\u001a\u00020-H\u0002J\u0018\u0010.\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00182\u0006\u0010/\u001a\u000200H\u0002J\u0010\u00101\u001a\u00020#2\u0006\u0010&\u001a\u000202H\u0003J\u0010\u00103\u001a\u00020#2\u0006\u00104\u001a\u00020\u0011H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00110)¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+¨\u00065"}, d2 = {"Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsPeripheralBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsPeripheralBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsPeripheralBinding;)V", "currentTestTabId", "", "getCurrentTestTabId", "()I", "setCurrentTestTabId", "(I)V", "keyMap", "", "Landroid/view/View;", "getKeyMap", "()Ljava/util/Map;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "onTest", NotificationCompat.CATEGORY_EVENT, "Lcom/papa/controller/core/BaseEvent;", "triggerSet", "", "getTriggerSet", "()Ljava/util/Set;", "onTestKey", "Lcom/papa/controller/core/PadKeyEvent;", "setTriggerProgress", "progress", "", "onTestKeyStick", "Lcom/papa/controller/core/PadMotionEvent;", "setTab", "id", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@AndroidEntryPoint
@SourceDebugExtension({"SMAP\nHMSettingsPeripheralFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMSettingsPeripheralFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,185:1\n172#2,9:186\n*S KotlinDebug\n*F\n+ 1 HMSettingsPeripheralFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment\n*L\n24#1:186,9\n*E\n"})
public final class HMSettingsPeripheralFragment extends Hilt_HMSettingsPeripheralFragment {
    public rm binding;
    private int currentTestTabId;

    @NotNull
    private final Map<Integer, View> keyMap = new LinkedHashMap();

    @NotNull
    private final Set<Integer> triggerSet = SetsKt__SetsKt.setOf((Object[]) new Integer[]{104, 105, 102, 103});

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel;

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.menu.HMSettingsPeripheralFragment$onViewCreated$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.menu.HMSettingsPeripheralFragment$onViewCreated$2", f = "HMSettingsPeripheralFragment.kt", i = {}, l = {76}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.l0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMSettingsPeripheralFragment.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<BaseEvent> inputEventData = HMSettingsPeripheralFragment.this.getViewModel().getInputEventData();
                final HMSettingsPeripheralFragment hMSettingsPeripheralFragment = HMSettingsPeripheralFragment.this;
                kotlinx.coroutines.flow.f<? super BaseEvent> fVar = new kotlinx.coroutines.flow.f() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsPeripheralFragment.onViewCreated.2.1
                    @Override // kotlinx.coroutines.flow.f
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((BaseEvent) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(BaseEvent baseEvent, Continuation<? super Unit> continuation) {
                        if (baseEvent != null) {
                            hMSettingsPeripheralFragment.onTest(baseEvent);
                        }
                        return Unit.INSTANCE;
                    }
                };
                this.label = 1;
                if (inputEventData.a(fVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    public HMSettingsPeripheralFragment() {
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(HMCloudMainViewModel.class), new Function0<ViewModelStore>() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsPeripheralFragment$special$$inlined$activityViewModels$default$1
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
        }, new Function0<CreationExtras>() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsPeripheralFragment$special$$inlined$activityViewModels$default$2
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsPeripheralFragment$special$$inlined$activityViewModels$default$3
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
    public final void onTest(BaseEvent event) {
        if (event instanceof PadKeyEvent) {
            onTestKey((PadKeyEvent) event);
        } else if (event instanceof PadMotionEvent) {
            onTestKeyStick((PadMotionEvent) event);
        }
    }

    private final void onTestKey(PadKeyEvent event) {
        View view;
        if (event.w() == 0) {
            if (this.triggerSet.contains(Integer.valueOf(event.y()))) {
                View view2 = this.keyMap.get(Integer.valueOf(event.y()));
                if (view2 != null) {
                    view2.setSelected(true);
                }
            } else {
                View view3 = this.keyMap.get(Integer.valueOf(event.y()));
                if (view3 != null) {
                    view3.setVisibility(0);
                }
            }
        } else if (event.w() == 1) {
            if (this.triggerSet.contains(Integer.valueOf(event.y()))) {
                View view4 = this.keyMap.get(Integer.valueOf(event.y()));
                if (view4 != null) {
                    view4.setSelected(false);
                }
            } else {
                View view5 = this.keyMap.get(Integer.valueOf(event.y()));
                if (view5 != null) {
                    view5.setVisibility(8);
                }
            }
        } else if (event.w() == 2) {
            float fA = event.A();
            if ((event.y() == 104 || event.y() == 105) && (view = this.keyMap.get(Integer.valueOf(event.y()))) != null) {
                view.setSelected(fA > 0.0f);
            }
        }
        rb0 rb0Var = getBinding().f44395g;
        if (getBinding().f44400l.isSelected()) {
            float fA2 = event.A();
            if (event.y() == 104) {
                FrameLayout ltProgress = rb0Var.f44286c;
                Intrinsics.checkNotNullExpressionValue(ltProgress, "ltProgress");
                setTriggerProgress(ltProgress, fA2);
                TextView textView = rb0Var.f44287d;
                String str = String.format("%f", Arrays.copyOf(new Object[]{Float.valueOf(fA2)}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                textView.setText(str);
            } else if (event.y() == 105) {
                FrameLayout rtProgress = rb0Var.f44288e;
                Intrinsics.checkNotNullExpressionValue(rtProgress, "rtProgress");
                setTriggerProgress(rtProgress, fA2);
                TextView textView2 = rb0Var.f44289f;
                String str2 = String.format("%f", Arrays.copyOf(new Object[]{Float.valueOf(fA2)}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                textView2.setText(str2);
            }
        }
        pb0 pb0Var = getBinding().f44393e;
        if (getBinding().f44391c.isSelected()) {
            if (event.y() == 106) {
                pb0Var.f43304c.drawThumb(event.w() == 0);
            } else if (event.y() == 107) {
                pb0Var.f43305d.drawThumb(event.w() == 0);
            }
        }
    }

    @SuppressLint({"SetTextI18n"})
    private final void onTestKeyStick(PadMotionEvent event) {
        if (getBinding().f44391c.isSelected()) {
            pb0 pb0Var = getBinding().f44393e;
            float fY = event.y();
            float fA = event.A();
            if (event.w() == 200) {
                pb0Var.f43304c.draw(fY, fA);
                TextView textView = pb0Var.f43306e;
                String str = String.format("(%.5f，%.5f)", Arrays.copyOf(new Object[]{Float.valueOf(fY), Float.valueOf(fA)}, 2));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                textView.setText(str);
                return;
            }
            if (event.w() == 201) {
                pb0Var.f43305d.draw(fY, fA);
                TextView textView2 = pb0Var.f43307f;
                String str2 = String.format("(%.5f，%.5f)", Arrays.copyOf(new Object[]{Float.valueOf(fY), Float.valueOf(fA)}, 2));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                textView2.setText(str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5$lambda$0(HMSettingsPeripheralFragment hMSettingsPeripheralFragment, View view) {
        hMSettingsPeripheralFragment.setTab(view.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5$lambda$1(HMSettingsPeripheralFragment hMSettingsPeripheralFragment, View view) {
        hMSettingsPeripheralFragment.setTab(view.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5$lambda$2(HMSettingsPeripheralFragment hMSettingsPeripheralFragment, View view) {
        hMSettingsPeripheralFragment.setTab(view.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5$lambda$3(HMSettingsPeripheralFragment hMSettingsPeripheralFragment, View view) {
        hMSettingsPeripheralFragment.setTab(view.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$6(HMSettingsPeripheralFragment hMSettingsPeripheralFragment, ControllerManager.c cVar) {
        hMSettingsPeripheralFragment.getBinding().f44398j.setText(cVar != null ? cVar.d() : null);
        return Unit.INSTANCE;
    }

    private final void setTab(int id2) {
        this.currentTestTabId = id2;
        rm binding = getBinding();
        TextView textView = binding.f44392d;
        textView.setSelected(id2 == textView.getId());
        TextView textView2 = binding.f44400l;
        textView2.setSelected(id2 == textView2.getId());
        TextView textView3 = binding.f44391c;
        textView3.setSelected(id2 == textView3.getId());
        TextView textView4 = binding.f44401m;
        textView4.setSelected(id2 == textView4.getId());
        binding.f44394f.getRoot().setVisibility(id2 == binding.f44392d.getId() ? 0 : 8);
        binding.f44395g.getRoot().setVisibility(id2 == binding.f44400l.getId() ? 0 : 8);
        binding.f44393e.getRoot().setVisibility(id2 == binding.f44391c.getId() ? 0 : 8);
        binding.f44396h.getRoot().setVisibility(id2 != binding.f44401m.getId() ? 8 : 0);
    }

    private final void setTriggerProgress(View view, float progress) {
        ViewParent parent = view.getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            return;
        }
        int measuredHeight = ((ViewGroup) parent).getMeasuredHeight();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = (int) (measuredHeight * progress);
        view.setLayoutParams(layoutParams);
    }

    @NotNull
    public final rm getBinding() {
        rm rmVar = this.binding;
        if (rmVar != null) {
            return rmVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final int getCurrentTestTabId() {
        return this.currentTestTabId;
    }

    @NotNull
    public final Map<Integer, View> getKeyMap() {
        return this.keyMap;
    }

    @NotNull
    public final Set<Integer> getTriggerSet() {
        return this.triggerSet;
    }

    @NotNull
    public final HMCloudMainViewModel getViewModel() {
        return (HMCloudMainViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(rm.inflate(inflater, container, false));
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        rm binding = getBinding();
        binding.f44392d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.a3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsPeripheralFragment.onViewCreated$lambda$5$lambda$0(this.f48674b, view2);
            }
        });
        binding.f44400l.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.b3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsPeripheralFragment.onViewCreated$lambda$5$lambda$1(this.f48679b, view2);
            }
        });
        binding.f44391c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.c3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsPeripheralFragment.onViewCreated$lambda$5$lambda$2(this.f48685b, view2);
            }
        });
        binding.f44401m.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.d3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsPeripheralFragment.onViewCreated$lambda$5$lambda$3(this.f48689b, view2);
            }
        });
        binding.f44392d.performClick();
        qb0 qb0Var = binding.f44394f;
        this.keyMap.putAll(MapsKt__MapsKt.mapOf(TuplesKt.to(102, qb0Var.f43751k), TuplesKt.to(104, qb0Var.f43752l), TuplesKt.to(103, qb0Var.f43753m), TuplesKt.to(105, qb0Var.f43754n), TuplesKt.to(21, qb0Var.f43748h), TuplesKt.to(19, qb0Var.f43750j), TuplesKt.to(22, qb0Var.f43749i), TuplesKt.to(20, qb0Var.f43747g), TuplesKt.to(99, qb0Var.f43760t), TuplesKt.to(96, qb0Var.f43743c), TuplesKt.to(100, qb0Var.f43761u), TuplesKt.to(97, qb0Var.f43744d), TuplesKt.to(4, qb0Var.f43744d), TuplesKt.to(109, qb0Var.f43755o), TuplesKt.to(108, qb0Var.f43756p), TuplesKt.to(106, qb0Var.f43757q), TuplesKt.to(107, qb0Var.f43758r)));
        kotlinx.coroutines.j.f(ViewModelKt.getViewModelScope(getViewModel()), null, null, new AnonymousClass2(null), 3, null);
        getViewModel().getInputDevice().observe(getViewLifecycleOwner(), new HMSettingsPeripheralFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.e3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsPeripheralFragment.onViewCreated$lambda$6(this.f48693b, (ControllerManager.c) obj);
            }
        }));
    }

    public final void setBinding(@NotNull rm rmVar) {
        Intrinsics.checkNotNullParameter(rmVar, "<set-?>");
        this.binding = rmVar;
    }

    public final void setCurrentTestTabId(int i10) {
        this.currentTestTabId = i10;
    }
}
