package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ep implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38056e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38057f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38058g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38059h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RecyclerView f38060i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final qd f38061j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f38062k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38063l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f38064m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38065n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38066o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final hw0 f38067p;

    private ep(@NonNull RelativeLayout rootView, @NonNull ProgressBar butnProgressBar, @NonNull ImageView butnShowdownload, @NonNull RelativeLayout container, @NonNull RelativeLayout detialDownBottom, @NonNull RelativeLayout downloadRLayout, @NonNull TextView gameDescribeInit, @NonNull RecyclerView gameListView, @NonNull qd include2, @NonNull Button instalButtomButn, @NonNull RelativeLayout instalbutnLayout, @NonNull TextView percent, @NonNull LinearLayout progressLayout, @NonNull RelativeLayout progressbarLayout, @NonNull hw0 topBanner) {
        this.f38053b = rootView;
        this.f38054c = butnProgressBar;
        this.f38055d = butnShowdownload;
        this.f38056e = container;
        this.f38057f = detialDownBottom;
        this.f38058g = downloadRLayout;
        this.f38059h = gameDescribeInit;
        this.f38060i = gameListView;
        this.f38061j = include2;
        this.f38062k = instalButtomButn;
        this.f38063l = instalbutnLayout;
        this.f38064m = percent;
        this.f38065n = progressLayout;
        this.f38066o = progressbarLayout;
        this.f38067p = topBanner;
    }

    @NonNull
    public static ep bind(@NonNull View rootView) {
        int i10 = R.id.butnProgressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.butnProgressBar);
        if (progressBar != null) {
            i10 = R.id.butn_showdownload;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.butn_showdownload);
            if (imageView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                i10 = R.id.detialDownBottom;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.detialDownBottom);
                if (relativeLayout2 != null) {
                    i10 = R.id.downloadRLayout;
                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.downloadRLayout);
                    if (relativeLayout3 != null) {
                        i10 = R.id.gameDescribeInit;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameDescribeInit);
                        if (textView != null) {
                            i10 = R.id.gameListView;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.gameListView);
                            if (recyclerView != null) {
                                i10 = R.id.include2;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.include2);
                                if (viewFindChildViewById != null) {
                                    qd qdVarBind = qd.bind(viewFindChildViewById);
                                    i10 = R.id.instalButtomButn;
                                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.instalButtomButn);
                                    if (button != null) {
                                        i10 = R.id.instalbutnLayout;
                                        RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.instalbutnLayout);
                                        if (relativeLayout4 != null) {
                                            i10 = R.id.percent;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.percent);
                                            if (textView2 != null) {
                                                i10 = R.id.progress_layout;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.progress_layout);
                                                if (linearLayout != null) {
                                                    i10 = R.id.progressbarLayout;
                                                    RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.progressbarLayout);
                                                    if (relativeLayout5 != null) {
                                                        i10 = R.id.top_banner;
                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.top_banner);
                                                        if (viewFindChildViewById2 != null) {
                                                            return new ep(relativeLayout, progressBar, imageView, relativeLayout, relativeLayout2, relativeLayout3, textView, recyclerView, qdVarBind, button, relativeLayout4, textView2, linearLayout, relativeLayout5, hw0.bind(viewFindChildViewById2));
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
    public static ep inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38053b;
    }

    @NonNull
    public static ep inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detail_custom_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
