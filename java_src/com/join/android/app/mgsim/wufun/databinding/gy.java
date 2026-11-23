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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class gy extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected CommonGameInfoBean f39062g;

    protected gy(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView sdvImage, TextView tvGameName, TextView tvLabel, TextView tvScore, TextView tvScoreLabel) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f39057b = sdvImage;
        this.f39058c = tvGameName;
        this.f39059d = tvLabel;
        this.f39060e = tvScore;
        this.f39061f = tvScoreLabel;
    }

    @Deprecated
    public static gy b(@NonNull View view, @Nullable Object component) {
        return (gy) ViewDataBinding.bind(component, view, R.layout.item_common_zone_game_info_inner_bottom_card);
    }

    public static gy bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static gy f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (gy) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_game_info_inner_bottom_card, root, attachToRoot, component);
    }

    @NonNull
    public static gy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static gy m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (gy) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_game_info_inner_bottom_card, null, false, component);
    }

    @Nullable
    public CommonGameInfoBean d() {
        return this.f39062g;
    }

    public abstract void n(@Nullable CommonGameInfoBean itemData);

    @NonNull
    public static gy inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
