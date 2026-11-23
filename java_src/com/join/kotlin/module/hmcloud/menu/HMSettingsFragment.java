package com.join.kotlin.module.hmcloud.menu;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.om;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.mgps.activity.ClassifyAndRankActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u001a\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020$2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u000e\u0010.\u001a\u00020,2\u0006\u0010/\u001a\u00020\u0016J \u00100\u001a\u00020,2\u0006\u00101\u001a\u00020\u00162\u0006\u00102\u001a\u00020\u00012\u0006\u00103\u001a\u000204H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001d\u001a\u00020\u001e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u001f\u0010 ¨\u00065"}, d2 = {"Lcom/join/kotlin/module/hmcloud/menu/HMSettingsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsBinding;)V", "peripheralFragment", "getPeripheralFragment", "()Landroidx/fragment/app/Fragment;", "setPeripheralFragment", "(Landroidx/fragment/app/Fragment;)V", "opFragment", "getOpFragment", "setOpFragment", "commonFragment", "getCommonFragment", "setCommonFragment", ClassifyAndRankActivity_.CURRENT_INDEX_EXTRA, "", "getCurrentIndex", "()I", "setCurrentIndex", "(I)V", "tabChanging", "Ljava/util/concurrent/atomic/AtomicBoolean;", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "setTab", "index", "addFragmentSafely", "containerId", "fragment", TagGameListActivity_.TAG_EXTRA, "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMSettingsFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n172#2,9:149\n1#3:158\n*S KotlinDebug\n*F\n+ 1 HMSettingsFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsFragment\n*L\n26#1:149,9\n*E\n"})
public final class HMSettingsFragment extends Fragment {
    public om binding;

    @Nullable
    private Fragment commonFragment;

    @Nullable
    private Fragment opFragment;

    @Nullable
    private Fragment peripheralFragment;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel;
    private int currentIndex = -1;

    @NotNull
    private final AtomicBoolean tabChanging = new AtomicBoolean(false);

    public HMSettingsFragment() {
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(HMCloudMainViewModel.class), new Function0<ViewModelStore>() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsFragment$special$$inlined$activityViewModels$default$1
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
        }, new Function0<CreationExtras>() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsFragment$special$$inlined$activityViewModels$default$2
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsFragment$special$$inlined$activityViewModels$default$3
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

