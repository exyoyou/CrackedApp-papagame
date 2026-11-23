package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.NestedScrollableHost;

/* JADX INFO: loaded from: classes4.dex */
public final class w1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f46547c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f46549e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final NestedScrollableHost f46550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46551g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f46552h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f46553i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final CustomerDownloadView f46554j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f46555k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f46556l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46557m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f46558n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RecyclerView f46559o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RecyclerView f46560p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ViewFlipper f46561q;

    private w1(@NonNull ConstraintLayout rootView, @NonNull AppBarLayout appBarLayout, @NonNull ConstraintLayout clTitle, @NonNull CollapsingToolbarLayout collapsingToolbar, @NonNull NestedScrollableHost hostHeaderList, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull ImageView ivBack, @NonNull CustomerDownloadView ivDownload, @NonNull ImageView ivHotTopicLabel, @NonNull ImageView ivSearch, @NonNull ConstraintLayout layoutHotTopic, @NonNull CoordinatorLayout loadContent, @NonNull RecyclerView rvHeaderHorizontal, @NonNull RecyclerView rvList, @NonNull ViewFlipper vfHotTopic) {
        this.f46546b = rootView;
        this.f46547c = appBarLayout;
        this.f46548d = clTitle;
        this.f46549e = collapsingToolbar;
        this.f46550f = hostHeaderList;
        this.f46551g = iv1;
        this.f46552h = iv2;
        this.f46553i = ivBack;
        this.f46554j = ivDownload;
        this.f46555k = ivHotTopicLabel;
        this.f46556l = ivSearch;
        this.f46557m = layoutHotTopic;
        this.f46558n = loadContent;
        this.f46559o = rvHeaderHorizontal;
        this.f46560p = rvList;
        this.f46561q = vfHotTopic;
    }

    @NonNull
    public static w1 bind(@NonNull View rootView) {
        int i10 = R.id.appBarLayout;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appBarLayout);
        if (appBarLayout != null) {
            i10 = R.id.cl_title;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_title);
            if (constraintLayout != null) {
                i10 = R.id.collapsingToolbar;
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(rootView, R.id.collapsingToolbar);
                if (collapsingToolbarLayout != null) {
                    i10 = R.id.hostHeaderList;
                    NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) ViewBindings.findChildViewById(rootView, R.id.hostHeaderList);
                    if (nestedScrollableHost != null) {
                        i10 = R.id.iv_1;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                        if (imageView != null) {
                            i10 = R.id.iv_2;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_2);
                            if (imageView2 != null) {
                                i10 = R.id.ivBack;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivBack);
                                if (imageView3 != null) {
                                    i10 = R.id.ivDownload;
                                    CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(rootView, R.id.ivDownload);
                                    if (customerDownloadView != null) {
                                        i10 = R.id.ivHotTopicLabel;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivHotTopicLabel);
                                        if (imageView4 != null) {
                                            i10 = R.id.ivSearch;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivSearch);
                                            if (imageView5 != null) {
                                                i10 = R.id.layoutHotTopic;
                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.layoutHotTopic);
                                                if (constraintLayout2 != null) {
                                                    i10 = R.id.loadContent;
                                                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(rootView, R.id.loadContent);
                                                    if (coordinatorLayout != null) {
                                                        i10 = R.id.rvHeaderHorizontal;
                                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvHeaderHorizontal);
                                                        if (recyclerView != null) {
                                                            i10 = R.id.rvList;
                                                            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvList);
                                                            if (recyclerView2 != null) {
                                                                i10 = R.id.vfHotTopic;
                                                                ViewFlipper viewFlipper = (ViewFlipper) ViewBindings.findChildViewById(rootView, R.id.vfHotTopic);
                                                                if (viewFlipper != null) {
                                                                    return new w1((ConstraintLayout) rootView, appBarLayout, constraintLayout, collapsingToolbarLayout, nestedScrollableHost, imageView, imageView2, imageView3, customerDownloadView, imageView4, imageView5, constraintLayout2, coordinatorLayout, recyclerView, recyclerView2, viewFlipper);
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
    public static w1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46546b;
    }

    @NonNull
    public static w1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_game_express, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
