package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class mz extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Bindable
    protected String f42098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected GameDetailFragmentClickProxy f42099c;

    protected mz(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static mz b(@NonNull View view, @Nullable Object component) {
        return (mz) ViewDataBinding.bind(component, view, R.layout.item_discount_game_detail_banner_pic_v_single);
    }

    public static mz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static mz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static mz m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (mz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_pic_v_single, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static mz n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (mz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_pic_v_single, null, false, component);
    }

    @Nullable
    public GameDetailFragmentClickProxy d() {
        return this.f42099c;
    }

    @Nullable
    public String f() {
        return this.f42098b;
    }

    public abstract void t(@Nullable GameDetailFragmentClickProxy click);

    public abstract void u(@Nullable String picUrl);

    @NonNull
    public static mz inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
