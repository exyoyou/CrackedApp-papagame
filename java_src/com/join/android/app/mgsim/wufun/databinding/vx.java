package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class vx extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected CommonGameInfoBean f46485c;

    protected vx(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView sdvImage) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f46484b = sdvImage;
    }

    @Deprecated
    public static vx b(@NonNull View view, @Nullable Object component) {
        return (vx) ViewDataBinding.bind(component, view, R.layout.item_common_zone_ad);
    }

    public static vx bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static vx f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (vx) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_ad, root, attachToRoot, component);
    }

    @NonNull
    public static vx inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static vx m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (vx) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_ad, null, false, component);
    }

    @Nullable
    public CommonGameInfoBean d() {
        return this.f46485c;
    }

    public abstract void n(@Nullable CommonGameInfoBean itemData);

    @NonNull
    public static vx inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
