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
public abstract class kz extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Bindable
    protected String f41082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected String f41083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected String f41084d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected GameDetailFragmentClickProxy f41085e;

    protected kz(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @NonNull
    @Deprecated
    public static kz A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (kz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_pic_v, null, false, component);
    }

    @Deprecated
    public static kz b(@NonNull View view, @Nullable Object component) {
        return (kz) ViewDataBinding.bind(component, view, R.layout.item_discount_game_detail_banner_pic_v);
    }

    public static kz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static kz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static kz z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (kz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_pic_v, root, attachToRoot, component);
    }

    public abstract void B(@Nullable GameDetailFragmentClickProxy click);

    public abstract void C(@Nullable String picUrl1);

    public abstract void D(@Nullable String picUrl2);

    public abstract void E(@Nullable String picUrl3);

    @Nullable
    public GameDetailFragmentClickProxy d() {
        return this.f41085e;
    }

    @Nullable
    public String f() {
        return this.f41082b;
    }

    @Nullable
    public String w() {
        return this.f41083c;
    }

    @Nullable
    public String y() {
        return this.f41084d;
    }

    @NonNull
    public static kz inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
