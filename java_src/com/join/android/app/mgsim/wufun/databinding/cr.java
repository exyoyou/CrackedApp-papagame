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
import com.join.mgps.customview.MarqueeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class cr implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37064e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f37065f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37066g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37067h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final MStarBar f37068i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37069j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37070k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37071l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final CircleProgressView f37072m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f37073n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37074o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37075p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37076q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f37077r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f37078s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37079t;

    private cr(@NonNull LinearLayout rootView, @NonNull TextView appCompany, @NonNull TextView appDownloadCount, @NonNull SimpleDraweeView appIcon, @NonNull MarqueeTextView appName, @NonNull TextView appSize, @NonNull LinearLayout btTaglayout, @NonNull MStarBar commentHeadMstarBar, @NonNull TextView commentHeadNumTx, @NonNull TextView commentHeadPointTx, @NonNull LinearLayout companyLayout, @NonNull CircleProgressView gameScore, @NonNull ImageView giftImagex, @NonNull LinearLayout layoutGiftx, @NonNull LinearLayout llHandle, @NonNull LinearLayout scoreLayout, @NonNull TextView textView47, @NonNull TextView textView72, @NonNull LinearLayout tipsLayout) {
        this.f37061b = rootView;
        this.f37062c = appCompany;
        this.f37063d = appDownloadCount;
        this.f37064e = appIcon;
        this.f37065f = appName;
        this.f37066g = appSize;
        this.f37067h = btTaglayout;
        this.f37068i = commentHeadMstarBar;
        this.f37069j = commentHeadNumTx;
        this.f37070k = commentHeadPointTx;
        this.f37071l = companyLayout;
        this.f37072m = gameScore;
        this.f37073n = giftImagex;
        this.f37074o = layoutGiftx;
        this.f37075p = llHandle;
        this.f37076q = scoreLayout;
        this.f37077r = textView47;
        this.f37078s = textView72;
        this.f37079t = tipsLayout;
    }

    @NonNull
    public static cr bind(@NonNull View rootView) {
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
                            i10 = R.id.btTaglayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.btTaglayout);
                            if (linearLayout != null) {
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
                                                            i10 = R.id.ll_handle;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_handle);
                                                            if (linearLayout4 != null) {
                                                                i10 = R.id.scoreLayout;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.scoreLayout);
                                                                if (linearLayout5 != null) {
                                                                    i10 = R.id.textView47;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView47);
                                                                    if (textView6 != null) {
                                                                        i10 = R.id.textView72;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView72);
                                                                        if (textView7 != null) {
                                                                            i10 = R.id.tipsLayout;
                                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                            if (linearLayout6 != null) {
                                                                                return new cr((LinearLayout) rootView, textView, textView2, simpleDraweeView, marqueeTextView, textView3, linearLayout, mStarBar, textView4, textView5, linearLayout2, circleProgressView, imageView, linearLayout3, linearLayout4, linearLayout5, textView6, textView7, linearLayout6);
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
    public static cr inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37061b;
    }

    @NonNull
    public static cr inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_iconlayout_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
