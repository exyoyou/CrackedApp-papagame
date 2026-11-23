package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class bt0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f36573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected ModGameCloudViewModle f36574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected RecyclerView.Adapter f36575d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f36576e;

    protected bt0(Object _bindingComponent, View _root, int _localFieldCount, XRecyclerView recycleView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36573b = recycleView;
    }

    @Deprecated
    public static bt0 b(@NonNull View view, @Nullable Object component) {
        return (bt0) ViewDataBinding.bind(component, view, R.layout.recyclerview_layout_databinding);
    }

    public static bt0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static bt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static bt0 x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (bt0) ViewDataBinding.inflateInternal(inflater, R.layout.recyclerview_layout_databinding, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static bt0 y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (bt0) ViewDataBinding.inflateInternal(inflater, R.layout.recyclerview_layout_databinding, null, false, component);
    }

    public abstract void A(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void B(@Nullable ModGameCloudViewModle viewModle);

    @Nullable
    public RecyclerView.Adapter d() {
        return this.f36575d;
    }

    @Nullable
    public LoadBindClickProxy f() {
        return this.f36576e;
    }

    @Nullable
    public ModGameCloudViewModle w() {
        return this.f36574c;
    }

    public abstract void z(@Nullable RecyclerView.Adapter adapter);

    @NonNull
    public static bt0 inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
