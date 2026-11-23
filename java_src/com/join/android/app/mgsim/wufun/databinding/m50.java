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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CountDownerTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class m50 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f41736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f41737f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f41738g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41739h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41740i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41741j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41742k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41743l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41744m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f41745n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f41746o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f41747p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f41748q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f41749r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final CountDownerTextView f41750s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f41751t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f41752u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f41753v;

    private m50(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull ImageView ivLock, @NonNull ImageView ivTime, @NonNull ImageView ivVip, @NonNull View line1, @NonNull LinearLayout llChallengeGold, @NonNull LinearLayout llId, @NonNull RelativeLayout llRoom, @NonNull LinearLayout llTime, @NonNull LinearLayout llView, @NonNull RelativeLayout root, @NonNull TextView tvChallenge, @NonNull TextView tvChenghao, @NonNull TextView tvForbidden, @NonNull TextView tvGameCount, @NonNull TextView tvGameName, @NonNull CountDownerTextView tvGameState, @NonNull TextView tvId, @NonNull TextView tvName, @NonNull TextView tvView) {
        this.f41733b = rootView;
        this.f41734c = avatar;
        this.f41735d = ivLock;
        this.f41736e = ivTime;
        this.f41737f = ivVip;
        this.f41738g = line1;
        this.f41739h = llChallengeGold;
        this.f41740i = llId;
        this.f41741j = llRoom;
        this.f41742k = llTime;
        this.f41743l = llView;
        this.f41744m = root;
        this.f41745n = tvChallenge;
        this.f41746o = tvChenghao;
        this.f41747p = tvForbidden;
        this.f41748q = tvGameCount;
        this.f41749r = tvGameName;
        this.f41750s = tvGameState;
        this.f41751t = tvId;
        this.f41752u = tvName;
        this.f41753v = tvView;
    }

    @NonNull
    public static m50 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.iv_lock;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_lock);
            if (imageView != null) {
                i10 = R.id.iv_time;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_time);
                if (imageView2 != null) {
                    i10 = R.id.iv_vip;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_vip);
                    if (imageView3 != null) {
                        i10 = R.id.line_1;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line_1);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.ll_challenge_gold;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_challenge_gold);
                            if (linearLayout != null) {
                                i10 = R.id.ll_id;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_id);
                                if (linearLayout2 != null) {
                                    i10 = R.id.ll_room;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.ll_room);
                                    if (relativeLayout != null) {
                                        i10 = R.id.ll_time;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_time);
                                        if (linearLayout3 != null) {
                                            i10 = R.id.ll_view;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_view);
                                            if (linearLayout4 != null) {
                                                RelativeLayout relativeLayout2 = (RelativeLayout) rootView;
                                                i10 = R.id.tv_challenge;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_challenge);
                                                if (textView != null) {
                                                    i10 = R.id.tv_chenghao;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_chenghao);
                                                    if (textView2 != null) {
                                                        i10 = R.id.tv_forbidden;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_forbidden);
                                                        if (textView3 != null) {
                                                            i10 = R.id.tv_game_count;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_count);
                                                            if (textView4 != null) {
                                                                i10 = R.id.tv_gameName;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_gameName);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.tv_game_state;
                                                                    CountDownerTextView countDownerTextView = (CountDownerTextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_state);
                                                                    if (countDownerTextView != null) {
                                                                        i10 = R.id.tv_id;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_id);
                                                                        if (textView6 != null) {
                                                                            i10 = R.id.tv_name;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                                                                            if (textView7 != null) {
                                                                                i10 = R.id.tv_view;
                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_view);
                                                                                if (textView8 != null) {
                                                                                    return new m50(relativeLayout2, simpleDraweeView, imageView, imageView2, imageView3, viewFindChildViewById, linearLayout, linearLayout2, relativeLayout, linearLayout3, linearLayout4, relativeLayout2, textView, textView2, textView3, textView4, textView5, countDownerTextView, textView6, textView7, textView8);
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
    public static m50 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41733b;
    }

    @NonNull
    public static m50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_room_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
