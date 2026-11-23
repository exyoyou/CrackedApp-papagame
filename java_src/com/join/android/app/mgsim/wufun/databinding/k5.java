package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.UploadSourceHopeClickProxy;
import com.join.kotlin.quark.viewmodel.UploadSourceHopeViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k5 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f40596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final EditText f40597c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f40598d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f40600f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f40601g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40602h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40603i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40604j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected UploadSourceHopeViewModel f40605k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected UploadSourceHopeClickProxy f40606l;

    protected k5(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, EditText etContent, EditText etContentLink, ImageView ivLink, NestedScrollView mainContent, RecyclerView rvTags, TextView titleTextview, TextView tvUpload, LinearLayout vTipLink) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f40596b = backImage;
        this.f40597c = etContent;
        this.f40598d = etContentLink;
        this.f40599e = ivLink;
        this.f40600f = mainContent;
        this.f40601g = rvTags;
        this.f40602h = titleTextview;
        this.f40603i = tvUpload;
        this.f40604j = vTipLink;
    }

    @Deprecated
    public static k5 b(@NonNull View view, @Nullable Object component) {
        return (k5) ViewDataBinding.bind(component, view, R.layout.activity_upload_source_hope);
    }

    public static k5 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static k5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static k5 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (k5) ViewDataBinding.inflateInternal(inflater, R.layout.activity_upload_source_hope, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static k5 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (k5) ViewDataBinding.inflateInternal(inflater, R.layout.activity_upload_source_hope, null, false, component);
    }

    @Nullable
    public UploadSourceHopeClickProxy d() {
        return this.f40606l;
    }

    @Nullable
    public UploadSourceHopeViewModel f() {
        return this.f40605k;
    }

    public abstract void t(@Nullable UploadSourceHopeClickProxy click);

    public abstract void u(@Nullable UploadSourceHopeViewModel vm);

    @NonNull
    public static k5 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
