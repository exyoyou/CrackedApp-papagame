package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.AppBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e50 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f37787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f37790e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37791f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37792g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ProgressBar f37793h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ProgressBar f37794i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37795j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37796k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f37797l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f37798m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Bindable
    protected AppBean f37799n;

    protected e50(Object _bindingComponent, View _root, int _localFieldCount, DownloadNormalView dvView, SimpleDraweeView gameIcon, LinearLayout gameName, ImageView giftPackageSwich, LinearLayout linearLayout2, TextView lodingInfo, ProgressBar progressBar, ProgressBar progressBarZip, LinearLayout tipsLayout, TextView tvAppSize, TextView tvGameName, TextView tvInfo) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f37787b = dvView;
        this.f37788c = gameIcon;
        this.f37789d = gameName;
        this.f37790e = giftPackageSwich;
        this.f37791f = linearLayout2;
        this.f37792g = lodingInfo;
        this.f37793h = progressBar;
        this.f37794i = progressBarZip;
        this.f37795j = tipsLayout;
        this.f37796k = tvAppSize;
        this.f37797l = tvGameName;
        this.f37798m = tvInfo;
    }

    @Deprecated
    public static e50 b(@NonNull View view, @Nullable Object component) {
        return (e50) ViewDataBinding.bind(component, view, R.layout.item_recommend_game_4);
    }

    public static e50 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static e50 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (e50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game_4, root, attachToRoot, component);
    }

    @NonNull
    public static e50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static e50 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (e50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game_4, null, false, component);
    }

    @Nullable
    public AppBean d() {
        return this.f37799n;
    }

    public abstract void n(@Nullable AppBean itemData);

    @NonNull
    public static e50 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
