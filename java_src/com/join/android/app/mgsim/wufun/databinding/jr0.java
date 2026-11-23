package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f40377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f40378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f40379g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f40380h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f40381i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f40382j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ListView f40383k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40384l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40385m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40386n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40387o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40388p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40389q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f40390r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f40391s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f40392t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final View f40393u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final View f40394v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final View f40395w;

    private jr0(@NonNull LinearLayout rootView, @NonNull LinearLayout activityMain, @NonNull TextView areaTitle, @NonNull View dot, @NonNull View emptyView, @NonNull ImageView ivArrow, @NonNull ImageView ivBjBattleAreaRec, @NonNull ImageView ivGzBattleAreaRec, @NonNull ImageView ivShBattleAreaRec, @NonNull ListView listview, @NonNull LinearLayout rlAreas, @NonNull RelativeLayout rlBj, @NonNull RelativeLayout rlGames, @NonNull RelativeLayout rlGz, @NonNull RelativeLayout rlSel, @NonNull RelativeLayout rlSh, @NonNull TextView tvBj, @NonNull TextView tvGz, @NonNull TextView tvSh, @NonNull View viewBj, @NonNull View viewGz, @NonNull View viewSh) {
        this.f40374b = rootView;
        this.f40375c = activityMain;
        this.f40376d = areaTitle;
        this.f40377e = dot;
        this.f40378f = emptyView;
        this.f40379g = ivArrow;
        this.f40380h = ivBjBattleAreaRec;
        this.f40381i = ivGzBattleAreaRec;
        this.f40382j = ivShBattleAreaRec;
        this.f40383k = listview;
        this.f40384l = rlAreas;
        this.f40385m = rlBj;
        this.f40386n = rlGames;
        this.f40387o = rlGz;
        this.f40388p = rlSel;
        this.f40389q = rlSh;
        this.f40390r = tvBj;
        this.f40391s = tvGz;
        this.f40392t = tvSh;
        this.f40393u = viewBj;
        this.f40394v = viewGz;
        this.f40395w = viewSh;
    }

    @NonNull
    public static jr0 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.area_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.area_title);
        if (textView != null) {
            i10 = R.id.dot;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.dot);
            if (viewFindChildViewById != null) {
                i10 = R.id.emptyView;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.emptyView);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.iv_arrow;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_arrow);
                    if (imageView != null) {
                        i10 = R.id.iv_bj_battle_area_rec;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_bj_battle_area_rec);
                        if (imageView2 != null) {
                            i10 = R.id.iv_gz_battle_area_rec;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_gz_battle_area_rec);
                            if (imageView3 != null) {
                                i10 = R.id.iv_sh_battle_area_rec;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_sh_battle_area_rec);
                                if (imageView4 != null) {
                                    i10 = R.id.listview;
                                    ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.listview);
                                    if (listView != null) {
                                        i10 = R.id.rl_areas;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rl_areas);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.rl_bj;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_bj);
                                            if (relativeLayout != null) {
                                                i10 = R.id.rl_games;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_games);
                                                if (relativeLayout2 != null) {
                                                    i10 = R.id.rl_gz;
                                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_gz);
                                                    if (relativeLayout3 != null) {
                                                        i10 = R.id.rl_sel;
                                                        RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_sel);
                                                        if (relativeLayout4 != null) {
                                                            i10 = R.id.rl_sh;
                                                            RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_sh);
                                                            if (relativeLayout5 != null) {
                                                                i10 = R.id.tv_bj;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_bj);
                                                                if (textView2 != null) {
                                                                    i10 = R.id.tv_gz;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_gz);
                                                                    if (textView3 != null) {
                                                                        i10 = R.id.tv_sh;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sh);
                                                                        if (textView4 != null) {
                                                                            i10 = R.id.view_bj;
                                                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.view_bj);
                                                                            if (viewFindChildViewById3 != null) {
                                                                                i10 = R.id.view_gz;
                                                                                View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.view_gz);
                                                                                if (viewFindChildViewById4 != null) {
                                                                                    i10 = R.id.view_sh;
                                                                                    View viewFindChildViewById5 = ViewBindings.findChildViewById(rootView, R.id.view_sh);
                                                                                    if (viewFindChildViewById5 != null) {
                                                                                        return new jr0(linearLayout, linearLayout, textView, viewFindChildViewById, viewFindChildViewById2, imageView, imageView2, imageView3, imageView4, listView, linearLayout2, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, textView2, textView3, textView4, viewFindChildViewById3, viewFindChildViewById4, viewFindChildViewById5);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40374b;
    }

    @NonNull
    public static jr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_battle_area, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
