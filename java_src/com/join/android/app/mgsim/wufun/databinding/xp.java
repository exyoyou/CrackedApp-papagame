package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f47342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f47345f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47346g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47347h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47348i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f47349j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f47350k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RecyclerView f47351l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f47352m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47353n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f47354o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f47355p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f47356q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f47357r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47358s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47359t;

    private xp(@NonNull LinearLayout rootView, @NonNull AppBarLayout appbar, @NonNull ImageView close, @NonNull ImageView close2, @NonNull ImageView close3, @NonNull TextView downNumber, @NonNull ConstraintLayout downloadAcc, @NonNull SimpleDraweeView icon, @NonNull ImageView imageView56, @NonNull CoordinatorLayout main, @NonNull RecyclerView recyclerView, @NonNull TextView seetext, @NonNull LinearLayout speedLayout, @NonNull TextView table1, @NonNull TextView table2, @NonNull TextView tip, @NonNull TextView title, @NonNull LinearLayout x10, @NonNull RelativeLayout xx) {
        this.f47341b = rootView;
        this.f47342c = appbar;
        this.f47343d = close;
        this.f47344e = close2;
        this.f47345f = close3;
        this.f47346g = downNumber;
        this.f47347h = downloadAcc;
        this.f47348i = icon;
        this.f47349j = imageView56;
        this.f47350k = main;
        this.f47351l = recyclerView;
        this.f47352m = seetext;
        this.f47353n = speedLayout;
        this.f47354o = table1;
        this.f47355p = table2;
        this.f47356q = tip;
        this.f47357r = title;
        this.f47358s = x10;
        this.f47359t = xx;
    }

    @NonNull
    public static xp bind(@NonNull View rootView) {
        int i10 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appbar);
        if (appBarLayout != null) {
            i10 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
            if (imageView != null) {
                i10 = R.id.close2;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close2);
                if (imageView2 != null) {
                    i10 = R.id.close3;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close3);
                    if (imageView3 != null) {
                        i10 = R.id.downNumber;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.downNumber);
                        if (textView != null) {
                            i10 = R.id.downloadAcc;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.downloadAcc);
                            if (constraintLayout != null) {
                                i10 = R.id.icon;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                                if (simpleDraweeView != null) {
                                    i10 = R.id.imageView56;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView56);
                                    if (imageView4 != null) {
                                        i10 = R.id.main;
                                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                        if (coordinatorLayout != null) {
                                            i10 = R.id.recyclerView;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                                            if (recyclerView != null) {
                                                i10 = R.id.seetext;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.seetext);
                                                if (textView2 != null) {
                                                    i10 = R.id.speedLayout;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.speedLayout);
                                                    if (linearLayout != null) {
                                                        i10 = R.id.table1;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.table1);
                                                        if (textView3 != null) {
                                                            i10 = R.id.table2;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.table2);
                                                            if (textView4 != null) {
                                                                i10 = R.id.tip;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.title;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                    if (textView6 != null) {
                                                                        i10 = R.id.f35491x;
                                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                                                        if (linearLayout2 != null) {
                                                                            i10 = R.id.xx;
                                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.xx);
                                                                            if (relativeLayout != null) {
                                                                                return new xp((LinearLayout) rootView, appBarLayout, imageView, imageView2, imageView3, textView, constraintLayout, simpleDraweeView, imageView4, coordinatorLayout, recyclerView, textView2, linearLayout, textView3, textView4, textView5, textView6, linearLayout2, relativeLayout);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
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
    public static xp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47341b;
    }

    @NonNull
    public static xp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_download_recomd_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
