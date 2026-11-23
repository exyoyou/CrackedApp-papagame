package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class dn0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f37543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f37545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final CornersLinearLayout f37549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected com.join.android.app.component.video.c f37550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Bindable
    protected MustplayItemBean f37551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected VideoModle f37552k;

    protected dn0(Object _bindingComponent, View _root, int _localFieldCount, TextView appType, TextView appdownCount, DownloadNormalView dvView, TextView gameName, TextView message, LinearLayout tag, CornersLinearLayout video) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f37543b = appType;
        this.f37544c = appdownCount;
        this.f37545d = dvView;
        this.f37546e = gameName;
        this.f37547f = message;
        this.f37548g = tag;
        this.f37549h = video;
    }

    @Deprecated
    public static dn0 b(@NonNull View view, @Nullable Object component) {
        return (dn0) ViewDataBinding.bind(component, view, R.layout.mustplay_item_layout);
    }

    public static dn0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static dn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static dn0 x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (dn0) ViewDataBinding.inflateInternal(inflater, R.layout.mustplay_item_layout, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static dn0 y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (dn0) ViewDataBinding.inflateInternal(inflater, R.layout.mustplay_item_layout, null, false, component);
    }

    public abstract void A(@Nullable VideoModle videoData);

    public abstract void B(@Nullable com.join.android.app.component.video.c videoHelper);

    @Nullable
    public MustplayItemBean d() {
        return this.f37551j;
    }

    @Nullable
    public VideoModle f() {
        return this.f37552k;
    }

    @Nullable
    public com.join.android.app.component.video.c w() {
        return this.f37550i;
    }

    public abstract void z(@Nullable MustplayItemBean data);

    @NonNull
    public static dn0 inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
