package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;

/* JADX INFO: loaded from: classes4.dex */
public abstract class im0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f39865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39867d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39868e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39869f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39870g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f39871h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39872i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f39873j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f39874k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39875l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f39876m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Bindable
    protected ArchiveData f39877n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Bindable
    protected OnClickArchiveListener f39878o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Bindable
    protected Boolean f39879p;

    protected im0(Object _bindingComponent, View _root, int _localFieldCount, TextView contentsimpble, ImageView disLike, TextView disLikeNumber, RelativeLayout messageLayout, TextView more, ImageView moreDelete, ImageView parise, TextView pariseNumber, TextView startCloud, TextView tvHotTag, SimpleDraweeView userIcon, TextView userName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f39865b = contentsimpble;
        this.f39866c = disLike;
        this.f39867d = disLikeNumber;
        this.f39868e = messageLayout;
        this.f39869f = more;
        this.f39870g = moreDelete;
        this.f39871h = parise;
        this.f39872i = pariseNumber;
        this.f39873j = startCloud;
        this.f39874k = tvHotTag;
        this.f39875l = userIcon;
        this.f39876m = userName;
    }

    @Deprecated
    public static im0 b(@NonNull View view, @Nullable Object component) {
        return (im0) ViewDataBinding.bind(component, view, R.layout.modarchive_game_detail_list_item);
    }

    public static im0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static im0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static im0 x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (im0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_game_detail_list_item, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static im0 y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (im0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_game_detail_list_item, null, false, component);
    }

    public abstract void A(@Nullable Boolean isChoice);

    public abstract void B(@Nullable ArchiveData itemData);

    @Nullable
    public OnClickArchiveListener d() {
        return this.f39878o;
    }

    @Nullable
    public Boolean f() {
        return this.f39879p;
    }

    @Nullable
    public ArchiveData w() {
        return this.f39877n;
    }

    public abstract void z(@Nullable OnClickArchiveListener clickListener);

    @NonNull
    public static im0 inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
