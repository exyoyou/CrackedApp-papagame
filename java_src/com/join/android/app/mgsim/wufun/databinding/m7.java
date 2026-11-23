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
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m7 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f41765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f41766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41769f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f41770g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f41773j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ProgressBar f41774k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected BtGameListItem f41775l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Bindable
    protected AppListItemShowBean f41776m;

    protected m7(Object _bindingComponent, View _root, int _localFieldCount, TextView appSize, DownloadNormalView dvView, SimpleDraweeView gameIcon, TextView gameMessage, LinearLayout gameName, ImageView giftPackageSwich, LinearLayout linearLayout2, TextView lodingInfo, ProgressBar progressBar, ProgressBar progressBarZip) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f41765b = appSize;
        this.f41766c = dvView;
        this.f41767d = gameIcon;
        this.f41768e = gameMessage;
        this.f41769f = gameName;
        this.f41770g = giftPackageSwich;
        this.f41771h = linearLayout2;
        this.f41772i = lodingInfo;
        this.f41773j = progressBar;
        this.f41774k = progressBarZip;
    }

    @Deprecated
    public static m7 b(@NonNull View view, @Nullable Object component) {
        return (m7) ViewDataBinding.bind(component, view, R.layout.bt_listitem);
    }

    public static m7 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static m7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static m7 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (m7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_listitem, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static m7 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (m7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_listitem, null, false, component);
    }

    @Nullable
    public BtGameListItem d() {
        return this.f41775l;
    }

    @Nullable
    public AppListItemShowBean f() {
        return this.f41776m;
    }

    public abstract void t(@Nullable BtGameListItem album);

    public abstract void u(@Nullable AppListItemShowBean listBean);

    @NonNull
    public static m7 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
