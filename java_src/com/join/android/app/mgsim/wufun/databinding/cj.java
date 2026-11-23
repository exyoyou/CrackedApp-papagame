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
import com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener;
import com.join.mgps.dto.CloudListDataBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class cj extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f36943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36945d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36947f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36948g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36949h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36950i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Bindable
    protected CloudListDataBean f36951j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected OnEmusClickArchiveListener f36952k;

    protected cj(Object _bindingComponent, View _root, int _localFieldCount, TextView contentsimpble, RelativeLayout messageLayout, TextView more, ImageView parise, TextView pariseNumber, TextView tvHotTag, SimpleDraweeView userIcon, TextView userName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36943b = contentsimpble;
        this.f36944c = messageLayout;
        this.f36945d = more;
        this.f36946e = parise;
        this.f36947f = pariseNumber;
        this.f36948g = tvHotTag;
        this.f36949h = userIcon;
        this.f36950i = userName;
    }

    @Deprecated
    public static cj b(@NonNull View view, @Nullable Object component) {
        return (cj) ViewDataBinding.bind(component, view, R.layout.emus_archive_game_detail_list_item);
    }

    public static cj bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static cj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static cj m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (cj) ViewDataBinding.inflateInternal(inflater, R.layout.emus_archive_game_detail_list_item, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static cj n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (cj) ViewDataBinding.inflateInternal(inflater, R.layout.emus_archive_game_detail_list_item, null, false, component);
    }

    @Nullable
    public OnEmusClickArchiveListener d() {
        return this.f36952k;
    }

    @Nullable
    public CloudListDataBean f() {
        return this.f36951j;
    }

    public abstract void t(@Nullable OnEmusClickArchiveListener emusClickListener);

    public abstract void u(@Nullable CloudListDataBean itemData);

    @NonNull
    public static cj inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
