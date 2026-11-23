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
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.kotlin.zone.viewmodel.CommonZoneViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f36124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36125c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f36126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected CommonZoneViewModel f36127e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected ClickProxy f36128f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f36129g;

    protected b0(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, TextView titleTextview, XQuickRecyclerView xrvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36124b = backImage;
        this.f36125c = titleTextview;
        this.f36126d = xrvList;
    }

    @Deprecated
    public static b0 b(@NonNull View view, @Nullable Object component) {
        return (b0) ViewDataBinding.bind(component, view, R.layout.activity_common_zone);
    }

    public static b0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static b0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static b0 x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (b0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_common_zone, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static b0 y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (b0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_common_zone, null, false, component);
    }

    public abstract void A(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void B(@Nullable CommonZoneViewModel vm);

    @Nullable
    public ClickProxy d() {
        return this.f36128f;
    }

    @Nullable
    public LoadBindClickProxy f() {
        return this.f36129g;
    }

    @Nullable
    public CommonZoneViewModel w() {
        return this.f36127e;
    }

    public abstract void z(@Nullable ClickProxy click);

    @NonNull
    public static b0 inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
