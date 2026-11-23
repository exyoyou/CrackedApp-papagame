package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.SourceHopeClickProxy;
import com.join.kotlin.quark.viewmodel.SourceHopeViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h4 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f39149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TabLayout f39150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ViewPager f39153f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected SourceHopeViewModel f39154g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected SourceHopeClickProxy f39155h;

    protected h4(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, TabLayout tabLayout, TextView titleTextview, TextView tvSort, ViewPager viewPager) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f39149b = backImage;
        this.f39150c = tabLayout;
        this.f39151d = titleTextview;
        this.f39152e = tvSort;
        this.f39153f = viewPager;
    }

    @Deprecated
    public static h4 b(@NonNull View view, @Nullable Object component) {
        return (h4) ViewDataBinding.bind(component, view, R.layout.activity_quark_source_hope_list);
    }

    public static h4 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static h4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static h4 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (h4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_quark_source_hope_list, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static h4 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (h4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_quark_source_hope_list, null, false, component);
    }

    @Nullable
    public SourceHopeClickProxy d() {
        return this.f39155h;
    }

    @Nullable
    public SourceHopeViewModel f() {
        return this.f39154g;
    }

    public abstract void t(@Nullable SourceHopeClickProxy click);

    public abstract void u(@Nullable SourceHopeViewModel vm);

    @NonNull
    public static h4 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
