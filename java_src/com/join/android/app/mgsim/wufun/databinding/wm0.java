package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle;
import com.join.kotlin.ui.cloudarchive.adapter.MyPagerAdapter;

/* JADX INFO: loaded from: classes4.dex */
public abstract class wm0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout f46866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ViewPager f46868d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected ModGameCloudViewModle f46869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected MyPagerAdapter f46870f;

    protected wm0(Object _bindingComponent, View _root, int _localFieldCount, SlidingTabLayout tabLayout, RelativeLayout title, ViewPager viewPager) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f46866b = tabLayout;
        this.f46867c = title;
        this.f46868d = viewPager;
    }

    @Deprecated
    public static wm0 b(@NonNull View view, @Nullable Object component) {
        return (wm0) ViewDataBinding.bind(component, view, R.layout.modgame_cloud_archive_fragment);
    }

    public static wm0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static wm0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static wm0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (wm0) ViewDataBinding.inflateInternal(inflater, R.layout.modgame_cloud_archive_fragment, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static wm0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (wm0) ViewDataBinding.inflateInternal(inflater, R.layout.modgame_cloud_archive_fragment, null, false, component);
    }

    @Nullable
    public MyPagerAdapter d() {
        return this.f46870f;
    }

    @Nullable
    public ModGameCloudViewModle f() {
        return this.f46869e;
    }

    public abstract void t(@Nullable MyPagerAdapter adapter);

    public abstract void u(@Nullable ModGameCloudViewModle viewModle);

    @NonNull
    public static wm0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
