package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class n implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CardView f42102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42104f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Group f42105g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final Group f42106h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Group f42107i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42108j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f42109k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RecyclerView f42110l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RecyclerView f42111m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f42112n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42113o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42114p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f42115q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f42116r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f42117s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f42118t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42119u;

    private n(@NonNull ConstraintLayout rootView, @NonNull ImageView backImage, @NonNull CardView cardCleanSys, @NonNull ImageView checkboxSys, @NonNull FrameLayout flBottom, @NonNull Group groupContent, @NonNull Group groupMyGame, @NonNull Group groupSimulator, @NonNull RelativeLayout headview, @NonNull NestedScrollView nes, @NonNull RecyclerView rvMyGame, @NonNull RecyclerView rvSimulator, @NonNull View statubar, @NonNull TextView titleTextview, @NonNull TextView tvClean, @NonNull TextView tvDescMyGame, @NonNull TextView tvSysSpace, @NonNull TextView tvTitleMyGame, @NonNull TextView tvTitleSimulator, @NonNull TextView tvTotalData) {
        this.f42100b = rootView;
        this.f42101c = backImage;
        this.f42102d = cardCleanSys;
        this.f42103e = checkboxSys;
        this.f42104f = flBottom;
        this.f42105g = groupContent;
        this.f42106h = groupMyGame;
        this.f42107i = groupSimulator;
        this.f42108j = headview;
        this.f42109k = nes;
        this.f42110l = rvMyGame;
        this.f42111m = rvSimulator;
        this.f42112n = statubar;
        this.f42113o = titleTextview;
        this.f42114p = tvClean;
        this.f42115q = tvDescMyGame;
        this.f42116r = tvSysSpace;
        this.f42117s = tvTitleMyGame;
        this.f42118t = tvTitleSimulator;
        this.f42119u = tvTotalData;
    }

    @NonNull
    public static n bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.cardCleanSys;
            CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.cardCleanSys);
            if (cardView != null) {
                i10 = R.id.checkboxSys;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.checkboxSys);
                if (imageView2 != null) {
                    i10 = R.id.flBottom;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flBottom);
                    if (frameLayout != null) {
                        i10 = R.id.groupContent;
                        Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.groupContent);
                        if (group != null) {
                            i10 = R.id.groupMyGame;
                            Group group2 = (Group) ViewBindings.findChildViewById(rootView, R.id.groupMyGame);
                            if (group2 != null) {
                                i10 = R.id.groupSimulator;
                                Group group3 = (Group) ViewBindings.findChildViewById(rootView, R.id.groupSimulator);
                                if (group3 != null) {
                                    i10 = R.id.headview;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.headview);
                                    if (relativeLayout != null) {
                                        i10 = R.id.nes;
                                        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(rootView, R.id.nes);
                                        if (nestedScrollView != null) {
                                            i10 = R.id.rvMyGame;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvMyGame);
                                            if (recyclerView != null) {
                                                i10 = R.id.rvSimulator;
                                                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvSimulator);
                                                if (recyclerView2 != null) {
                                                    i10 = R.id.statubar;
                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                                    if (viewFindChildViewById != null) {
                                                        i10 = R.id.title_textview;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                                        if (textView != null) {
                                                            i10 = R.id.tvClean;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvClean);
                                                            if (textView2 != null) {
                                                                i10 = R.id.tvDescMyGame;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDescMyGame);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.tvSysSpace;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvSysSpace);
                                                                    if (textView4 != null) {
                                                                        i10 = R.id.tvTitleMyGame;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitleMyGame);
                                                                        if (textView5 != null) {
                                                                            i10 = R.id.tvTitleSimulator;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitleSimulator);
                                                                            if (textView6 != null) {
                                                                                i10 = R.id.tvTotalData;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTotalData);
                                                                                if (textView7 != null) {
                                                                                    return new n((ConstraintLayout) rootView, imageView, cardView, imageView2, frameLayout, group, group2, group3, relativeLayout, nestedScrollView, recyclerView, recyclerView2, viewFindChildViewById, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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
    public static n inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f42100b;
    }

    @NonNull
    public static n inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_clean_space, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
