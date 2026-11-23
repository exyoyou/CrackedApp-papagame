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
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;

/* JADX INFO: loaded from: classes4.dex */
public abstract class mc extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f41830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f41831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41833e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected CollectionBeanSub f41834f;

    protected mc(Object _bindingComponent, View _root, int _localFieldCount, TextView appname1, DownloadNormalView dvView, SimpleDraweeView image1, LinearLayout rootView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f41830b = appname1;
        this.f41831c = dvView;
        this.f41832d = image1;
        this.f41833e = rootView;
    }

    @Deprecated
    public static mc b(@NonNull View view, @Nullable Object component) {
        return (mc) ViewDataBinding.bind(component, view, R.layout.databinding_hgamelist_item);
    }

    public static mc bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static mc f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (mc) ViewDataBinding.inflateInternal(inflater, R.layout.databinding_hgamelist_item, root, attachToRoot, component);
    }

    @NonNull
    public static mc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static mc m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (mc) ViewDataBinding.inflateInternal(inflater, R.layout.databinding_hgamelist_item, null, false, component);
    }

    @Nullable
    public CollectionBeanSub d() {
        return this.f41834f;
    }

    public abstract void n(@Nullable CollectionBeanSub data);

    @NonNull
    public static mc inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
