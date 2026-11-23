package com.join.kotlin.module.hmcloud.menu;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.haima.hmcp.beans.ResolutionInfo;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.pm;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.mgps.dto.hmcloud.HMMenuAction;
import com.join.mgps.dto.hmcloud.PictureSetting;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import dagger.hilt.android.AndroidEntryPoint;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u00104\u001a\u0002052\b\u00106\u001a\u0004\u0018\u000107H\u0016J&\u00108\u001a\u0004\u0018\u00010\u00112\u0006\u00109\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010<2\b\u00106\u001a\u0004\u0018\u000107H\u0016J\u001c\u0010=\u001a\u0002052\b\u0010;\u001a\u0004\u0018\u00010<2\b\u0010>\u001a\u0004\u0018\u00010\u0011H\u0002J\u001a\u0010?\u001a\u0002052\u0006\u0010>\u001a\u00020\u00112\b\u00106\u001a\u0004\u0018\u000107H\u0016J\u0010\u0010@\u001a\u0002052\u0006\u0010A\u001a\u00020BH\u0016J\b\u0010C\u001a\u000205H\u0002J\u0010\u0010D\u001a\u0002052\b\u0010E\u001a\u0004\u0018\u00010FJ\b\u0010G\u001a\u000205H\u0016J\u000e\u0010H\u001a\u0002052\u0006\u0010I\u001a\u00020JJ\u0006\u0010K\u001a\u000205J\u0010\u0010L\u001a\u0002052\u0006\u0010M\u001a\u00020NH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0013\"\u0004\b\u001e\u0010\u0015R\u001a\u0010\u001f\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015R\u001a\u0010\"\u001a\u00020#X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020)X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u0006O"}, d2 = {"Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "sbBrightness", "Landroid/widget/SeekBar;", "getSbBrightness", "()Landroid/widget/SeekBar;", "setSbBrightness", "(Landroid/widget/SeekBar;)V", "tvBrightness", "Landroid/widget/TextView;", "getTvBrightness", "()Landroid/widget/TextView;", "setTvBrightness", "(Landroid/widget/TextView;)V", "vOriginal", "Landroid/view/View;", "getVOriginal", "()Landroid/view/View;", "setVOriginal", "(Landroid/view/View;)V", "vStretch", "getVStretch", "setVStretch", "vSoundOff", "getVSoundOff", "setVSoundOff", "vSoundOn", "getVSoundOn", "setVSoundOn", "vLatency", "getVLatency", "setVLatency", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "setViewModel", "(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)V", "resolutionAdapter", "Lcom/join/mgps/adapter/hmcloud/HMResolutionAdapter;", "getResolutionAdapter", "()Lcom/join/mgps/adapter/hmcloud/HMResolutionAdapter;", "setResolutionAdapter", "(Lcom/join/mgps/adapter/hmcloud/HMResolutionAdapter;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsCommonBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsCommonBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsCommonBinding;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "measure", "view", "onViewCreated", "onHiddenChanged", "hidden", "", "refreshResolution", com.papa.controller.component.bluetooth.spp.c.f76484o, "msg", "", "onResume", "setBrightnessProgress", "progress", "", "initObserver", "onSwitchResolution", "item", "Lcom/join/mgps/dto/hmcloud/PictureSetting;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@AndroidEntryPoint
public final class HMSettingsCommonFragment extends Hilt_HMSettingsCommonFragment {

    @Nullable
    private pm binding;
    public h6.q resolutionAdapter;
    public SeekBar sbBrightness;
    public TextView tvBrightness;
    public View vLatency;
    public View vOriginal;
    public View vSoundOff;
    public View vSoundOn;
    public View vStretch;
    public HMCloudMainViewModel viewModel;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$17(HMSettingsCommonFragment hMSettingsCommonFragment, Integer num) {
        Intrinsics.checkNotNull(num);
        hMSettingsCommonFragment.setBrightnessProgress(num.intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$18(HMSettingsCommonFragment hMSettingsCommonFragment, Boolean bool) {
        hMSettingsCommonFragment.getVSoundOn().setSelected(!bool.booleanValue());
        hMSettingsCommonFragment.getVSoundOff().setSelected(bool.booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$19(HMSettingsCommonFragment hMSettingsCommonFragment, String str) {
        hMSettingsCommonFragment.getVOriginal().setSelected(Intrinsics.areEqual(str, "16:9"));
        hMSettingsCommonFragment.getVStretch().setSelected(!Intrinsics.areEqual(str, "16:9"));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$20(HMSettingsCommonFragment hMSettingsCommonFragment, Boolean bool) {
        hMSettingsCommonFragment.getVLatency().setSelected(bool.booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$21(HMSettingsCommonFragment hMSettingsCommonFragment, ResolutionInfo resolutionInfo) {
        hMSettingsCommonFragment.getResolutionAdapter().f(resolutionInfo != null ? resolutionInfo.f33828id : null);
        hMSettingsCommonFragment.getResolutionAdapter().notifyDataSetChanged();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$22(HMSettingsCommonFragment hMSettingsCommonFragment, List list) {
        hMSettingsCommonFragment.getViewModel().updateResolutionInfo();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$23(HMSettingsCommonFragment hMSettingsCommonFragment, List list) {
        hMSettingsCommonFragment.getResolutionAdapter().setItems(list);
        hMSettingsCommonFragment.getResolutionAdapter().notifyDataSetChanged();
        return Unit.INSTANCE;
    }

    private final void measure(final ViewGroup container, final View view) {
        if (container != null) {
            container.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.menu.f1
                @Override // java.lang.Runnable
                public final void run() {
                    HMSettingsCommonFragment.measure$lambda$2$lambda$1(container, view);
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
    public static final void measure$lambda$2$lambda$1(ViewGroup viewGroup, View view) {
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

    private final void onSwitchResolution(PictureSetting item) {
        String name;
        if (StringsKt__StringsJVMKt.equals(item.getName(), "1080P", true)) {
            name = item.getName() + '-' + item.getFrame_rate() + (char) 24103;
        } else {
            name = item.getName();
        }
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(requireContext());
        Event event = Event.commonClick;
        Ext ext = new Ext();
        ext.setTypeCode("btnSet");
        ext.setChatId("cloudGameSetting");
        ext.setResourceId(getViewModel().getGameId());
        ext.setScenesCode(name);
        if (getViewModel().isCloudVip()) {
            ext.setResultCode("cloudGameVip");
        }
        Unit unit = Unit.INSTANCE;
        tVarL.R1(event, ext);
        String id2 = item.getId();
        if (id2 == null) {
            return;
        }
        if (!item.getVip_require() || getViewModel().isCloudVip()) {
            getViewModel().onSwitchResolution(id2, "正在切换至" + name);
            return;
        }
        getViewModel().getMenuAction().postValue(new HMMenuAction.ChargeCloudVip("video_" + item.getName() + '_' + item.getFrame_rate() + 'f', id2, name));
        com.papa.sim.statistic.t tVarL2 = com.papa.sim.statistic.t.l(requireContext());
        Ext ext2 = new Ext();
        ext2.setTypeCode("btnBuy");
        ext2.setChatId("cloudGameSetting");
        ext2.setResourceId(getViewModel().getGameId());
        ext2.setScenesCode(name);
        if (getViewModel().isCloudVip()) {
            ext2.setResultCode("cloudGameVip");
        }
        tVarL2.R1(event, ext2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$10(HMSettingsCommonFragment hMSettingsCommonFragment, View view) {
        hMSettingsCommonFragment.getViewModel().getMute().postValue(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$11(HMSettingsCommonFragment hMSettingsCommonFragment, View view) {
        hMSettingsCommonFragment.getViewModel().getGameRatio().postValue("16:9");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$12(HMSettingsCommonFragment hMSettingsCommonFragment, View view) {
        hMSettingsCommonFragment.getViewModel().getGameRatio().postValue(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$13(HMSettingsCommonFragment hMSettingsCommonFragment, View view) {
        MutableLiveData<Boolean> mutableLiveDataIsLatencyOn = hMSettingsCommonFragment.getViewModel().isLatencyOn();
        Boolean value = hMSettingsCommonFragment.getViewModel().isLatencyOn().getValue();
        mutableLiveDataIsLatencyOn.postValue(Boolean.valueOf(!(value != null ? value.booleanValue() : false)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$5(HMSettingsCommonFragment hMSettingsCommonFragment, PictureSetting it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        hMSettingsCommonFragment.onSwitchResolution(it2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$9(HMSettingsCommonFragment hMSettingsCommonFragment, View view) {
        hMSettingsCommonFragment.getViewModel().getMute().postValue(Boolean.FALSE);
    }

    private final void refreshResolution() {
        List<PictureSetting> value = getViewModel().getPictureSettingList().getValue();
        if (value == null) {
            value = CollectionsKt__CollectionsKt.emptyList();
        }
        if (value.isEmpty()) {
            getViewModel().getGameCfgInfoBySrv();
        }
        h6.q resolutionAdapter = getResolutionAdapter();
        ResolutionInfo value2 = getViewModel().getCurrentResolution().getValue();
        resolutionAdapter.f(value2 != null ? value2.f33828id : null);
        getResolutionAdapter().setItems(value);
        getResolutionAdapter().notifyDataSetChanged();
    }

    @Nullable
    public final pm getBinding() {
        return this.binding;
    }

    @NotNull
    public final h6.q getResolutionAdapter() {
        h6.q qVar = this.resolutionAdapter;
        if (qVar != null) {
            return qVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("resolutionAdapter");
        return null;
    }

    @NotNull
    public final SeekBar getSbBrightness() {
        SeekBar seekBar = this.sbBrightness;
        if (seekBar != null) {
            return seekBar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sbBrightness");
        return null;
    }

    @NotNull
    public final TextView getTvBrightness() {
        TextView textView = this.tvBrightness;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvBrightness");
        return null;
    }

    @NotNull
    public final View getVLatency() {
        View view = this.vLatency;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vLatency");
        return null;
    }

    @NotNull
    public final View getVOriginal() {
        View view = this.vOriginal;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vOriginal");
        return null;
    }

    @NotNull
    public final View getVSoundOff() {
        View view = this.vSoundOff;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vSoundOff");
        return null;
    }

    @NotNull
    public final View getVSoundOn() {
        View view = this.vSoundOn;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vSoundOn");
        return null;
    }

    @NotNull
    public final View getVStretch() {
        View view = this.vStretch;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vStretch");
        return null;
    }

    @NotNull
    public final HMCloudMainViewModel getViewModel() {
        HMCloudMainViewModel hMCloudMainViewModel = this.viewModel;
        if (hMCloudMainViewModel != null) {
            return hMCloudMainViewModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        return null;
    }

    public final void initObserver() {
        getViewModel().getBrightness().observe(getViewLifecycleOwner(), new HMSettingsCommonFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.g1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsCommonFragment.initObserver$lambda$17(this.f48710b, (Integer) obj);
            }
        }));
        getViewModel().getMute().observe(getViewLifecycleOwner(), new HMSettingsCommonFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.h1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsCommonFragment.initObserver$lambda$18(this.f48716b, (Boolean) obj);
            }
        }));
        getViewModel().getGameRatio().observe(getViewLifecycleOwner(), new HMSettingsCommonFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.i1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsCommonFragment.initObserver$lambda$19(this.f48720b, (String) obj);
            }
        }));
        getViewModel().isLatencyOn().observe(getViewLifecycleOwner(), new HMSettingsCommonFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.j1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsCommonFragment.initObserver$lambda$20(this.f48724b, (Boolean) obj);
            }
        }));
        getViewModel().getCurrentResolution().observe(getViewLifecycleOwner(), new HMSettingsCommonFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.k1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsCommonFragment.initObserver$lambda$21(this.f48728b, (ResolutionInfo) obj);
            }
        }));
        getViewModel().getResolutionList().observe(getViewLifecycleOwner(), new HMSettingsCommonFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.l1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsCommonFragment.initObserver$lambda$22(this.f48732b, (List) obj);
            }
        }));
        getViewModel().getPictureSettingList().observe(getViewLifecycleOwner(), new HMSettingsCommonFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.m1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsCommonFragment.initObserver$lambda$23(this.f48734b, (List) obj);
            }
        }));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        setViewModel((HMCloudMainViewModel) new ViewModelProvider(fragmentActivityRequireActivity).get(HMCloudMainViewModel.class));
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        pm pmVarInflate = pm.inflate(inflater, container, false);
        this.binding = pmVarInflate;
        FrameLayout root = pmVarInflate != null ? pmVarInflate.getRoot() : null;
        Intrinsics.checkNotNull(root);
        setSbBrightness((SeekBar) root.findViewById(R.id.sb_brightness));
        setTvBrightness((TextView) root.findViewById(R.id.tv_brightness));
        setVOriginal(root.findViewById(R.id.original));
        setVStretch(root.findViewById(R.id.stretch));
        setVSoundOff(root.findViewById(R.id.sound_off));
        setVSoundOn(root.findViewById(R.id.sound_on));
        setVLatency(root.findViewById(R.id.latency));
        pm pmVar = this.binding;
        measure(container, pmVar != null ? pmVar.getRoot() : null);
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        refreshResolution();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        refreshResolution();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setResolutionAdapter(new h6.q(new Function1() { // from class: com.join.kotlin.module.hmcloud.menu.n1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMSettingsCommonFragment.onViewCreated$lambda$5(this.f48739b, (PictureSetting) obj);
            }
        }));
        pm pmVar = this.binding;
        if (pmVar != null) {
            RecyclerView recyclerView = pmVar.f43424e;
            recyclerView.setLayoutManager(new LinearLayoutManager(requireActivity(), 0, false));
            recyclerView.setAdapter(getResolutionAdapter());
            final int dimensionPixelSize = recyclerView.getResources().getDimensionPixelSize(R.dimen.wdp30);
            recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsCommonFragment$onViewCreated$2$1$1
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
            recyclerView.dispatchConfigurationChanged(recyclerView.getResources().getConfiguration());
        }
        initObserver();
        if (Build.VERSION.SDK_INT >= 26) {
            getSbBrightness().setMin(1);
        }
        getSbBrightness().setMax(255);
        getSbBrightness().setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.join.kotlin.module.hmcloud.menu.HMSettingsCommonFragment.onViewCreated.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                HMSettingsCommonFragment.this.getViewModel().getBrightness().postValue(Integer.valueOf(progress));
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
        Integer value = getViewModel().getBrightness().getValue();
        if (value != null) {
            setBrightnessProgress(value.intValue());
        } else {
            HMCloudMainViewModel viewModel = getViewModel();
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            viewModel.getScreenBrightness(fragmentActivityRequireActivity);
        }
        getVSoundOn().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.o1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsCommonFragment.onViewCreated$lambda$9(this.f48744b, view2);
            }
        });
        getVSoundOff().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsCommonFragment.onViewCreated$lambda$10(this.f48677b, view2);
            }
        });
        getVOriginal().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.c1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsCommonFragment.onViewCreated$lambda$11(this.f48683b, view2);
            }
        });
        getVStretch().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsCommonFragment.onViewCreated$lambda$12(this.f48687b, view2);
            }
        });
        getVLatency().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.menu.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMSettingsCommonFragment.onViewCreated$lambda$13(this.f48691b, view2);
            }
        });
        ResolutionInfo value2 = getViewModel().getCurrentResolution().getValue();
        if (value2 != null) {
            getResolutionAdapter().f(value2.f33828id);
            getResolutionAdapter().notifyDataSetChanged();
        } else {
            getViewModel().getMenuAction().postValue(HMMenuAction.RefreshResolutionInfo.INSTANCE);
        }
        if (getViewModel().getResolutionList().getValue() == null) {
            getViewModel().getMenuAction().postValue(HMMenuAction.RefreshResolutionInfo.INSTANCE);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void setBinding(@Nullable pm pmVar) {
        this.binding = pmVar;
    }

    public final void setBrightnessProgress(int progress) {
        getSbBrightness().setProgress(progress);
        TextView tvBrightness = getTvBrightness();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(RangesKt___RangesKt.coerceIn((int) Math.rint((progress / 255) * 100), 1, 100));
        sb2.append('%');
        tvBrightness.setText(sb2.toString());
    }

    public final void setResolutionAdapter(@NotNull h6.q qVar) {
        Intrinsics.checkNotNullParameter(qVar, "<set-?>");
        this.resolutionAdapter = qVar;
    }

    public final void setSbBrightness(@NotNull SeekBar seekBar) {
        Intrinsics.checkNotNullParameter(seekBar, "<set-?>");
        this.sbBrightness = seekBar;
    }

    public final void setTvBrightness(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvBrightness = textView;
    }

    public final void setVLatency(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vLatency = view;
    }

    public final void setVOriginal(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vOriginal = view;
    }

    public final void setVSoundOff(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vSoundOff = view;
    }

    public final void setVSoundOn(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vSoundOn = view;
    }

    public final void setVStretch(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vStretch = view;
    }

    public final void setViewModel(@NotNull HMCloudMainViewModel hMCloudMainViewModel) {
        Intrinsics.checkNotNullParameter(hMCloudMainViewModel, "<set-?>");
        this.viewModel = hMCloudMainViewModel;
    }

    public final void toast(@Nullable String msg) {
        if (TextUtils.isEmpty(msg)) {
            return;
        }
        com.join.mgps.Util.a3.e(requireContext(), msg);
    }
}
