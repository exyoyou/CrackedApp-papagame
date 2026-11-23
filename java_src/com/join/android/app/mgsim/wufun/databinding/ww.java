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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.wufan.user.service.protobuf.MessageCloudGamingPropResponse;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ww extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46993d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46995f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f46997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected MessageCloudGamingPropResponse.PropLog f46998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Bindable
    protected Boolean f46999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected Integer f47000k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected Integer f47001l;

    protected ww(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView iv1, ImageView ivBtn1, TextView tvBtn1, TextView tvText1, TextView tvText2, TextView tvText3, View vLine) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f46991b = iv1;
        this.f46992c = ivBtn1;
        this.f46993d = tvBtn1;
        this.f46994e = tvText1;
        this.f46995f = tvText2;
        this.f46996g = tvText3;
        this.f46997h = vLine;
    }

    @NonNull
    @Deprecated
    public static ww A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ww) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_daoj, null, false, component);
    }

    @Deprecated
    public static ww b(@NonNull View view, @Nullable Object component) {
        return (ww) ViewDataBinding.bind(component, view, R.layout.item_cloud_asset_daoj);
    }

    public static ww bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ww inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ww z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ww) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_daoj, root, attachToRoot, component);
    }

    public abstract void B(@Nullable Boolean collapse);

    public abstract void C(@Nullable Integer iconResId);

    public abstract void D(@Nullable MessageCloudGamingPropResponse.PropLog itemData);

    public abstract void E(@Nullable Integer maxLines);

    @Nullable
    public Boolean d() {
        return this.f46999j;
    }

    @Nullable
    public Integer f() {
        return this.f47001l;
    }

    @Nullable
    public MessageCloudGamingPropResponse.PropLog w() {
        return this.f46998i;
    }

    @Nullable
    public Integer y() {
        return this.f47000k;
    }

    @NonNull
    public static ww inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
