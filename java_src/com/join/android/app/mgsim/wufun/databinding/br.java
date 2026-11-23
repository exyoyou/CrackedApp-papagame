package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CircleProgressView;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.MarqueeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class br implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f36534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final MStarBar f36536h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36537i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36538j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36539k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final CircleProgressView f36540l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f36541m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36542n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36543o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36544p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f36545q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f36546r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36547s;

    private br(@NonNull RelativeLayout rootView, @NonNull TextView appCompany, @NonNull TextView appDownloadCount, @NonNull SimpleDraweeView appIcon, @NonNull MarqueeTextView appName, @NonNull TextView appSize, @NonNull MStarBar commentHeadMstarBar, @NonNull TextView commentHeadNumTx, @NonNull TextView commentHeadPointTx, @NonNull LinearLayout companyLayout, @NonNull CircleProgressView gameScore, @NonNull ImageView giftImagex, @NonNull LinearLayout layoutGiftx, @NonNull RelativeLayout rlGameInfo, @NonNull LinearLayout scoreLayout, @NonNull TextView textView47, @NonNull TextView textView72, @NonNull LinearLayout tipsLayout) {
        this.f36530b = rootView;
        this.f36531c = appCompany;
        this.f36532d = appDownloadCount;
        this.f36533e = appIcon;
        this.f36534f = appName;
        this.f36535g = appSize;
        this.f36536h = commentHeadMstarBar;
        this.f36537i = commentHeadNumTx;
        this.f36538j = commentHeadPointTx;
        this.f36539k = companyLayout;
        this.f36540l = gameScore;
        this.f36541m = giftImagex;
        this.f36542n = layoutGiftx;
        this.f36543o = rlGameInfo;
        this.f36544p = scoreLayout;
        this.f36545q = textView47;
        this.f36546r = textView72;
        this.f36547s = tipsLayout;
    }

    @NonNull
    public static br bind(@NonNull View rootView) {
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
                    MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.findChildViewById(rootView, R.id.appName);
                    if (marqueeTextView != null) {
                        i10 = R.id.appSize;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
                        if (textView3 != null) {
                            i10 = R.id.comment_head_mstarBar;
                            MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.comment_head_mstarBar);
                            if (mStarBar != null) {
                                i10 = R.id.comment_head_num_tx;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_num_tx);
                                if (textView4 != null) {
                                    i10 = R.id.comment_head_point_tx;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_point_tx);
                                    if (textView5 != null) {
                                        i10 = R.id.companyLayout;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.companyLayout);
                                        if (linearLayout != null) {
                                            i10 = R.id.gameScore;
                                            CircleProgressView circleProgressView = (CircleProgressView) ViewBindings.findChildViewById(rootView, R.id.gameScore);
                                            if (circleProgressView != null) {
                                                i10 = R.id.giftImagex;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.giftImagex);
                                                if (imageView != null) {
                                                    i10 = R.id.layoutGiftx;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutGiftx);
                                                    if (linearLayout2 != null) {
                                                        RelativeLayout relativeLayout = (RelativeLayout) rootView;
                                                        i10 = R.id.scoreLayout;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.scoreLayout);
                                                        if (linearLayout3 != null) {
                                                            i10 = R.id.textView47;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView47);
                                                            if (textView6 != null) {
                                                                i10 = R.id.textView72;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView72);
                                                                if (textView7 != null) {
                                                                    i10 = R.id.tipsLayout;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                    if (linearLayout4 != null) {
                                                                        return new br(relativeLayout, textView, textView2, simpleDraweeView, marqueeTextView, textView3, mStarBar, textView4, textView5, linearLayout, circleProgressView, imageView, linearLayout2, relativeLayout, linearLayout3, textView6, textView7, linearLayout4);
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
    public static br inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36530b;
    }

    @NonNull
    public static br inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_iconlayout_bt, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
