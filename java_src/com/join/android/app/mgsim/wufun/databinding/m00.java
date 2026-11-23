package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class m00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f41659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41661g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41662h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41663i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41664j;

    private m00(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView ivAvatar, @NonNull ImageView ivPlayVideo, @NonNull ImageView ivRankChange, @NonNull RelativeLayout rankRoot, @NonNull TextView tvRank, @NonNull TextView tvRankChange, @NonNull TextView tvScoreTime, @NonNull TextView tvUsername) {
        this.f41656b = rootView;
        this.f41657c = ivAvatar;
        this.f41658d = ivPlayVideo;
        this.f41659e = ivRankChange;
        this.f41660f = rankRoot;
        this.f41661g = tvRank;
        this.f41662h = tvRankChange;
        this.f41663i = tvScoreTime;
        this.f41664j = tvUsername;
    }

    @NonNull
    public static m00 bind(@NonNull View rootView) {
        int i10 = R.id.ivAvatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivAvatar);
        if (simpleDraweeView != null) {
            i10 = R.id.ivPlayVideo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivPlayVideo);
            if (imageView != null) {
                i10 = R.id.ivRankChange;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivRankChange);
                if (imageView2 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) rootView;
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
                                    return new m00(relativeLayout, simpleDraweeView, imageView, imageView2, relativeLayout, textView, textView2, textView3, textView4);
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
    public static m00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41656b;
    }

    @NonNull
    public static m00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_end_game_detail_ranking, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
