package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class gn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f38904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f38906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38907e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38908f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38909g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f38910h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f38911i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f38912j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f38913k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38914l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f38915m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f38916n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f38917o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38918p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f38919q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f38920r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f38921s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final View f38922t;

    private gn(@NonNull CardView rootView, @NonNull TextView desc, @NonNull View focus, @NonNull ImageView icCloseAd, @NonNull SimpleDraweeView icCornerAd, @NonNull SimpleDraweeView icon, @NonNull ImageView imageView61, @NonNull TextView install, @NonNull ImageView ivGiftMore, @NonNull View line, @NonNull LinearLayout llGift, @NonNull View more, @NonNull TextView name, @NonNull ImageView notOpen, @NonNull ProgressBar progressBar, @NonNull TextView speedUp, @NonNull TextView tvDownSpeed, @NonNull TextView tvGiftDesc, @NonNull View vBottom) {
        this.f38904b = rootView;
        this.f38905c = desc;
        this.f38906d = focus;
        this.f38907e = icCloseAd;
        this.f38908f = icCornerAd;
        this.f38909g = icon;
        this.f38910h = imageView61;
        this.f38911i = install;
        this.f38912j = ivGiftMore;
        this.f38913k = line;
        this.f38914l = llGift;
        this.f38915m = more;
        this.f38916n = name;
        this.f38917o = notOpen;
        this.f38918p = progressBar;
        this.f38919q = speedUp;
        this.f38920r = tvDownSpeed;
        this.f38921s = tvGiftDesc;
        this.f38922t = vBottom;
    }

    @NonNull
    public static gn bind(@NonNull View rootView) {
        int i10 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
        if (textView != null) {
            i10 = R.id.focus;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.focus);
            if (viewFindChildViewById != null) {
                i10 = R.id.icCloseAd;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icCloseAd);
                if (imageView != null) {
                    i10 = R.id.icCornerAd;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icCornerAd);
                    if (simpleDraweeView != null) {
                        i10 = R.id.icon;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                        if (simpleDraweeView2 != null) {
                            i10 = R.id.imageView61;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView61);
                            if (imageView2 != null) {
                                i10 = R.id.install;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.install);
                                if (textView2 != null) {
                                    i10 = R.id.iv_gift_more;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_gift_more);
                                    if (imageView3 != null) {
                                        i10 = R.id.line;
                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.line);
                                        if (viewFindChildViewById2 != null) {
                                            i10 = R.id.ll_gift;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_gift);
                                            if (linearLayout != null) {
                                                i10 = R.id.more;
                                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.more);
                                                if (viewFindChildViewById3 != null) {
                                                    i10 = R.id.name;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                                    if (textView3 != null) {
                                                        i10 = R.id.notOpen;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.notOpen);
                                                        if (imageView4 != null) {
                                                            i10 = R.id.progressBar;
                                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                                            if (progressBar != null) {
                                                                i10 = R.id.speedUp;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.speedUp);
                                                                if (textView4 != null) {
                                                                    i10 = R.id.tv_down_speed;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_down_speed);
                                                                    if (textView5 != null) {
                                                                        i10 = R.id.tv_gift_desc;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_gift_desc);
                                                                        if (textView6 != null) {
                                                                            i10 = R.id.v_bottom;
                                                                            View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.v_bottom);
                                                                            if (viewFindChildViewById4 != null) {
                                                                                return new gn((CardView) rootView, textView, viewFindChildViewById, imageView, simpleDraweeView, simpleDraweeView2, imageView2, textView2, imageView3, viewFindChildViewById2, linearLayout, viewFindChildViewById3, textView3, imageView4, progressBar, textView4, textView5, textView6, viewFindChildViewById4);
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
    public static gn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f38904b;
    }

    @NonNull
    public static gn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game_item_game_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
