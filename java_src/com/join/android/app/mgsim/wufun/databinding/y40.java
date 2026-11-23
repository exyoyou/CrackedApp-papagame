package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.recomend.RecommendBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class y40 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f47576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected RecommendBean f47578d;

    protected y40(Object _bindingComponent, View _root, int _localFieldCount, ImageView ivCheck, SimpleDraweeView sdvIcon) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47576b = ivCheck;
        this.f47577c = sdvIcon;
    }

    @Deprecated
    public static y40 b(@NonNull View view, @Nullable Object component) {
        return (y40) ViewDataBinding.bind(component, view, R.layout.item_recommend_game_1);
    }

    public static y40 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static y40 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (y40) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game_1, root, attachToRoot, component);
    }

    @NonNull
    public static y40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static y40 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (y40) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game_1, null, false, component);
    }

    @Nullable
    public RecommendBean d() {
        return this.f47578d;
    }

    public abstract void n(@Nullable RecommendBean itemData);

    @NonNull
    public static y40 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
