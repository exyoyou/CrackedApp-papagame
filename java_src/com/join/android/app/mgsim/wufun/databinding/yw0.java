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
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;

/* JADX INFO: loaded from: classes4.dex */
public abstract class yw0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f47980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f47981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47982d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47983e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47984f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f47985g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47986h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47987i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f47988j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ProgressBar f47989k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected CollectionBeanSub f47990l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Bindable
    protected AppListItemShowBean f47991m;

    protected yw0(Object _bindingComponent, View _root, int _localFieldCount, TextView appSize, DownloadNormalView dvView, SimpleDraweeView gameIcon, TextView gameMessage, LinearLayout gameName, ImageView giftPackageSwich, LinearLayout linearLayout2, TextView lodingInfo, ProgressBar progressBar, ProgressBar progressBarZip) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47980b = appSize;
        this.f47981c = dvView;
        this.f47982d = gameIcon;
        this.f47983e = gameMessage;
        this.f47984f = gameName;
        this.f47985g = giftPackageSwich;
        this.f47986h = linearLayout2;
        this.f47987i = lodingInfo;
        this.f47988j = progressBar;
        this.f47989k = progressBarZip;
    }

    @Deprecated
    public static yw0 b(@NonNull View view, @Nullable Object component) {
        return (yw0) ViewDataBinding.bind(component, view, R.layout.user_recomend_listitem);
    }

    public static yw0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static yw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static yw0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (yw0) ViewDataBinding.inflateInternal(inflater, R.layout.user_recomend_listitem, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static yw0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (yw0) ViewDataBinding.inflateInternal(inflater, R.layout.user_recomend_listitem, null, false, component);
    }

    @Nullable
    public CollectionBeanSub d() {
        return this.f47990l;
    }

    @Nullable
    public AppListItemShowBean f() {
        return this.f47991m;
    }

    public abstract void t(@Nullable CollectionBeanSub album);

    public abstract void u(@Nullable AppListItemShowBean listBean);

    @NonNull
    public static yw0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
