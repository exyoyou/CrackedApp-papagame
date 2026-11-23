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
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;

/* JADX INFO: loaded from: classes4.dex */
public final class at implements ViewBinding {

    @NonNull
    public final ImageView A;

    @NonNull
    public final ImageView B;

    @NonNull
    public final RelativeLayout C;

    @NonNull
    public final RelativeLayout D;

    @NonNull
    public final CustomerDownloadView E;

    @NonNull
    public final ImageView F;

    @NonNull
    public final TextView G;

    @NonNull
    public final TextView H;

    @NonNull
    public final RelativeLayout I;

    @NonNull
    public final Toolbar J;

    @NonNull
    public final View K;

    @NonNull
    public final CoordinatorLayout L;

    @NonNull
    public final StandardVideoView M;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CoordinatorLayout f36016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f36017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36019e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f36020f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f36021g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f36022h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f36023i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36024j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36025k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f36026l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36027m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final qd f36028n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final Button f36029o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36030p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f36031q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36032r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36033s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final View f36034t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f36035u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36036v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36037w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final RecyclerView f36038x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36039y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f36040z;

    private at(@NonNull CoordinatorLayout rootView, @NonNull AppBarLayout appBarLayout, @NonNull ImageView backBtn, @NonNull ImageView backImage, @NonNull ProgressBar butnProgressBar, @NonNull ImageView butnShowdownload, @NonNull CollapsingToolbarLayout collapsingToolbarLayout, @NonNull ImageView comment, @NonNull RelativeLayout commentParent, @NonNull RelativeLayout detialDownBottom, @NonNull ImageView downImage, @NonNull RelativeLayout downloadRLayout2, @NonNull qd include2, @NonNull Button instalButtomButn, @NonNull RelativeLayout instalbutnLayout, @NonNull ImageView ivBack, @NonNull SimpleDraweeView ivBookBg, @NonNull SimpleDraweeView ivBookBg2, @NonNull View linebutn, @NonNull TextView percent, @NonNull LinearLayout progressLayout, @NonNull RelativeLayout progressbarLayout, @NonNull RecyclerView recycleView, @NonNull LinearLayout rlTop, @NonNull TextView roundMessage, @NonNull ImageView search, @NonNull ImageView share, @NonNull RelativeLayout title, @NonNull RelativeLayout titleBarLayout, @NonNull CustomerDownloadView titleNormalDownloadCdv, @NonNull ImageView titleNormalSearchImg, @NonNull TextView titleText, @NonNull TextView titleTextview, @NonNull RelativeLayout titleTransfer, @NonNull Toolbar toolbar, @NonNull View topBarline, @NonNull CoordinatorLayout topCoordinatorLayout, @NonNull StandardVideoView topvideoView) {
        this.f36016b = rootView;
        this.f36017c = appBarLayout;
        this.f36018d = backBtn;
        this.f36019e = backImage;
        this.f36020f = butnProgressBar;
        this.f36021g = butnShowdownload;
        this.f36022h = collapsingToolbarLayout;
        this.f36023i = comment;
        this.f36024j = commentParent;
        this.f36025k = detialDownBottom;
        this.f36026l = downImage;
        this.f36027m = downloadRLayout2;
        this.f36028n = include2;
        this.f36029o = instalButtomButn;
        this.f36030p = instalbutnLayout;
        this.f36031q = ivBack;
        this.f36032r = ivBookBg;
        this.f36033s = ivBookBg2;
        this.f36034t = linebutn;
        this.f36035u = percent;
        this.f36036v = progressLayout;
        this.f36037w = progressbarLayout;
        this.f36038x = recycleView;
        this.f36039y = rlTop;
        this.f36040z = roundMessage;
        this.A = search;
        this.B = share;
        this.C = title;
        this.D = titleBarLayout;
        this.E = titleNormalDownloadCdv;
        this.F = titleNormalSearchImg;
        this.G = titleText;
        this.H = titleTextview;
        this.I = titleTransfer;
        this.J = toolbar;
        this.K = topBarline;
        this.L = topCoordinatorLayout;
        this.M = topvideoView;
    }

