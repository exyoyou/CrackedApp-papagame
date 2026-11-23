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
public abstract class iz extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Bindable
    protected String f40005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected GameDetailFragmentClickProxy f40006c;

    protected iz(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static iz b(@NonNull View view, @Nullable Object component) {
        return (iz) ViewDataBinding.bind(component, view, R.layout.item_discount_game_detail_banner_pic_h);
    }

    public static iz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static iz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static iz m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (iz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_pic_h, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static iz n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (iz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_pic_h, null, false, component);
    }

    @Nullable
    public GameDetailFragmentClickProxy d() {
        return this.f40006c;
    }

    @Nullable
    public String f() {
        return this.f40005b;
    }

    public abstract void t(@Nullable GameDetailFragmentClickProxy click);

    public abstract void u(@Nullable String picUrl);

    @NonNull
    public static iz inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
