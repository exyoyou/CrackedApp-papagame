package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class qz extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f44122b;

    protected qz(Object _bindingComponent, View _root, int _localFieldCount, MultiStandVideo wfVideo) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f44122b = wfVideo;
    }

    @Deprecated
    public static qz b(@NonNull View view, @Nullable Object component) {
        return (qz) ViewDataBinding.bind(component, view, R.layout.item_discount_game_detail_banner_video);
    }

    public static qz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static qz c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (qz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_video, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static qz d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (qz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_video, null, false, component);
    }

    @NonNull
    public static qz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static qz inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
