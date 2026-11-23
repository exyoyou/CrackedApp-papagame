package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class w80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CardView f46671d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CardView f46672e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CardView f46673f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46674g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final Group f46675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RecyclerView f46676i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46677j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46678k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46679l;

    private w80(@NonNull ConstraintLayout rootView, @NonNull ImageView bgChanllengeCount, @NonNull CardView btnStart, @NonNull CardView card, @NonNull CardView flMyRank, @NonNull SimpleDraweeView imgCover, @NonNull Group main, @NonNull RecyclerView rvRank, @NonNull TextView tvChanllengeCount, @NonNull TextView tvMyRank, @NonNull TextView tvStart) {
        this.f46669b = rootView;
        this.f46670c = bgChanllengeCount;
        this.f46671d = btnStart;
        this.f46672e = card;
        this.f46673f = flMyRank;
        this.f46674g = imgCover;
        this.f46675h = main;
        this.f46676i = rvRank;
        this.f46677j = tvChanllengeCount;
        this.f46678k = tvMyRank;
        this.f46679l = tvStart;
    }

    @NonNull
    public static w80 bind(@NonNull View rootView) {
        int i10 = R.id.bgChanllengeCount;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bgChanllengeCount);
        if (imageView != null) {
            i10 = R.id.btnStart;
            CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.btnStart);
            if (cardView != null) {
                i10 = R.id.card;
                CardView cardView2 = (CardView) ViewBindings.findChildViewById(rootView, R.id.card);
                if (cardView2 != null) {
                    i10 = R.id.flMyRank;
                    CardView cardView3 = (CardView) ViewBindings.findChildViewById(rootView, R.id.flMyRank);
                    if (cardView3 != null) {
                        i10 = R.id.imgCover;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imgCover);
                        if (simpleDraweeView != null) {
                            i10 = R.id.main;
                            Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.main);
                            if (group != null) {
                                i10 = R.id.rvRank;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvRank);
                                if (recyclerView != null) {
                                    i10 = R.id.tvChanllengeCount;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvChanllengeCount);
                                    if (textView != null) {
                                        i10 = R.id.tvMyRank;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvMyRank);
                                        if (textView2 != null) {
                                            i10 = R.id.tvStart;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvStart);
                                            if (textView3 != null) {
                                                return new w80((ConstraintLayout) rootView, imageView, cardView, cardView2, cardView3, simpleDraweeView, group, recyclerView, textView, textView2, textView3);
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
    public static w80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46669b;
    }

    @NonNull
    public static w80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_discovery_paiwei_viewpager, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
