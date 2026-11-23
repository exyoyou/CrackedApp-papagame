package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.quark.proxy.CreateSourceHopeClickProxy;
import com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f39077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f39079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final EditText f39080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f39081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f39082g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f39085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected CreateSourceHopeViewModel f39086k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected CreateSourceHopeClickProxy f39087l;

    protected h0(Object _bindingComponent, View _root, int _localFieldCount, AppBarLayout appBarLayout, ImageView backImage, CollapsingToolbarLayout collapsingToolbarLayout, EditText etContent, CoordinatorLayout mainContent, RecyclerView rvTags, TextView titleTextview, TextView tvSave, XQuickRecyclerView xrvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f39077b = appBarLayout;
        this.f39078c = backImage;
        this.f39079d = collapsingToolbarLayout;
        this.f39080e = etContent;
        this.f39081f = mainContent;
        this.f39082g = rvTags;
        this.f39083h = titleTextview;
        this.f39084i = tvSave;
        this.f39085j = xrvList;
    }

    @Deprecated
    public static h0 b(@NonNull View view, @Nullable Object component) {
        return (h0) ViewDataBinding.bind(component, view, R.layout.activity_create_source_hope);
    }

    public static h0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static h0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static h0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (h0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_create_source_hope, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static h0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (h0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_create_source_hope, null, false, component);
    }

    @Nullable
    public CreateSourceHopeClickProxy d() {
        return this.f39087l;
    }

    @Nullable
    public CreateSourceHopeViewModel f() {
        return this.f39086k;
    }

    public abstract void t(@Nullable CreateSourceHopeClickProxy click);

    public abstract void u(@Nullable CreateSourceHopeViewModel vm);

    @NonNull
    public static h0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
