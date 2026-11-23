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
public abstract class v50 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected CommonGameInfoBean f46085f;

    protected v50(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView sdvIcon, SimpleDraweeView sdvImage, TextView tvText1, TextView tvText2) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f46081b = sdvIcon;
        this.f46082c = sdvImage;
        this.f46083d = tvText1;
        this.f46084e = tvText2;
    }

    @Deprecated
    public static v50 b(@NonNull View view, @Nullable Object component) {
        return (v50) ViewDataBinding.bind(component, view, R.layout.item_search_list_ad_grid_item);
    }

    public static v50 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static v50 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (v50) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_ad_grid_item, root, attachToRoot, component);
    }

    @NonNull
    public static v50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static v50 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (v50) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_ad_grid_item, null, false, component);
    }

    @Nullable
    public CommonGameInfoBean d() {
        return this.f46085f;
    }

    public abstract void n(@Nullable CommonGameInfoBean itemData);

    @NonNull
    public static v50 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
