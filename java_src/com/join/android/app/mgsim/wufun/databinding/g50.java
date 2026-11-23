package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g50 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f38721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38722e;

    protected g50(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView appIcon, TextView appName, ConstraintLayout main, ImageView selectbutn) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38719b = appIcon;
        this.f38720c = appName;
        this.f38721d = main;
        this.f38722e = selectbutn;
    }

    @Deprecated
    public static g50 b(@NonNull View view, @Nullable Object component) {
        return (g50) ViewDataBinding.bind(component, view, R.layout.item_recommend_game);
    }

    public static g50 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static g50 c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (g50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static g50 d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (g50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game, null, false, component);
    }

    @NonNull
    public static g50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static g50 inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
