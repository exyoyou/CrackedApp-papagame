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
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.kotlin.ui.notice.NoticeViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class i3 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f39625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f39626c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39627d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected NoticeViewModle f39628e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected RecyclerView.Adapter f39629f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected ClickProxy f39630g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f39631h;

    protected i3(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, XRecyclerView recycleView, TextView titleTextview) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f39625b = backImage;
        this.f39626c = recycleView;
        this.f39627d = titleTextview;
    }

    @NonNull
    @Deprecated
    public static i3 A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (i3) ViewDataBinding.inflateInternal(inflater, R.layout.activity_noticelist_activity, null, false, component);
    }

    @Deprecated
    public static i3 b(@NonNull View view, @Nullable Object component) {
        return (i3) ViewDataBinding.bind(component, view, R.layout.activity_noticelist_activity);
    }

    public static i3 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static i3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static i3 z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (i3) ViewDataBinding.inflateInternal(inflater, R.layout.activity_noticelist_activity, root, attachToRoot, component);
    }

    public abstract void B(@Nullable RecyclerView.Adapter adapter);

    public abstract void C(@Nullable ClickProxy click);

    public abstract void D(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void E(@Nullable NoticeViewModle vm);

    @Nullable
    public RecyclerView.Adapter d() {
        return this.f39629f;
    }

    @Nullable
    public ClickProxy f() {
        return this.f39630g;
    }

    @Nullable
    public LoadBindClickProxy w() {
        return this.f39631h;
    }

    @Nullable
    public NoticeViewModle y() {
        return this.f39628e;
    }

    @NonNull
    public static i3 inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
