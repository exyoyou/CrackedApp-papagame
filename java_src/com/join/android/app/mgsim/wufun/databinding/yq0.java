package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.join.android.app.mgsim.wufun.R;
import com.youth.banner.Banner;

/* JADX INFO: loaded from: classes4.dex */
public final class yq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Banner f47883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Group f47886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f47887g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f47888h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47889i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47890j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47891k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f47892l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f47893m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f47894n;

    private yq0(@NonNull ConstraintLayout rootView, @NonNull Banner banner, @NonNull ImageView bgBattle, @NonNull ImageView bgCommunity, @NonNull Group groupEndGame, @NonNull RecyclerView indicator, @NonNull View statubar, @NonNull TextView tvBattleRoomCount, @NonNull TextView tvCommunityCount, @NonNull TextView tvMore, @NonNull TextView tvTitleEndGame, @NonNull TextView tvTitleForum, @NonNull ViewPager2 vpEndGame) {
        this.f47882b = rootView;
        this.f47883c = banner;
        this.f47884d = bgBattle;
        this.f47885e = bgCommunity;
        this.f47886f = groupEndGame;
        this.f47887g = indicator;
        this.f47888h = statubar;
        this.f47889i = tvBattleRoomCount;
        this.f47890j = tvCommunityCount;
        this.f47891k = tvMore;
        this.f47892l = tvTitleEndGame;
        this.f47893m = tvTitleForum;
        this.f47894n = vpEndGame;
    }

    @NonNull
    public static yq0 bind(@NonNull View rootView) {
        int i10 = R.id.banner;
        Banner banner = (Banner) ViewBindings.findChildViewById(rootView, R.id.banner);
        if (banner != null) {
            i10 = R.id.bgBattle;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bgBattle);
            if (imageView != null) {
                i10 = R.id.bgCommunity;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bgCommunity);
                if (imageView2 != null) {
                    i10 = R.id.groupEndGame;
                    Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.groupEndGame);
                    if (group != null) {
                        i10 = R.id.indicator;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.indicator);
                        if (recyclerView != null) {
                            i10 = R.id.statubar;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.tvBattleRoomCount;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBattleRoomCount);
                                if (textView != null) {
                                    i10 = R.id.tvCommunityCount;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCommunityCount);
                                    if (textView2 != null) {
                                        i10 = R.id.tvMore;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvMore);
                                        if (textView3 != null) {
                                            i10 = R.id.tvTitleEndGame;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitleEndGame);
                                            if (textView4 != null) {
                                                i10 = R.id.tvTitleForum;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitleForum);
                                                if (textView5 != null) {
                                                    i10 = R.id.vpEndGame;
                                                    ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.vpEndGame);
                                                    if (viewPager2 != null) {
                                                        return new yq0((ConstraintLayout) rootView, banner, imageView, imageView2, group, recyclerView, viewFindChildViewById, textView, textView2, textView3, textView4, textView5, viewPager2);
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
    public static yq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47882b;
    }

    @NonNull
    public static yq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.part_discovery_header_v3, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
