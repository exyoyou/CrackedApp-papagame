package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.customview.LoadingImageView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c7 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f36792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LoadingImageView f36794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36796f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36797g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36798h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f36799i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f36800j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36801k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final Button f36802l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f36803m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f36804n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Bindable
    protected LoadBindindData f36805o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f36806p;

    protected c7(Object _bindingComponent, View _root, int _localFieldCount, TextView failedMessage, LinearLayout loadingNone, LoadingImageView loadingView, ImageView lodingBackImage, LinearLayout lodingFaile, LinearLayout lodingLayout, TextView noneMessage, ImageView noneReloadImage, ImageView relodingimag, TextView setAll, Button setNetwork, TextView setting, TextView textView2) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36792b = failedMessage;
        this.f36793c = loadingNone;
        this.f36794d = loadingView;
        this.f36795e = lodingBackImage;
        this.f36796f = lodingFaile;
        this.f36797g = lodingLayout;
        this.f36798h = noneMessage;
        this.f36799i = noneReloadImage;
        this.f36800j = relodingimag;
        this.f36801k = setAll;
        this.f36802l = setNetwork;
        this.f36803m = setting;
        this.f36804n = textView2;
    }

    @Deprecated
    public static c7 b(@NonNull View view, @Nullable Object component) {
        return (c7) ViewDataBinding.bind(component, view, R.layout.bindding_load_layout_include);
    }

    public static c7 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static c7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static c7 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (c7) ViewDataBinding.inflateInternal(inflater, R.layout.bindding_load_layout_include, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static c7 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (c7) ViewDataBinding.inflateInternal(inflater, R.layout.bindding_load_layout_include, null, false, component);
    }

    @Nullable
    public LoadBindindData d() {
        return this.f36805o;
    }

    @Nullable
    public LoadBindClickProxy f() {
        return this.f36806p;
    }

    public abstract void t(@Nullable LoadBindindData bindingData);

    public abstract void u(@Nullable LoadBindClickProxy loadBindProxy);

    @NonNull
    public static c7 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
