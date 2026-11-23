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
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.AppBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c50 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f36780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36782d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected AppBean f36783e;

    protected c50(Object _bindingComponent, View _root, int _localFieldCount, DownloadNormalView dvView, SimpleDraweeView sdvIcon, TextView tvName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36780b = dvView;
        this.f36781c = sdvIcon;
        this.f36782d = tvName;
    }

    @Deprecated
    public static c50 b(@NonNull View view, @Nullable Object component) {
        return (c50) ViewDataBinding.bind(component, view, R.layout.item_recommend_game_3);
    }

    public static c50 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static c50 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (c50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game_3, root, attachToRoot, component);
    }

    @NonNull
    public static c50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static c50 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (c50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game_3, null, false, component);
    }

    @Nullable
    public AppBean d() {
        return this.f36783e;
    }

    public abstract void n(@Nullable AppBean itemData);

    @NonNull
    public static c50 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
