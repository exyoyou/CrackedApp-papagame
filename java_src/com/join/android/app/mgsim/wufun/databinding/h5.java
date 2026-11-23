package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class h5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39158b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39159c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CardView f39160d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CardView f39161e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39162f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39163g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39164h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39165i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RecyclerView f39166j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f39167k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f39168l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f39169m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f39170n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f39171o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f39172p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f39173q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f39174r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f39175s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f39176t;

    private h5(@NonNull ConstraintLayout rootView, @NonNull ImageView backImage, @NonNull CardView cardClean, @NonNull CardView cardRecom, @NonNull FrameLayout flRecom, @NonNull RelativeLayout headview, @NonNull LinearLayout llBottom, @NonNull LinearLayout llLocalArchiveGame, @NonNull RecyclerView rvRecom, @NonNull View statubar, @NonNull TextView titleTextview, @NonNull TextView tvClean, @NonNull TextView tvCleanSpace, @NonNull TextView tvFinish, @NonNull TextView tvGameTag, @NonNull TextView tvNoArchieveGame, @NonNull TextView tvTotalDataSize, @NonNull TextView tvTotalGamePkgSize, @NonNull TextView tvUninstall) {
        this.f39158b = rootView;
        this.f39159c = backImage;
        this.f39160d = cardClean;
        this.f39161e = cardRecom;
        this.f39162f = flRecom;
        this.f39163g = headview;
        this.f39164h = llBottom;
        this.f39165i = llLocalArchiveGame;
        this.f39166j = rvRecom;
        this.f39167k = statubar;
        this.f39168l = titleTextview;
        this.f39169m = tvClean;
        this.f39170n = tvCleanSpace;
        this.f39171o = tvFinish;
        this.f39172p = tvGameTag;
        this.f39173q = tvNoArchieveGame;
        this.f39174r = tvTotalDataSize;
        this.f39175s = tvTotalGamePkgSize;
        this.f39176t = tvUninstall;
    }

    @NonNull
    public static h5 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.cardClean;
            CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.cardClean);
            if (cardView != null) {
                i10 = R.id.cardRecom;
                CardView cardView2 = (CardView) ViewBindings.findChildViewById(rootView, R.id.cardRecom);
                if (cardView2 != null) {
                    i10 = R.id.flRecom;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flRecom);
                    if (frameLayout != null) {
                        i10 = R.id.headview;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.headview);
                        if (relativeLayout != null) {
                            i10 = R.id.llBottom;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llBottom);
                            if (linearLayout != null) {
                                i10 = R.id.llLocalArchiveGame;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llLocalArchiveGame);
                                if (linearLayout2 != null) {
                                    i10 = R.id.rvRecom;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvRecom);
                                    if (recyclerView != null) {
                                        i10 = R.id.statubar;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                        if (viewFindChildViewById != null) {
                                            i10 = R.id.title_textview;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                            if (textView != null) {
                                                i10 = R.id.tvClean;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvClean);
                                                if (textView2 != null) {
                                                    i10 = R.id.tvCleanSpace;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCleanSpace);
                                                    if (textView3 != null) {
                                                        i10 = R.id.tvFinish;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvFinish);
                                                        if (textView4 != null) {
                                                            i10 = R.id.tvGameTag;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameTag);
                                                            if (textView5 != null) {
                                                                i10 = R.id.tvNoArchieveGame;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvNoArchieveGame);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.tvTotalDataSize;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTotalDataSize);
                                                                    if (textView7 != null) {
                                                                        i10 = R.id.tvTotalGamePkgSize;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTotalGamePkgSize);
                                                                        if (textView8 != null) {
                                                                            i10 = R.id.tvUninstall;
                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUninstall);
                                                                            if (textView9 != null) {
                                                                                return new h5((ConstraintLayout) rootView, imageView, cardView, cardView2, frameLayout, relativeLayout, linearLayout, linearLayout2, recyclerView, viewFindChildViewById, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
    public static h5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39158b;
    }

    @NonNull
    public static h5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_uninstall_wufun, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
