package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f48266c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ProgressBar f48267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f48268e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48269f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48270g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f48272i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ListView f48273j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final qd f48274k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f48275l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48276m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f48277n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f48278o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f48279p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48280q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48281r;

    private zj0(@NonNull RelativeLayout rootView, @NonNull ImageView backBtn, @NonNull ProgressBar butnProgressBar, @NonNull ImageView butnShowdownload, @NonNull RelativeLayout container, @NonNull RelativeLayout detialDownBottom, @NonNull RelativeLayout downloadRLayout2, @NonNull TextView gameDescribeInit, @NonNull ListView gameListView, @NonNull qd include2, @NonNull TextView instalButtomButn, @NonNull RelativeLayout instalbutnLayout, @NonNull View linebutn, @NonNull TextView moneyText, @NonNull TextView percent, @NonNull LinearLayout progressLayout, @NonNull RelativeLayout progressbarLayout) {
        this.f48265b = rootView;
        this.f48266c = backBtn;
        this.f48267d = butnProgressBar;
        this.f48268e = butnShowdownload;
        this.f48269f = container;
        this.f48270g = detialDownBottom;
        this.f48271h = downloadRLayout2;
        this.f48272i = gameDescribeInit;
        this.f48273j = gameListView;
        this.f48274k = include2;
        this.f48275l = instalButtomButn;
        this.f48276m = instalbutnLayout;
        this.f48277n = linebutn;
        this.f48278o = moneyText;
        this.f48279p = percent;
        this.f48280q = progressLayout;
        this.f48281r = progressbarLayout;
    }

    @NonNull
    public static zj0 bind(@NonNull View rootView) {
        int i10 = R.id.backBtn;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backBtn);
        if (imageView != null) {
            i10 = R.id.butnProgressBar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.butnProgressBar);
            if (progressBar != null) {
                i10 = R.id.butn_showdownload;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.butn_showdownload);
                if (imageView2 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) rootView;
                    i10 = R.id.detialDownBottom;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.detialDownBottom);
                    if (relativeLayout2 != null) {
                        i10 = R.id.downloadRLayout2;
                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.downloadRLayout2);
                        if (relativeLayout3 != null) {
                            i10 = R.id.gameDescribeInit;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameDescribeInit);
                            if (textView != null) {
                                i10 = R.id.gameListView;
                                ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.gameListView);
                                if (listView != null) {
                                    i10 = R.id.include2;
                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.include2);
                                    if (viewFindChildViewById != null) {
                                        qd qdVarBind = qd.bind(viewFindChildViewById);
                                        i10 = R.id.instalButtomButn;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.instalButtomButn);
                                        if (textView2 != null) {
                                            i10 = R.id.instalbutnLayout;
                                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.instalbutnLayout);
                                            if (relativeLayout4 != null) {
                                                i10 = R.id.linebutn;
                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.linebutn);
                                                if (viewFindChildViewById2 != null) {
                                                    i10 = R.id.moneyText;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                                    if (textView3 != null) {
                                                        i10 = R.id.percent;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.percent);
                                                        if (textView4 != null) {
                                                            i10 = R.id.progress_layout;
                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.progress_layout);
                                                            if (linearLayout != null) {
                                                                i10 = R.id.progressbarLayout;
                                                                RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.progressbarLayout);
                                                                if (relativeLayout5 != null) {
                                                                    return new zj0(relativeLayout, imageView, progressBar, imageView2, relativeLayout, relativeLayout2, relativeLayout3, textView, listView, qdVarBind, textView2, relativeLayout4, viewFindChildViewById2, textView3, textView4, linearLayout, relativeLayout5);
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
    public static zj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48265b;
    }

    @NonNull
    public static zj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_game_detail_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
