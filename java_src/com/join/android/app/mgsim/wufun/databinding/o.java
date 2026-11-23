package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel;
import com.join.mgps.customview.SlidingTabLayout6;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f42566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout6 f42567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager f42569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected CloudAssetRecordViewModel f42570f;

    protected o(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, SlidingTabLayout6 stbView, TextView tvTitle, ViewPager vpView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42566b = backImage;
        this.f42567c = stbView;
        this.f42568d = tvTitle;
        this.f42569e = vpView;
    }

    @Deprecated
    public static o b(@NonNull View view, @Nullable Object component) {
        return (o) ViewDataBinding.bind(component, view, R.layout.activity_cloud_asset_record);
    }

    public static o bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static o f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (o) ViewDataBinding.inflateInternal(inflater, R.layout.activity_cloud_asset_record, root, attachToRoot, component);
    }

    @NonNull
    public static o inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static o m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (o) ViewDataBinding.inflateInternal(inflater, R.layout.activity_cloud_asset_record, null, false, component);
    }

    @Nullable
    public CloudAssetRecordViewModel d() {
        return this.f42570f;
    }

    public abstract void n(@Nullable CloudAssetRecordViewModel vm);

    @NonNull
    public static o inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
