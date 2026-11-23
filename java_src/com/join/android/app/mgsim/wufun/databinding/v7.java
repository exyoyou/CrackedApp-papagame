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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class v7 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f46093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46094c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46095d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46096e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46097f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final CornersLinearLayout f46098g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected Boolean f46099h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected com.join.android.app.component.video.c f46100i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Bindable
    protected MustplayItemBean f46101j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected VideoModle f46102k;

    protected v7(Object _bindingComponent, View _root, int _localFieldCount, DownloadNormalView dvView, TextView gameName, SimpleDraweeView icon, TextView message, LinearLayout tag, CornersLinearLayout video) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f46093b = dvView;
        this.f46094c = gameName;
        this.f46095d = icon;
        this.f46096e = message;
        this.f46097f = tag;
        this.f46098g = video;
    }

    @NonNull
    @Deprecated
    public static v7 A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (v7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_video_item_layout, null, false, component);
    }

    @Deprecated
    public static v7 b(@NonNull View view, @Nullable Object component) {
        return (v7) ViewDataBinding.bind(component, view, R.layout.bt_video_item_layout);
    }

    public static v7 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static v7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static v7 z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (v7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_video_item_layout, root, attachToRoot, component);
    }

    public abstract void B(@Nullable MustplayItemBean data);

    public abstract void C(@Nullable Boolean isshowWhite);

    public abstract void D(@Nullable VideoModle videoData);

    public abstract void E(@Nullable com.join.android.app.component.video.c videoHelper);

    @Nullable
    public MustplayItemBean d() {
        return this.f46101j;
    }

    @Nullable
    public Boolean f() {
        return this.f46099h;
    }

    @Nullable
    public VideoModle w() {
        return this.f46102k;
    }

    @Nullable
    public com.join.android.app.component.video.c y() {
        return this.f46100i;
    }

    @NonNull
    public static v7 inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
