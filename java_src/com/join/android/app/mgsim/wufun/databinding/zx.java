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
public abstract class zx extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected CommonGameInfoBean f48476e;

    protected zx(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView sdvImage, TextView tvGameName, TextView tvLabel) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f48473b = sdvImage;
        this.f48474c = tvGameName;
        this.f48475d = tvLabel;
    }

    @Deprecated
    public static zx b(@NonNull View view, @Nullable Object component) {
        return (zx) ViewDataBinding.bind(component, view, R.layout.item_common_zone_game_info_bottom);
    }

    public static zx bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static zx f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (zx) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_game_info_bottom, root, attachToRoot, component);
    }

    @NonNull
    public static zx inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static zx m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (zx) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_game_info_bottom, null, false, component);
    }

    @Nullable
    public CommonGameInfoBean d() {
        return this.f48476e;
    }

    public abstract void n(@Nullable CommonGameInfoBean itemData);

    @NonNull
    public static zx inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
