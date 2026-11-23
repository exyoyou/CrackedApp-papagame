package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class y1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f47525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f47528f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47529g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final GridView f47530h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RecyclerView f47531i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47532j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f47533k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47534l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47535m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f47536n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f47537o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f47538p;

    private y1(@NonNull ConstraintLayout rootView, @NonNull View back, @NonNull ImageView battleHall, @NonNull ConstraintLayout constraintLayout9, @NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView gameImg, @NonNull GridView gameMainNewLeftGv, @NonNull RecyclerView gameMainNewRv, @NonNull TextView gameName, @NonNull ImageView imageView80, @NonNull ConstraintLayout leftContainer, @NonNull LinearLayout llLoading, @NonNull TextView roomCount, @NonNull ImageView startGame, @NonNull TextView tvLoadingInfo) {
        this.f47524b = rootView;
        this.f47525c = back;
        this.f47526d = battleHall;
        this.f47527e = constraintLayout9;
        this.f47528f = frameLayout;
        this.f47529g = gameImg;
        this.f47530h = gameMainNewLeftGv;
        this.f47531i = gameMainNewRv;
        this.f47532j = gameName;
        this.f47533k = imageView80;
        this.f47534l = leftContainer;
        this.f47535m = llLoading;
        this.f47536n = roomCount;
        this.f47537o = startGame;
        this.f47538p = tvLoadingInfo;
    }

    @NonNull
    public static y1 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.back);
        if (viewFindChildViewById != null) {
            i10 = R.id.battleHall;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.battleHall);
            if (imageView != null) {
                i10 = R.id.constraintLayout9;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout9);
                if (constraintLayout != null) {
                    i10 = R.id.frameLayout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.frameLayout);
                    if (frameLayout != null) {
                        i10 = R.id.gameImg;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameImg);
                        if (simpleDraweeView != null) {
                            i10 = R.id.gameMainNewLeftGv;
                            GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.gameMainNewLeftGv);
                            if (gridView != null) {
                                i10 = R.id.gameMainNewRv;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.gameMainNewRv);
                                if (recyclerView != null) {
                                    i10 = R.id.gameName;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                                    if (textView != null) {
                                        i10 = R.id.imageView80;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView80);
                                        if (imageView2 != null) {
                                            i10 = R.id.leftContainer;
                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.leftContainer);
                                            if (constraintLayout2 != null) {
                                                i10 = R.id.ll_loading;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_loading);
                                                if (linearLayout != null) {
                                                    i10 = R.id.roomCount;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.roomCount);
                                                    if (textView2 != null) {
                                                        i10 = R.id.startGame;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.startGame);
                                                        if (imageView3 != null) {
                                                            i10 = R.id.tv_loading_info;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_loading_info);
                                                            if (textView3 != null) {
                                                                return new y1((ConstraintLayout) rootView, viewFindChildViewById, imageView, constraintLayout, frameLayout, simpleDraweeView, gridView, recyclerView, textView, imageView2, constraintLayout2, linearLayout, textView2, imageView3, textView3);
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
    public static y1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47524b;
    }

    @NonNull
    public static y1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_game_main_3, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
