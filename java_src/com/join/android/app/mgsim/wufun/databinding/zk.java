package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zk extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f48282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f48283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected CloudAssetRecordViewModel f48284d;

    protected zk(Object _bindingComponent, View _root, int _localFieldCount, ConstraintLayout clContainer, XQuickRecyclerView xrvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f48282b = clContainer;
        this.f48283c = xrvList;
    }

    @Deprecated
    public static zk b(@NonNull View view, @Nullable Object component) {
        return (zk) ViewDataBinding.bind(component, view, R.layout.fragment_cloud_asset_record);
    }

    public static zk bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static zk f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (zk) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_cloud_asset_record, root, attachToRoot, component);
    }

    @NonNull
    public static zk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static zk m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (zk) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_cloud_asset_record, null, false, component);
    }

    @Nullable
    public CloudAssetRecordViewModel d() {
        return this.f48284d;
    }

    public abstract void n(@Nullable CloudAssetRecordViewModel vm);

    @NonNull
    public static zk inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
