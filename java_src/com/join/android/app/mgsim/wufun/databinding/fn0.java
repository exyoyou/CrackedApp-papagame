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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle;
import com.join.kotlin.ui.notice.ClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class fn0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f38472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f38473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected MustPlayViewModle f38475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> f38476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected ClickProxy f38477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f38478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected XRecyclerView.f f38479i;

    protected fn0(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, XRecyclerView recycleView, TextView titleTextview) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38472b = backImage;
        this.f38473c = recycleView;
        this.f38474d = titleTextview;
    }

    @NonNull
    @Deprecated
    public static fn0 B(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (fn0) ViewDataBinding.inflateInternal(inflater, R.layout.mustplay_regin_activity, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static fn0 C(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (fn0) ViewDataBinding.inflateInternal(inflater, R.layout.mustplay_regin_activity, null, false, component);
    }

    @Deprecated
    public static fn0 b(@NonNull View view, @Nullable Object component) {
        return (fn0) ViewDataBinding.bind(component, view, R.layout.mustplay_regin_activity);
    }

    public static fn0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static fn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return B(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public MustPlayViewModle A() {
        return this.f38475e;
    }

    public abstract void D(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> adapter);

    public abstract void E(@Nullable ClickProxy click);

    public abstract void F(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void G(@Nullable XRecyclerView.f recycleviewListener);

    public abstract void H(@Nullable MustPlayViewModle viewModle);

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> d() {
        return this.f38476f;
    }

    @Nullable
    public ClickProxy f() {
        return this.f38477g;
    }

    @Nullable
    public LoadBindClickProxy w() {
        return this.f38478h;
    }

    @Nullable
    public XRecyclerView.f y() {
        return this.f38479i;
    }

    @NonNull
    public static fn0 inflate(@NonNull LayoutInflater inflater) {
        return C(inflater, DataBindingUtil.getDefaultComponent());
    }
}
