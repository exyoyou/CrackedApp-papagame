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
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.viewmodel.CommentStatisticDataViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class gl extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final RecyclerView f38885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected CommentStatisticDataViewModel f38887d;

    protected gl(Object _bindingComponent, View _root, int _localFieldCount, RecyclerView rvList, TextView title) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38885b = rvList;
        this.f38886c = title;
    }

    @Deprecated
    public static gl b(@NonNull View view, @Nullable Object component) {
        return (gl) ViewDataBinding.bind(component, view, R.layout.fragment_comment_statistic_data);
    }

    public static gl bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static gl f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (gl) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_comment_statistic_data, root, attachToRoot, component);
    }

    @NonNull
    public static gl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static gl m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (gl) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_comment_statistic_data, null, false, component);
    }

    @Nullable
    public CommentStatisticDataViewModel d() {
        return this.f38887d;
    }

    public abstract void n(@Nullable CommentStatisticDataViewModel vm);

    @NonNull
    public static gl inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
