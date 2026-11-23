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
import com.join.mgps.customview.CircleProgressView;
import com.join.mgps.customview.MStarBar;

/* JADX INFO: loaded from: classes4.dex */
public final class ar implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35977f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35978g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35979h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final MStarBar f35980i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f35981j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f35982k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35983l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final CircleProgressView f35984m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f35985n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35986o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35987p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f35988q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f35989r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35990s;

    private ar(@NonNull LinearLayout rootView, @NonNull TextView appCompany, @NonNull TextView appDownloadCount, @NonNull SimpleDraweeView appIcon, @NonNull TextView appName, @NonNull TextView appSize, @NonNull LinearLayout btTaglayout, @NonNull MStarBar commentHeadMstarBar, @NonNull TextView commentHeadNumTx, @NonNull TextView commentHeadPointTx, @NonNull LinearLayout companyLayout, @NonNull CircleProgressView gameScore, @NonNull ImageView giftImagex, @NonNull LinearLayout layoutGiftx, @NonNull LinearLayout scoreLayout, @NonNull TextView textView47, @NonNull TextView textView72, @NonNull LinearLayout tipsLayout) {
        this.f35973b = rootView;
        this.f35974c = appCompany;
        this.f35975d = appDownloadCount;
        this.f35976e = appIcon;
        this.f35977f = appName;
        this.f35978g = appSize;
        this.f35979h = btTaglayout;
        this.f35980i = commentHeadMstarBar;
        this.f35981j = commentHeadNumTx;
        this.f35982k = commentHeadPointTx;
        this.f35983l = companyLayout;
        this.f35984m = gameScore;
        this.f35985n = giftImagex;
        this.f35986o = layoutGiftx;
        this.f35987p = scoreLayout;
        this.f35988q = textView47;
        this.f35989r = textView72;
        this.f35990s = tipsLayout;
    }

    @NonNull
    public static ar bind(@NonNull View rootView) {
        int i10 = R.id.appCompany;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appCompany);
        if (textView != null) {
            i10 = R.id.appDownloadCount;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appDownloadCount);
            if (textView2 != null) {
                i10 = R.id.appIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon);
                if (simpleDraweeView != null) {
                    i10 = R.id.appName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
                    if (textView3 != null) {
                        i10 = R.id.appSize;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
                        if (textView4 != null) {
                            i10 = R.id.btTaglayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.btTaglayout);
                            if (linearLayout != null) {
                                i10 = R.id.comment_head_mstarBar;
                                MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.comment_head_mstarBar);
                                if (mStarBar != null) {
                                    i10 = R.id.comment_head_num_tx;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_num_tx);
                                    if (textView5 != null) {
                                        i10 = R.id.comment_head_point_tx;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_point_tx);
                                        if (textView6 != null) {
                                            i10 = R.id.companyLayout;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.companyLayout);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.gameScore;
                                                CircleProgressView circleProgressView = (CircleProgressView) ViewBindings.findChildViewById(rootView, R.id.gameScore);
                                                if (circleProgressView != null) {
                                                    i10 = R.id.giftImagex;
                                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.giftImagex);
                                                    if (imageView != null) {
                                                        i10 = R.id.layoutGiftx;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutGiftx);
                                                        if (linearLayout3 != null) {
                                                            i10 = R.id.scoreLayout;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.scoreLayout);
                                                            if (linearLayout4 != null) {
                                                                i10 = R.id.textView47;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView47);
                                                                if (textView7 != null) {
                                                                    i10 = R.id.textView72;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView72);
                                                                    if (textView8 != null) {
                                                                        i10 = R.id.tipsLayout;
                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                        if (linearLayout5 != null) {
                                                                            return new ar((LinearLayout) rootView, textView, textView2, simpleDraweeView, textView3, textView4, linearLayout, mStarBar, textView5, textView6, linearLayout2, circleProgressView, imageView, linearLayout3, linearLayout4, textView7, textView8, linearLayout5);
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
    public static ar inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35973b;
    }

    @NonNull
    public static ar inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_iconlayout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
