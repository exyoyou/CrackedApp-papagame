package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CoordinatorLayout f37687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f37688c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f37689d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RecyclerView f37690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37691f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37692g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37693h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37694i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37695j;

    private e(@NonNull CoordinatorLayout rootView, @NonNull AppBarLayout appBarLayout2, @NonNull CoordinatorLayout coordinatorLayout, @NonNull RecyclerView recycleView, @NonNull TextView tipName, @NonNull LinearLayout tipsLayout, @NonNull SimpleDraweeView titleImg, @NonNull SimpleDraweeView userIcon, @NonNull TextView userName) {
        this.f37687b = rootView;
        this.f37688c = appBarLayout2;
        this.f37689d = coordinatorLayout;
        this.f37690e = recycleView;
        this.f37691f = tipName;
        this.f37692g = tipsLayout;
        this.f37693h = titleImg;
        this.f37694i = userIcon;
        this.f37695j = userName;
    }

    @NonNull
    public static e bind(@NonNull View rootView) {
        int i10 = R.id.appBarLayout2;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appBarLayout2);
        if (appBarLayout != null) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) rootView;
            i10 = R.id.recycleView;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recycleView);
            if (recyclerView != null) {
                i10 = R.id.tipName;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tipName);
                if (textView != null) {
                    i10 = R.id.tipsLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                    if (linearLayout != null) {
                        i10 = R.id.titleImg;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.titleImg);
                        if (simpleDraweeView != null) {
                            i10 = R.id.userIcon;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.userName;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                                if (textView2 != null) {
                                    return new e(coordinatorLayout, appBarLayout, coordinatorLayout, recyclerView, textView, linearLayout, simpleDraweeView, simpleDraweeView2, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static e inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CoordinatorLayout getRoot() {
        return this.f37687b;
    }

    @NonNull
    public static e inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_account_center_detial_new, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
