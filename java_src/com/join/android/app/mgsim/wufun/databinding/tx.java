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
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.CommentDataProgressBean;
import com.join.mgps.customview.MStarBar;

/* JADX INFO: loaded from: classes4.dex */
public abstract class tx extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MStarBar f45474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected CommentDataProgressBean f45475d;

    protected tx(Object _bindingComponent, View _root, int _localFieldCount, LinearLayout container, MStarBar mStarBar) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45473b = container;
        this.f45474c = mStarBar;
    }

    @Deprecated
    public static tx b(@NonNull View view, @Nullable Object component) {
        return (tx) ViewDataBinding.bind(component, view, R.layout.item_comment_statistic_data_layout);
    }

    public static tx bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static tx f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (tx) ViewDataBinding.inflateInternal(inflater, R.layout.item_comment_statistic_data_layout, root, attachToRoot, component);
    }

    @NonNull
    public static tx inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static tx m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (tx) ViewDataBinding.inflateInternal(inflater, R.layout.item_comment_statistic_data_layout, null, false, component);
    }

    @Nullable
    public CommentDataProgressBean d() {
        return this.f45475d;
    }

    public abstract void n(@Nullable CommentDataProgressBean itemData);

    @NonNull
    public static tx inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
