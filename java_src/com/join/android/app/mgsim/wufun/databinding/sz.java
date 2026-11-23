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
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.GameDetailDialogInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class sz extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f45050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected GameDetailDialogInfoBean f45051c;

    protected sz(Object _bindingComponent, View _root, int _localFieldCount, TextView title) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45050b = title;
    }

    @Deprecated
    public static sz b(@NonNull View view, @Nullable Object component) {
        return (sz) ViewDataBinding.bind(component, view, R.layout.item_discount_game_detail_dialog_info_list);
    }

    public static sz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static sz f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (sz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_dialog_info_list, root, attachToRoot, component);
    }

    @NonNull
    public static sz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static sz m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (sz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_dialog_info_list, null, false, component);
    }

    @Nullable
    public GameDetailDialogInfoBean d() {
        return this.f45051c;
    }

    public abstract void n(@Nullable GameDetailDialogInfoBean itemData);

    @NonNull
    public static sz inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
