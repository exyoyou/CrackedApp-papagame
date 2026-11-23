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
public abstract class np extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final c7 f42472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f42473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected ModGameCloudViewModle f42474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected RecyclerView.Adapter f42475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f42476f;

    protected np(Object _bindingComponent, View _root, int _localFieldCount, c7 layoutStatus, XRecyclerView recycleView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42472b = layoutStatus;
        this.f42473c = recycleView;
    }

    @Deprecated
    public static np b(@NonNull View view, @Nullable Object component) {
        return (np) ViewDataBinding.bind(component, view, R.layout.game_detail_mod_cloud_list_layout_databinding);
    }

    public static np bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static np inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static np x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (np) ViewDataBinding.inflateInternal(inflater, R.layout.game_detail_mod_cloud_list_layout_databinding, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static np y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (np) ViewDataBinding.inflateInternal(inflater, R.layout.game_detail_mod_cloud_list_layout_databinding, null, false, component);
    }

    public abstract void A(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void B(@Nullable ModGameCloudViewModle viewModle);

    @Nullable
    public RecyclerView.Adapter d() {
        return this.f42475e;
    }

    @Nullable
    public LoadBindClickProxy f() {
        return this.f42476f;
    }

    @Nullable
    public ModGameCloudViewModle w() {
        return this.f42474d;
    }

    public abstract void z(@Nullable RecyclerView.Adapter adapter);

    @NonNull
    public static np inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
