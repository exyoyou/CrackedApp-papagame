package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView2;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.melnykov.fab.FloatingActionButton;

/* JADX INFO: loaded from: classes4.dex */
public final class ol0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f42936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FloatingActionButton f42937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f42938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42939f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f42940g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42941h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42942i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f42943j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final XRecyclerView2 f42944k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f42945l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f42946m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f42947n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42948o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42949p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f42950q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42951r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42952s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ViewFlipper f42953t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42954u;

    private ol0(@NonNull RelativeLayout rootView, @NonNull AppBarLayout appbar, @NonNull FloatingActionButton coinFloatad, @NonNull CoordinatorLayout coordinator, @NonNull FrameLayout flTitleSearch, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull SimpleDraweeView ivFloatad, @NonNull ImageView ivSearchIcon, @NonNull XRecyclerView2 listview, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull ImageView movetoTop, @NonNull ImageView search, @NonNull TextView searchBack, @NonNull TextView searchContent, @NonNull View statubar, @NonNull RelativeLayout title, @NonNull RelativeLayout titleSearch, @NonNull ViewFlipper tvSearchHint, @NonNull TextView updateNotice) {
        this.f42935b = rootView;
        this.f42936c = appbar;
        this.f42937d = coinFloatad;
        this.f42938e = coordinator;
        this.f42939f = flTitleSearch;
        this.f42940g = imageView2;
        this.f42941h = imageView3;
        this.f42942i = ivFloatad;
        this.f42943j = ivSearchIcon;
        this.f42944k = listview;
        this.f42945l = mPtrFrame;
        this.f42946m = movetoTop;
        this.f42947n = search;
        this.f42948o = searchBack;
        this.f42949p = searchContent;
        this.f42950q = statubar;
        this.f42951r = title;
        this.f42952s = titleSearch;
        this.f42953t = tvSearchHint;
        this.f42954u = updateNotice;
    }

    @NonNull
    public static ol0 bind(@NonNull View rootView) {
        int i10 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appbar);
        if (appBarLayout != null) {
            i10 = R.id.coinFloatad;
            FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(rootView, R.id.coinFloatad);
            if (floatingActionButton != null) {
                i10 = R.id.coordinator;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(rootView, R.id.coordinator);
                if (coordinatorLayout != null) {
                    i10 = R.id.flTitleSearch;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flTitleSearch);
                    if (frameLayout != null) {
                        i10 = R.id.imageView2;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView2);
                        if (imageView != null) {
                            i10 = R.id.imageView3;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView3);
                            if (imageView2 != null) {
                                i10 = R.id.ivFloatad;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivFloatad);
                                if (simpleDraweeView != null) {
                                    i10 = R.id.ivSearchIcon;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivSearchIcon);
                                    if (imageView3 != null) {
                                        i10 = R.id.listview;
                                        XRecyclerView2 xRecyclerView2 = (XRecyclerView2) ViewBindings.findChildViewById(rootView, R.id.listview);
                                        if (xRecyclerView2 != null) {
                                            i10 = R.id.mPtrFrame;
                                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                                            if (ptrClassicFrameLayout != null) {
                                                i10 = R.id.movetoTop;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.movetoTop);
                                                if (imageView4 != null) {
                                                    i10 = R.id.search;
                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search);
                                                    if (imageView5 != null) {
                                                        i10 = R.id.searchBack;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.searchBack);
                                                        if (textView != null) {
                                                            i10 = R.id.searchContent;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.searchContent);
                                                            if (textView2 != null) {
                                                                i10 = R.id.statubar;
                                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                                                if (viewFindChildViewById != null) {
                                                                    i10 = R.id.title;
                                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                    if (relativeLayout != null) {
                                                                        i10 = R.id.titleSearch;
                                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.titleSearch);
                                                                        if (relativeLayout2 != null) {
                                                                            i10 = R.id.tvSearchHint;
                                                                            ViewFlipper viewFlipper = (ViewFlipper) ViewBindings.findChildViewById(rootView, R.id.tvSearchHint);
                                                                            if (viewFlipper != null) {
                                                                                i10 = R.id.updateNotice;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.updateNotice);
                                                                                if (textView3 != null) {
                                                                                    return new ol0((RelativeLayout) rootView, appBarLayout, floatingActionButton, coordinatorLayout, frameLayout, imageView, imageView2, simpleDraweeView, imageView3, xRecyclerView2, ptrClassicFrameLayout, imageView4, imageView5, textView, textView2, viewFindChildViewById, relativeLayout, relativeLayout2, viewFlipper, textView3);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ol0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42935b;
    }

    @NonNull
    public static ol0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v3, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