    @NonNull
    public static at bind(@NonNull View rootView) {
        int i10 = R.id.appBarLayout;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appBarLayout);
        if (appBarLayout != null) {
            i10 = R.id.backBtn;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backBtn);
            if (imageView != null) {
                i10 = R.id.back_image;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
                if (imageView2 != null) {
                    i10 = R.id.butnProgressBar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.butnProgressBar);
                    if (progressBar != null) {
                        i10 = R.id.butn_showdownload;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.butn_showdownload);
                        if (imageView3 != null) {
                            i10 = R.id.collapsingToolbarLayout;
                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(rootView, R.id.collapsingToolbarLayout);
                            if (collapsingToolbarLayout != null) {
                                i10 = R.id.comment;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment);
                                if (imageView4 != null) {
                                    i10 = R.id.commentParent;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.commentParent);
                                    if (relativeLayout != null) {
                                        i10 = R.id.detialDownBottom;
                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.detialDownBottom);
                                        if (relativeLayout2 != null) {
                                            i10 = R.id.downImage;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.downImage);
                                            if (imageView5 != null) {
                                                i10 = R.id.downloadRLayout2;
                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.downloadRLayout2);
                                                if (relativeLayout3 != null) {
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
                                                                i10 = R.id.iv_back;
                                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_back);
                                                                if (imageView6 != null) {
                                                                    i10 = R.id.iv_book_bg;
                                                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_book_bg);
                                                                    if (simpleDraweeView != null) {
                                                                        i10 = R.id.iv_book_bg2;
                                                                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_book_bg2);
                                                                        if (simpleDraweeView2 != null) {
                                                                            i10 = R.id.linebutn;
                                                                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.linebutn);
                                                                            if (viewFindChildViewById2 != null) {
                                                                                i10 = R.id.percent;
                                                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.percent);
                                                                                if (textView != null) {
                                                                                    i10 = R.id.progress_layout;
                                                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.progress_layout);
                                                                                    if (linearLayout != null) {
                                                                                        i10 = R.id.progressbarLayout;
                                                                                        RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.progressbarLayout);
                                                                                        if (relativeLayout5 != null) {
                                                                                            i10 = R.id.recycleView;
                                                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recycleView);
                                                                                            if (recyclerView != null) {
                                                                                                i10 = R.id.rl_top;
                                                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rl_top);
                                                                                                if (linearLayout2 != null) {
                                                                                                    i10 = R.id.roundMessage;
                                                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.roundMessage);
                                                                                                    if (textView2 != null) {
                                                                                                        i10 = R.id.search;
                                                                                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search);
                                                                                                        if (imageView7 != null) {
                                                                                                            i10 = R.id.share;
                                                                                                            ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.share);
                                                                                                            if (imageView8 != null) {
                                                                                                                i10 = R.id.title;
                                                                                                                RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                                                                if (relativeLayout6 != null) {
                                                                                                                    i10 = R.id.title_bar_layout;
                                                                                                                    RelativeLayout relativeLayout7 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                                                                                                                    if (relativeLayout7 != null) {
                                                                                                                        i10 = R.id.title_normal_download_cdv;
                                                                                                                        CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(rootView, R.id.title_normal_download_cdv);
                                                                                                                        if (customerDownloadView != null) {
                                                                                                                            i10 = R.id.title_normal_search_img;
                                                                                                                            ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title_normal_search_img);
                                                                                                                            if (imageView9 != null) {
                                                                                                                                i10 = R.id.titleText;
                                                                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                                                                                if (textView3 != null) {
                                                                                                                                    i10 = R.id.title_textview;
                                                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                                                                                                                    if (textView4 != null) {
                                                                                                                                        i10 = R.id.titleTransfer;
                                                                                                                                        RelativeLayout relativeLayout8 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.titleTransfer);
                                                                                                                                        if (relativeLayout8 != null) {
                                                                                                                                            i10 = R.id.toolbar;
                                                                                                                                            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(rootView, R.id.toolbar);
                                                                                                                                            if (toolbar != null) {
                                                                                                                                                i10 = R.id.topBarline;
                                                                                                                                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.topBarline);
                                                                                                                                                if (viewFindChildViewById3 != null) {
                                                                                                                                                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) rootView;
                                                                                                                                                    i10 = R.id.topvideo_view;
                                                                                                                                                    StandardVideoView standardVideoView = (StandardVideoView) ViewBindings.findChildViewById(rootView, R.id.topvideo_view);
                                                                                                                                                    if (standardVideoView != null) {
                                                                                                                                                        return new at(coordinatorLayout, appBarLayout, imageView, imageView2, progressBar, imageView3, collapsingToolbarLayout, imageView4, relativeLayout, relativeLayout2, imageView5, relativeLayout3, qdVarBind, button, relativeLayout4, imageView6, simpleDraweeView, simpleDraweeView2, viewFindChildViewById2, textView, linearLayout, relativeLayout5, recyclerView, linearLayout2, textView2, imageView7, imageView8, relativeLayout6, relativeLayout7, customerDownloadView, imageView9, textView3, textView4, relativeLayout8, toolbar, viewFindChildViewById3, coordinatorLayout, standardVideoView);
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
    public static at inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CoordinatorLayout getRoot() {
        return this.f36016b;
    }

    @NonNull
    public static at inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_modle_three_activityback, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
