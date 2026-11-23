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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView3;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.melnykov.fab.FloatingActionButton;

/* JADX INFO: loaded from: classes4.dex */
public final class nl0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f42392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FloatingActionButton f42393d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f42394e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42395f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f42396g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42397h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42398i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f42399j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final XListView3 f42400k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f42401l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f42402m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f42403n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42404o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42405p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f42406q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42407r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42408s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ViewFlipper f42409t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42410u;

    private nl0(@NonNull RelativeLayout rootView, @NonNull AppBarLayout appbar, @NonNull FloatingActionButton coinFloatad, @NonNull CoordinatorLayout coordinator, @NonNull FrameLayout flTitleSearch, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull SimpleDraweeView ivFloatad, @NonNull ImageView ivSearchIcon, @NonNull XListView3 listview, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull ImageView movetoTop, @NonNull ImageView search, @NonNull TextView searchBack, @NonNull TextView searchContent, @NonNull View statubar, @NonNull RelativeLayout title, @NonNull RelativeLayout titleSearch, @NonNull ViewFlipper tvSearchHint, @NonNull TextView updateNotice) {
        this.f42391b = rootView;
        this.f42392c = appbar;
        this.f42393d = coinFloatad;
        this.f42394e = coordinator;
        this.f42395f = flTitleSearch;
        this.f42396g = imageView2;
        this.f42397h = imageView3;
        this.f42398i = ivFloatad;
        this.f42399j = ivSearchIcon;
        this.f42400k = listview;
        this.f42401l = mPtrFrame;
        this.f42402m = movetoTop;
        this.f42403n = search;
        this.f42404o = searchBack;
        this.f42405p = searchContent;
        this.f42406q = statubar;
        this.f42407r = title;
        this.f42408s = titleSearch;
        this.f42409t = tvSearchHint;
        this.f42410u = updateNotice;
    }

    @NonNull
    public static nl0 bind(@NonNull View rootView) {
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
                                        XListView3 xListView3 = (XListView3) ViewBindings.findChildViewById(rootView, R.id.listview);
                                        if (xListView3 != null) {
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
                                                                                    return new nl0((RelativeLayout) rootView, appBarLayout, floatingActionButton, coordinatorLayout, frameLayout, imageView, imageView2, simpleDraweeView, imageView3, xListView3, ptrClassicFrameLayout, imageView4, imageView5, textView, textView2, viewFindChildViewById, relativeLayout, relativeLayout2, viewFlipper, textView3);
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
    public static nl0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42391b;
    }

    @NonNull
    public static nl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
