package com.join.android.app.mgsim.wufun.databinding;

import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class se extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f44743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44748g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44749h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44750i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44751j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f44752k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44753l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44754m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f44755n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final View f44756o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final View f44757p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f44758q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Bindable
    protected String f44759r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Bindable
    protected String f44760s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Bindable
    protected String f44761t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Bindable
    protected String f44762u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Bindable
    protected String f44763v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Bindable
    protected String f44764w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Bindable
    protected Spanned f44765x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Bindable
    protected Boolean f44766y;

    protected se(Object _bindingComponent, View _root, int _localFieldCount, ImageView iv1, ImageView iv2, ImageView ivBtn1, LinearLayout llBtn1, SimpleDraweeView sdvIcon1, TextView tvBtn1, TextView tvLabel1, TextView tvText1, TextView tvText2, TextView tvText3, TextView tvText4, TextView tvText5, TextView tvText6, View v10, View v11, View v12) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f44743b = iv1;
        this.f44744c = iv2;
        this.f44745d = ivBtn1;
        this.f44746e = llBtn1;
        this.f44747f = sdvIcon1;
        this.f44748g = tvBtn1;
        this.f44749h = tvLabel1;
        this.f44750i = tvText1;
        this.f44751j = tvText2;
        this.f44752k = tvText3;
        this.f44753l = tvText4;
        this.f44754m = tvText5;
        this.f44755n = tvText6;
        this.f44756o = v10;
        this.f44757p = v11;
        this.f44758q = v12;
    }

    @NonNull
    @Deprecated
    public static se E(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (se) ViewDataBinding.inflateInternal(inflater, R.layout.dialog_cloud_sign_success, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static se F(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (se) ViewDataBinding.inflateInternal(inflater, R.layout.dialog_cloud_sign_success, null, false, component);
    }

    @Deprecated
    public static se b(@NonNull View view, @Nullable Object component) {
        return (se) ViewDataBinding.bind(component, view, R.layout.dialog_cloud_sign_success);
    }

    public static se bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static se inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return E(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public Boolean A() {
        return this.f44766y;
    }

    @Nullable
    public String B() {
        return this.f44759r;
    }

    @Nullable
    public String C() {
        return this.f44761t;
    }

    @Nullable
    public String D() {
        return this.f44762u;
    }

    public abstract void G(@Nullable String freeTimeStr);

    public abstract void H(@Nullable String gameIcon);

    public abstract void I(@Nullable String gameName);

    public abstract void J(@Nullable Spanned timeStr);

    public abstract void K(@Nullable Boolean timeVisible);

    public abstract void L(@Nullable String totalTime);

    public abstract void M(@Nullable String vipTimeStr);

    public abstract void N(@Nullable String vipType);

    @Nullable
    public String d() {
        return this.f44760s;
    }

    @Nullable
    public String f() {
        return this.f44763v;
    }

    @Nullable
    public String w() {
        return this.f44764w;
    }

    @Nullable
    public Spanned y() {
        return this.f44765x;
    }

    @NonNull
    public static se inflate(@NonNull LayoutInflater inflater) {
        return F(inflater, DataBindingUtil.getDefaultComponent());
    }
}
