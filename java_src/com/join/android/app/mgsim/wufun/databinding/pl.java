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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43401c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43402d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43403e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43404f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f43405g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43406h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43407i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43408j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43409k;

    private pl(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView ivAvatar, @NonNull ImageView ivPlayVideo, @NonNull ImageView ivRankChange, @NonNull RelativeLayout rankRoot, @NonNull RecyclerView rvRank, @NonNull TextView tvRank, @NonNull TextView tvRankChange, @NonNull TextView tvScoreTime, @NonNull TextView tvUsername) {
        this.f43400b = rootView;
        this.f43401c = ivAvatar;
        this.f43402d = ivPlayVideo;
        this.f43403e = ivRankChange;
        this.f43404f = rankRoot;
        this.f43405g = rvRank;
        this.f43406h = tvRank;
        this.f43407i = tvRankChange;
        this.f43408j = tvScoreTime;
        this.f43409k = tvUsername;
    }

    @NonNull
    public static pl bind(@NonNull View rootView) {
        int i10 = R.id.ivAvatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivAvatar);
        if (simpleDraweeView != null) {
            i10 = R.id.ivPlayVideo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivPlayVideo);
            if (imageView != null) {
                i10 = R.id.ivRankChange;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivRankChange);
                if (imageView2 != null) {
                    i10 = R.id.rankRoot;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rankRoot);
                    if (relativeLayout != null) {
                        i10 = R.id.rvRank;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvRank);
                        if (recyclerView != null) {
                            i10 = R.id.tvRank;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvRank);
                            if (textView != null) {
                                i10 = R.id.tvRankChange;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvRankChange);
                                if (textView2 != null) {
                                    i10 = R.id.tvScoreTime;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvScoreTime);
                                    if (textView3 != null) {
                                        i10 = R.id.tvUsername;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUsername);
                                        if (textView4 != null) {
                                            return new pl((LinearLayout) rootView, simpleDraweeView, imageView, imageView2, relativeLayout, recyclerView, textView, textView2, textView3, textView4);
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
    public static pl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43400b;
    }

    @NonNull
    public static pl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_end_game_detail_ranking, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
