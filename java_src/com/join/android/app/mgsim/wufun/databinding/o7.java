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
import com.join.kotlin.ui.modleregin.viewModle.BtReginModle;
import com.join.kotlin.ui.notice.ClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o7 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f42700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f42701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42702d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected BtReginModle f42703e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> f42704f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected ClickProxy f42705g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f42706h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected XRecyclerView.f f42707i;

    protected o7(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, XRecyclerView recycleView, TextView titleTextview) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42700b = backImage;
        this.f42701c = recycleView;
        this.f42702d = titleTextview;
    }

    @NonNull
    @Deprecated
    public static o7 B(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (o7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_regin_activity, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static o7 C(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (o7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_regin_activity, null, false, component);
    }

    @Deprecated
    public static o7 b(@NonNull View view, @Nullable Object component) {
        return (o7) ViewDataBinding.bind(component, view, R.layout.bt_regin_activity);
    }

    public static o7 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static o7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return B(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public BtReginModle A() {
        return this.f42703e;
    }

    public abstract void D(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> adapter);

    public abstract void E(@Nullable ClickProxy click);

    public abstract void F(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void G(@Nullable XRecyclerView.f recycleviewListener);

    public abstract void H(@Nullable BtReginModle viewModle);

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> d() {
        return this.f42704f;
    }

    @Nullable
    public ClickProxy f() {
        return this.f42705g;
    }

    @Nullable
    public LoadBindClickProxy w() {
        return this.f42706h;
    }

    @Nullable
    public XRecyclerView.f y() {
        return this.f42707i;
    }

    @NonNull
    public static o7 inflate(@NonNull LayoutInflater inflater) {
        return C(inflater, DataBindingUtil.getDefaultComponent());
    }
}
