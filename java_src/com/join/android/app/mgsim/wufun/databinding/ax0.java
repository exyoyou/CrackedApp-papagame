package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.modleregin.modle.VideoModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ax0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36106c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f36107d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected com.join.android.app.component.video.c f36108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected VideoModle f36109f;

    protected ax0(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView bannerView, SimpleDraweeView loading, FrameLayout videoContner) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36105b = bannerView;
        this.f36106c = loading;
        this.f36107d = videoContner;
    }

    @Deprecated
    public static ax0 b(@NonNull View view, @Nullable Object component) {
        return (ax0) ViewDataBinding.bind(component, view, R.layout.video_dbs_layout);
    }

    public static ax0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ax0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ax0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ax0) ViewDataBinding.inflateInternal(inflater, R.layout.video_dbs_layout, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static ax0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ax0) ViewDataBinding.inflateInternal(inflater, R.layout.video_dbs_layout, null, false, component);
    }

    @Nullable
    public VideoModle d() {
        return this.f36109f;
    }

    @Nullable
    public com.join.android.app.component.video.c f() {
        return this.f36108e;
    }

    public abstract void t(@Nullable VideoModle data);

    public abstract void u(@Nullable com.join.android.app.component.video.c videoHelper);

    @NonNull
    public static ax0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
