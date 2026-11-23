package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x10 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f47038b;

    protected x10(Object _bindingComponent, View _root, int _localFieldCount, TextView content) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47038b = content;
    }

    @Deprecated
    public static x10 b(@NonNull View view, @Nullable Object component) {
        return (x10) ViewDataBinding.bind(component, view, R.layout.item_game_detail_release_welfare_list);
    }

    public static x10 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x10 c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (x10) ViewDataBinding.inflateInternal(inflater, R.layout.item_game_detail_release_welfare_list, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static x10 d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (x10) ViewDataBinding.inflateInternal(inflater, R.layout.item_game_detail_release_welfare_list, null, false, component);
    }

    @NonNull
    public static x10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static x10 inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
