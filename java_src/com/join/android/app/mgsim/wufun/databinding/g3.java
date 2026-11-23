package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel;
import com.join.mgps.customview.ViewPagerCompat;
import com.join.mgps.lib.statusbar.StatusBarView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g3 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f38685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38689f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38690g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TabLayout f38691h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final StatusBarView f38692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ViewPagerCompat f38693j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected NostalgiaGameViewModel f38694k;

    protected g3(Object _bindingComponent, View _root, int _localFieldCount, ImageView iv1, ImageView ivBack, ImageView ivTab1, ImageView ivTab2, ImageView ivTab3, ImageView ivTab4, TabLayout tabLayout, StatusBarView vStatus, ViewPagerCompat viewPager) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38685b = iv1;
        this.f38686c = ivBack;
        this.f38687d = ivTab1;
        this.f38688e = ivTab2;
        this.f38689f = ivTab3;
        this.f38690g = ivTab4;
        this.f38691h = tabLayout;
        this.f38692i = vStatus;
        this.f38693j = viewPager;
    }

    @Deprecated
    public static g3 b(@NonNull View view, @Nullable Object component) {
        return (g3) ViewDataBinding.bind(component, view, R.layout.activity_nostalgia_game);
    }

    public static g3 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static g3 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (g3) ViewDataBinding.inflateInternal(inflater, R.layout.activity_nostalgia_game, root, attachToRoot, component);
    }

    @NonNull
    public static g3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static g3 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (g3) ViewDataBinding.inflateInternal(inflater, R.layout.activity_nostalgia_game, null, false, component);
    }

    @Nullable
    public NostalgiaGameViewModel d() {
        return this.f38694k;
    }

    public abstract void n(@Nullable NostalgiaGameViewModel vm);

    @NonNull
    public static g3 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
