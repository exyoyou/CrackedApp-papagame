package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BannerBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class oc extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected BannerBean f42794d;

    protected oc(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView image1, LinearLayout rootView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42792b = image1;
        this.f42793c = rootView;
    }

    @Deprecated
    public static oc b(@NonNull View view, @Nullable Object component) {
        return (oc) ViewDataBinding.bind(component, view, R.layout.databinding_htaglist_item);
    }

    public static oc bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static oc f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (oc) ViewDataBinding.inflateInternal(inflater, R.layout.databinding_htaglist_item, root, attachToRoot, component);
    }

    @NonNull
    public static oc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static oc m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (oc) ViewDataBinding.inflateInternal(inflater, R.layout.databinding_htaglist_item, null, false, component);
    }

    @Nullable
    public BannerBean d() {
        return this.f42794d;
    }

    public abstract void n(@Nullable BannerBean data);

    @NonNull
    public static oc inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
