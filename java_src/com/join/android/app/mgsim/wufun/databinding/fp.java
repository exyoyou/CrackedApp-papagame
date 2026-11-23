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
import com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class fp extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final c7 f38485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f38486c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected GameDetailEmusCloudViewModle f38487d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected RecyclerView.Adapter f38488e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f38489f;

    protected fp(Object _bindingComponent, View _root, int _localFieldCount, c7 layoutStatus, XRecyclerView recycleView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38485b = layoutStatus;
        this.f38486c = recycleView;
    }

    @Deprecated
    public static fp b(@NonNull View view, @Nullable Object component) {
        return (fp) ViewDataBinding.bind(component, view, R.layout.game_detail_emus_cloud_list_layout_databinding);
    }

    public static fp bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static fp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static fp x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (fp) ViewDataBinding.inflateInternal(inflater, R.layout.game_detail_emus_cloud_list_layout_databinding, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static fp y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (fp) ViewDataBinding.inflateInternal(inflater, R.layout.game_detail_emus_cloud_list_layout_databinding, null, false, component);
    }

    public abstract void A(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void B(@Nullable GameDetailEmusCloudViewModle viewModle);

    @Nullable
    public RecyclerView.Adapter d() {
        return this.f38488e;
    }

    @Nullable
    public LoadBindClickProxy f() {
        return this.f38489f;
    }

    @Nullable
    public GameDetailEmusCloudViewModle w() {
        return this.f38487d;
    }

    public abstract void z(@Nullable RecyclerView.Adapter adapter);

    @NonNull
    public static fp inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
