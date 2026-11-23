package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public abstract class s40 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final FlowLayout f44632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected SourceListItemBean f44635e;

    protected s40(Object _bindingComponent, View _root, int _localFieldCount, FlowLayout flLabel, SimpleDraweeView sdvImage, TextView tvGameName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f44632b = flLabel;
        this.f44633c = sdvImage;
        this.f44634d = tvGameName;
    }

    @Deprecated
    public static s40 b(@NonNull View view, @Nullable Object component) {
        return (s40) ViewDataBinding.bind(component, view, R.layout.item_quark_search_result);
    }

    public static s40 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static s40 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (s40) ViewDataBinding.inflateInternal(inflater, R.layout.item_quark_search_result, root, attachToRoot, component);
    }

    @NonNull
    public static s40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static s40 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (s40) ViewDataBinding.inflateInternal(inflater, R.layout.item_quark_search_result, null, false, component);
    }

    @Nullable
    public SourceListItemBean d() {
        return this.f44635e;
    }

    public abstract void n(@Nullable SourceListItemBean itemData);

    @NonNull
    public static s40 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