    private final void addFragmentSafely(int containerId, Fragment fragment, String tag) {
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
        if (childFragmentManager.findFragmentByTag(tag) != null || fragment.isAdded() || fragment.isDetached()) {
            return;
        }
        childFragmentManager.beginTransaction().add(containerId, fragment, tag).commitNowAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$3(HMSettingsFragment hMSettingsFragment, Boolean bool) {
        hMSettingsFragment.getBinding().f42958e.setVisibility(bool.booleanValue() ? 0 : 8);
        if (hMSettingsFragment.currentIndex == -1) {
            if (bool.booleanValue()) {
                hMSettingsFragment.setTab(0);
            } else {
                hMSettingsFragment.setTab(1);
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$4(HMSettingsFragment hMSettingsFragment, Integer num) {
        if (hMSettingsFragment.currentIndex == 0) {
            hMSettingsFragment.setTab(0);
        }
        return Unit.INSTANCE;
    }

    @NotNull
    public final om getBinding() {
        om omVar = this.binding;
        if (omVar != null) {
            return omVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final Fragment getCommonFragment() {
        return this.commonFragment;
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    @Nullable
    public final Fragment getOpFragment() {
        return this.opFragment;
    }

    @Nullable
    public final Fragment getPeripheralFragment() {
        return this.peripheralFragment;
    }

    @NotNull
    public final HMCloudMainViewModel getViewModel() {
        return (HMCloudMainViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(om.inflate(inflater, container, false));
        inflater.inflate(R.layout.fragment_hm_settings, container, false);
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        om binding = getBinding();
        binding.f42958e.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.p1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f48748b.setTab(0);
            }
        });
        binding.f42957d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.q1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f48753b.setTab(1);
            }
        });
        getViewModel().isHmCloudPc().observe(getViewLifecycleOwner(), new HMSettingsFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.r1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsFragment.onViewCreated$lambda$3(this.f48761b, (Boolean) obj);
            }
        }));
        getViewModel().getInputDeviceSize().observe(getViewLifecycleOwner(), new HMSettingsFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.s1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsFragment.onViewCreated$lambda$4(this.f48766b, (Integer) obj);
            }
        }));
        setTab(this.currentIndex);
    }

    public final void setBinding(@NotNull om omVar) {
        Intrinsics.checkNotNullParameter(omVar, "<set-?>");
        this.binding = omVar;
    }

    public final void setCommonFragment(@Nullable Fragment fragment) {
        this.commonFragment = fragment;
    }

    public final void setCurrentIndex(int i10) {
        this.currentIndex = i10;
    }

    public final void setOpFragment(@Nullable Fragment fragment) {
        this.opFragment = fragment;
    }

    public final void setPeripheralFragment(@Nullable Fragment fragment) {
        this.peripheralFragment = fragment;
    }

    public final void setTab(int index) {
        if (this.tabChanging.compareAndSet(false, true)) {
            boolean zUseInputDevice = getViewModel().useInputDevice();
            this.currentIndex = index;
            om binding = getBinding();
            binding.f42958e.setSelected(index == 0);
            binding.f42957d.setSelected(index == 1);
            if (index == 0) {
                if (zUseInputDevice) {
                    binding.f42958e.setImageResource(R.drawable.hm_btn_peripheral_selector);
                } else {
                    binding.f42958e.setImageResource(R.drawable.hm_btn_op_selector);
                }
            }
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
            if (index != 0) {
                Fragment fragment = this.opFragment;
                if (fragment != null) {
                    fragmentTransactionBeginTransaction.hide(fragment);
                }
                Fragment fragment2 = this.peripheralFragment;
                if (fragment2 != null) {
                    fragmentTransactionBeginTransaction.hide(fragment2);
                }
            } else if (zUseInputDevice) {
                Fragment fragment3 = this.opFragment;
                if (fragment3 != null) {
                    fragmentTransactionBeginTransaction.hide(fragment3);
                }
            } else {
                Fragment fragment4 = this.peripheralFragment;
                if (fragment4 != null) {
                    fragmentTransactionBeginTransaction.hide(fragment4);
                }
            }
            Fragment fragment5 = this.commonFragment;
            if (fragment5 != null && index != 1) {
                fragmentTransactionBeginTransaction.hide(fragment5);
            }
            if (index != 0) {
                if (index == 1) {
                    if (this.commonFragment == null) {
                        this.commonFragment = new HMSettingsCommonFragment();
                    }
                    Fragment fragment6 = this.commonFragment;
                    if (fragment6 != null) {
                        if (!fragment6.isAdded()) {
                            fragmentTransactionBeginTransaction.add(R.id.main, fragment6);
                        }
                        fragmentTransactionBeginTransaction.show(fragment6);
                    }
                }
            } else if (zUseInputDevice) {
                if (this.peripheralFragment == null) {
                    this.peripheralFragment = new HMSettingsPeripheralFragment();
                }
                Fragment fragment7 = this.peripheralFragment;
                if (fragment7 != null) {
                    addFragmentSafely(R.id.main, fragment7, "peripheral");
                    fragmentTransactionBeginTransaction.show(fragment7);
                }
            } else {
                if (this.opFragment == null) {
                    this.opFragment = new HMSettingsOpFragment();
                }
                Fragment fragment8 = this.opFragment;
                if (fragment8 != null) {
                    addFragmentSafely(R.id.main, fragment8, "op");
                    fragmentTransactionBeginTransaction.show(fragment8);
                }
            }
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            this.tabChanging.set(false);
        }
    }
}
