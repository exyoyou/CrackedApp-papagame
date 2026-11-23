package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public abstract class z60 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final FlowLayout f48104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected SourceListItemBean f48107e;

    protected z60(Object _bindingComponent, View _root, int _localFieldCount, FlowLayout flLabel, SimpleDraweeView sdvImage, TextView tvGameName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f48104b = flLabel;
        this.f48105c = sdvImage;
        this.f48106d = tvGameName;
    }

    @Deprecated
    public static z60 b(@NonNull View view, @Nullable Object component) {
        return (z60) ViewDataBinding.bind(component, view, R.layout.item_source_share);
    }

    public static z60 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static z60 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (z60) ViewDataBinding.inflateInternal(inflater, R.layout.item_source_share, root, attachToRoot, component);
    }

    @NonNull
    public static z60 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static z60 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (z60) ViewDataBinding.inflateInternal(inflater, R.layout.item_source_share, null, false, component);
    }

    @Nullable
    public SourceListItemBean d() {
        return this.f48107e;
    }

    public abstract void n(@Nullable SourceListItemBean itemData);

    @NonNull
    public static z60 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
