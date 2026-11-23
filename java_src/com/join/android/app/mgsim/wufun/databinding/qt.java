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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class qt implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43997c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43998d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43999e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44000f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44001g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final HListView f44002h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final MStarBar f44003i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44004j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f44005k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44006l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44007m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f44008n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f44009o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44010p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f44011q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44012r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44013s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final HListView f44014t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44015u;

    private qt(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView appIcon, @NonNull TextView appName, @NonNull LinearLayout appRecomLayout, @NonNull LinearLayout backLayout, @NonNull TextView bottom, @NonNull HListView comment, @NonNull MStarBar commentHeadMstarBar, @NonNull TextView commentHeadNumTx, @NonNull TextView commentHeadPointTx, @NonNull TextView describ, @NonNull LinearLayout describLayout, @NonNull TextView downButnText, @NonNull ImageView downIcon, @NonNull LinearLayout downloadButn, @NonNull ImageView ivCloudLaunch, @NonNull SimpleDraweeView moveImg, @NonNull LinearLayout scoreLayout, @NonNull HListView screenListView, @NonNull LinearLayout tips) {
        this.f43996b = rootView;
        this.f43997c = appIcon;
        this.f43998d = appName;
        this.f43999e = appRecomLayout;
        this.f44000f = backLayout;
        this.f44001g = bottom;
        this.f44002h = comment;
        this.f44003i = commentHeadMstarBar;
        this.f44004j = commentHeadNumTx;
        this.f44005k = commentHeadPointTx;
        this.f44006l = describ;
        this.f44007m = describLayout;
        this.f44008n = downButnText;
        this.f44009o = downIcon;
        this.f44010p = downloadButn;
        this.f44011q = ivCloudLaunch;
        this.f44012r = moveImg;
        this.f44013s = scoreLayout;
        this.f44014t = screenListView;
        this.f44015u = tips;
    }

    @NonNull
    public static qt bind(@NonNull View rootView) {
        int i10 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.appName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
            if (textView != null) {
                i10 = R.id.appRecomLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.appRecomLayout);
                if (linearLayout != null) {
                    i10 = R.id.backLayout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
                    if (linearLayout2 != null) {
                        i10 = R.id.bottom;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.bottom);
                        if (textView2 != null) {
                            i10 = R.id.comment;
                            HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.comment);
                            if (hListView != null) {
                                i10 = R.id.comment_head_mstarBar;
                                MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.comment_head_mstarBar);
                                if (mStarBar != null) {
                                    i10 = R.id.comment_head_num_tx;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_num_tx);
                                    if (textView3 != null) {
                                        i10 = R.id.comment_head_point_tx;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_point_tx);
                                        if (textView4 != null) {
                                            i10 = R.id.describ;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.describ);
                                            if (textView5 != null) {
                                                i10 = R.id.describLayout;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.describLayout);
                                                if (linearLayout3 != null) {
                                                    i10 = R.id.downButnText;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downButnText);
                                                    if (textView6 != null) {
                                                        i10 = R.id.downIcon;
                                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.downIcon);
                                                        if (imageView != null) {
                                                            i10 = R.id.downloadButn;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.downloadButn);
                                                            if (linearLayout4 != null) {
                                                                i10 = R.id.iv_cloud_launch;
                                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_cloud_launch);
                                                                if (imageView2 != null) {
                                                                    i10 = R.id.moveImg;
                                                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.moveImg);
                                                                    if (simpleDraweeView2 != null) {
                                                                        i10 = R.id.scoreLayout;
                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.scoreLayout);
                                                                        if (linearLayout5 != null) {
                                                                            i10 = R.id.screenListView;
                                                                            HListView hListView2 = (HListView) ViewBindings.findChildViewById(rootView, R.id.screenListView);
                                                                            if (hListView2 != null) {
                                                                                i10 = R.id.tips;
                                                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tips);
                                                                                if (linearLayout6 != null) {
                                                                                    return new qt((LinearLayout) rootView, simpleDraweeView, textView, linearLayout, linearLayout2, textView2, hListView, mStarBar, textView3, textView4, textView5, linearLayout3, textView6, imageView, linearLayout4, imageView2, simpleDraweeView2, linearLayout5, hListView2, linearLayout6);
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
    public static qt inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43996b;
    }

    @NonNull
    public static qt inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamelist_detial_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
