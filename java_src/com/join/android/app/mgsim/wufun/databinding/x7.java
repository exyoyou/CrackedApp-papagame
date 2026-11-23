package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.BtReginSlidinTablayout;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x7 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final BtReginSlidinTablayout f47119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ViewPager f47120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected FragmentManager f47121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected List<String> f47122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected List<Fragment> f47123f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected ViewPager f47124g;

    protected x7(Object _bindingComponent, View _root, int _localFieldCount, BtReginSlidinTablayout tabLayout, ViewPager viewPager) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47119b = tabLayout;
        this.f47120c = viewPager;
    }

    @NonNull
    @Deprecated
    public static x7 A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (x7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_viewpager_layout, null, false, component);
    }

    @Deprecated
    public static x7 b(@NonNull View view, @Nullable Object component) {
        return (x7) ViewDataBinding.bind(component, view, R.layout.bt_viewpager_layout);
    }

    public static x7 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static x7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x7 z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (x7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_viewpager_layout, root, attachToRoot, component);
    }

    public abstract void B(@Nullable FragmentManager fragmentManager);

    public abstract void C(@Nullable List<Fragment> fragments);

    public abstract void D(@Nullable List<String> titles);

    public abstract void E(@Nullable ViewPager viewPager);

    @Nullable
    public FragmentManager d() {
        return this.f47121d;
    }

    @Nullable
    public List<Fragment> f() {
        return this.f47123f;
    }

    @Nullable
    public List<String> w() {
        return this.f47122e;
    }

    @Nullable
    public ViewPager y() {
        return this.f47124g;
    }

    @NonNull
    public static x7 inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
