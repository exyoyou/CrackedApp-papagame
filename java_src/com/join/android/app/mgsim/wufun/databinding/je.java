package com.join.android.app.mgsim.wufun.databinding;

import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class je extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40192c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40193d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40194e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40195f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40196g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40197h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40198i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40199j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected String f40200k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected String f40201l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Bindable
    protected Spanned f40202m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Bindable
    protected Boolean f40203n;

    protected je(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView iv1, ImageView iv2, ImageView ivBtn1, LinearLayout llBtn1, SimpleDraweeView sdvIcon1, TextView tvLabel1, TextView tvText1, TextView tvText2, TextView tvText5) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f40191b = iv1;
        this.f40192c = iv2;
        this.f40193d = ivBtn1;
        this.f40194e = llBtn1;
        this.f40195f = sdvIcon1;
        this.f40196g = tvLabel1;
        this.f40197h = tvText1;
        this.f40198i = tvText2;
        this.f40199j = tvText5;
    }

    @NonNull
    @Deprecated
    public static je A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (je) ViewDataBinding.inflateInternal(inflater, R.layout.dialog_cloud_game_launch_tip, null, false, component);
    }

    @Deprecated
    public static je b(@NonNull View view, @Nullable Object component) {
        return (je) ViewDataBinding.bind(component, view, R.layout.dialog_cloud_game_launch_tip);
    }

    public static je bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static je inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static je z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (je) ViewDataBinding.inflateInternal(inflater, R.layout.dialog_cloud_game_launch_tip, root, attachToRoot, component);
    }

    public abstract void B(@Nullable String gameIcon);

    public abstract void C(@Nullable String gameName);

    public abstract void D(@Nullable Spanned timeStr);

    public abstract void E(@Nullable Boolean timeVisible);

    @Nullable
    public String d() {
        return this.f40200k;
    }

    @Nullable
    public String f() {
        return this.f40201l;
    }

    @Nullable
    public Spanned w() {
        return this.f40202m;
    }

    @Nullable
    public Boolean y() {
        return this.f40203n;
    }

    @NonNull
    public static je inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
