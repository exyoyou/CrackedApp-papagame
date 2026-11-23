package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HistogramView;
import com.join.mgps.customview.MStarBar;

/* JADX INFO: loaded from: classes4.dex */
public final class kb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MStarBar f40697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40701g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final HistogramView f40702h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final HistogramView f40703i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40704j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f40705k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final HistogramView f40706l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40707m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f40708n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40709o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40710p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final HistogramView f40711q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final HistogramView f40712r;

    private kb(@NonNull LinearLayout rootView, @NonNull MStarBar commentHeadMstarBar, @NonNull TextView commentHeadNopointTx, @NonNull TextView commentHeadNumTx, @NonNull TextView commentHeadPointTx, @NonNull TextView editText5, @NonNull HistogramView fiveHv, @NonNull HistogramView fourHv, @NonNull LinearLayout goCommit, @NonNull View lineOne, @NonNull HistogramView oneHv, @NonNull LinearLayout pointLl, @NonNull ImageView progressBar2, @NonNull LinearLayout starlayout, @NonNull LinearLayout startLl, @NonNull HistogramView threeHv, @NonNull HistogramView twoHv) {
        this.f40696b = rootView;
        this.f40697c = commentHeadMstarBar;
        this.f40698d = commentHeadNopointTx;
        this.f40699e = commentHeadNumTx;
        this.f40700f = commentHeadPointTx;
        this.f40701g = editText5;
        this.f40702h = fiveHv;
        this.f40703i = fourHv;
        this.f40704j = goCommit;
        this.f40705k = lineOne;
        this.f40706l = oneHv;
        this.f40707m = pointLl;
        this.f40708n = progressBar2;
        this.f40709o = starlayout;
        this.f40710p = startLl;
        this.f40711q = threeHv;
        this.f40712r = twoHv;
    }

    @NonNull
    public static kb bind(@NonNull View rootView) {
        int i10 = R.id.comment_head_mstarBar;
        MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.comment_head_mstarBar);
        if (mStarBar != null) {
            i10 = R.id.comment_head_nopoint_tx;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_nopoint_tx);
            if (textView != null) {
                i10 = R.id.comment_head_num_tx;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_num_tx);
                if (textView2 != null) {
                    i10 = R.id.comment_head_point_tx;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_point_tx);
                    if (textView3 != null) {
                        i10 = R.id.editText5;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.editText5);
                        if (textView4 != null) {
                            i10 = R.id.fiveHv;
                            HistogramView histogramView = (HistogramView) ViewBindings.findChildViewById(rootView, R.id.fiveHv);
                            if (histogramView != null) {
                                i10 = R.id.fourHv;
                                HistogramView histogramView2 = (HistogramView) ViewBindings.findChildViewById(rootView, R.id.fourHv);
                                if (histogramView2 != null) {
                                    i10 = R.id.goCommit;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.goCommit);
                                    if (linearLayout != null) {
                                        i10 = R.id.line_one;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line_one);
                                        if (viewFindChildViewById != null) {
                                            i10 = R.id.oneHv;
                                            HistogramView histogramView3 = (HistogramView) ViewBindings.findChildViewById(rootView, R.id.oneHv);
                                            if (histogramView3 != null) {
                                                i10 = R.id.point_ll;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.point_ll);
                                                if (linearLayout2 != null) {
                                                    i10 = R.id.progressBar2;
                                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.progressBar2);
                                                    if (imageView != null) {
                                                        i10 = R.id.starlayout;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.starlayout);
                                                        if (linearLayout3 != null) {
                                                            i10 = R.id.start_ll;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.start_ll);
                                                            if (linearLayout4 != null) {
                                                                i10 = R.id.threeHv;
                                                                HistogramView histogramView4 = (HistogramView) ViewBindings.findChildViewById(rootView, R.id.threeHv);
                                                                if (histogramView4 != null) {
                                                                    i10 = R.id.twoHv;
                                                                    HistogramView histogramView5 = (HistogramView) ViewBindings.findChildViewById(rootView, R.id.twoHv);
                                                                    if (histogramView5 != null) {
                                                                        return new kb((LinearLayout) rootView, mStarBar, textView, textView2, textView3, textView4, histogramView, histogramView2, linearLayout, viewFindChildViewById, histogramView3, linearLayout2, imageView, linearLayout3, linearLayout4, histogramView4, histogramView5);
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
    public static kb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40696b;
    }

    @NonNull
    public static kb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_list_head_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
