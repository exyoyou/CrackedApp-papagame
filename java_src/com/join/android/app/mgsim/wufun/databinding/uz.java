package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.GameDetailInfoItemBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class uz extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f45978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45979c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected GameDetailInfoItemBean f45980d;

    protected uz(Object _bindingComponent, View _root, int _localFieldCount, ImageView arrow, TextView gameName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45978b = arrow;
        this.f45979c = gameName;
    }

    @Deprecated
    public static uz b(@NonNull View view, @Nullable Object component) {
        return (uz) ViewDataBinding.bind(component, view, R.layout.item_discount_game_detail_info_list);
    }

    public static uz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static uz f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (uz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_info_list, root, attachToRoot, component);
    }

    @NonNull
    public static uz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static uz m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (uz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_info_list, null, false, component);
    }

    @Nullable
    public GameDetailInfoItemBean d() {
        return this.f45980d;
    }

    public abstract void n(@Nullable GameDetailInfoItemBean itemData);

    @NonNull
    public static uz inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
