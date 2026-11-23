package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class u implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f45491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f45493f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f45494g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45495h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RecyclerView f45496i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45497j;

    private u(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull RecyclerView breakListView, @NonNull ConstraintLayout clRecentGames, @NonNull ImageView iv1, @NonNull ImageView ivBtn1, @NonNull RelativeLayout moduleSixRl, @NonNull RecyclerView rvList, @NonNull TextView titleTextview) {
        this.f45489b = rootView;
        this.f45490c = backImage;
        this.f45491d = breakListView;
        this.f45492e = clRecentGames;
        this.f45493f = iv1;
        this.f45494g = ivBtn1;
        this.f45495h = moduleSixRl;
        this.f45496i = rvList;
        this.f45497j = titleTextview;
    }

    @NonNull
    public static u bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.breakListView;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.breakListView);
            if (recyclerView != null) {
                i10 = R.id.cl_recent_games;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_recent_games);
                if (constraintLayout != null) {
                    i10 = R.id.iv_1;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                    if (imageView2 != null) {
                        i10 = R.id.iv_btn_1;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_btn_1);
                        if (imageView3 != null) {
                            RelativeLayout relativeLayout = (RelativeLayout) rootView;
                            i10 = R.id.rv_list;
                            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list);
                            if (recyclerView2 != null) {
                                i10 = R.id.title_textview;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                if (textView != null) {
                                    return new u(relativeLayout, imageView, recyclerView, constraintLayout, imageView2, imageView3, relativeLayout, recyclerView2, textView);
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
    public static u inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45489b;
    }

    @NonNull
    public static u inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_cloud_game_zone, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
