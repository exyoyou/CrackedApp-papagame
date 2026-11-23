package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f41344f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41345g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f41346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41347i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f41348j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41349k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f41350l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41351m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f41352n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41353o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f41354p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41355q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41356r;

    private lk(@NonNull LinearLayout rootView, @NonNull LinearLayout block1, @NonNull LinearLayout block2, @NonNull LinearLayout moreFuncBest, @NonNull ImageView moreFuncBestImg, @NonNull LinearLayout moreFuncDelete, @NonNull ImageView moreFuncDeleteImg, @NonNull LinearLayout moreFuncFavorite, @NonNull ImageView moreFuncFavoriteImg, @NonNull LinearLayout moreFuncReport, @NonNull ImageView moreFuncReportImg, @NonNull LinearLayout moreFuncShare, @NonNull ImageView moreFuncShareImg, @NonNull LinearLayout moreFuncSort, @NonNull ImageView moreFuncSortImg, @NonNull LinearLayout row1, @NonNull LinearLayout row2) {
        this.f41340b = rootView;
        this.f41341c = block1;
        this.f41342d = block2;
        this.f41343e = moreFuncBest;
        this.f41344f = moreFuncBestImg;
        this.f41345g = moreFuncDelete;
        this.f41346h = moreFuncDeleteImg;
        this.f41347i = moreFuncFavorite;
        this.f41348j = moreFuncFavoriteImg;
        this.f41349k = moreFuncReport;
        this.f41350l = moreFuncReportImg;
        this.f41351m = moreFuncShare;
        this.f41352n = moreFuncShareImg;
        this.f41353o = moreFuncSort;
        this.f41354p = moreFuncSortImg;
        this.f41355q = row1;
        this.f41356r = row2;
    }

    @NonNull
    public static lk bind(@NonNull View rootView) {
        int i10 = R.id.block1;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.block1);
        if (linearLayout != null) {
            i10 = R.id.block2;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.block2);
            if (linearLayout2 != null) {
                i10 = R.id.moreFuncBest;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moreFuncBest);
                if (linearLayout3 != null) {
                    i10 = R.id.moreFuncBestImg;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFuncBestImg);
                    if (imageView != null) {
                        i10 = R.id.moreFuncDelete;
                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moreFuncDelete);
                        if (linearLayout4 != null) {
                            i10 = R.id.moreFuncDeleteImg;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFuncDeleteImg);
                            if (imageView2 != null) {
                                i10 = R.id.moreFuncFavorite;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moreFuncFavorite);
                                if (linearLayout5 != null) {
                                    i10 = R.id.moreFuncFavoriteImg;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFuncFavoriteImg);
                                    if (imageView3 != null) {
                                        i10 = R.id.moreFuncReport;
                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moreFuncReport);
                                        if (linearLayout6 != null) {
                                            i10 = R.id.moreFuncReportImg;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFuncReportImg);
                                            if (imageView4 != null) {
                                                i10 = R.id.moreFuncShare;
                                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moreFuncShare);
                                                if (linearLayout7 != null) {
                                                    i10 = R.id.moreFuncShareImg;
                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFuncShareImg);
                                                    if (imageView5 != null) {
                                                        i10 = R.id.moreFuncSort;
                                                        LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moreFuncSort);
                                                        if (linearLayout8 != null) {
                                                            i10 = R.id.moreFuncSortImg;
                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFuncSortImg);
                                                            if (imageView6 != null) {
                                                                i10 = R.id.row1;
                                                                LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.row1);
                                                                if (linearLayout9 != null) {
                                                                    i10 = R.id.row2;
                                                                    LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.row2);
                                                                    if (linearLayout10 != null) {
                                                                        return new lk((LinearLayout) rootView, linearLayout, linearLayout2, linearLayout3, imageView, linearLayout4, imageView2, linearLayout5, imageView3, linearLayout6, imageView4, linearLayout7, imageView5, linearLayout8, imageView6, linearLayout9, linearLayout10);
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
    public static lk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41340b;
    }

    @NonNull
    public static lk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.forum_posts_activity_functions, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
