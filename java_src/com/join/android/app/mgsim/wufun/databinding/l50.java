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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CountDownerTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class l50 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f41167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41168f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41169g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41170h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41171i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41172j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41173k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41174l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41175m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final n50 f41176n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final n50 f41177o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final n50 f41178p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final n50 f41179q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f41180r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final ImageView f41181s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f41182t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f41183u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final CountDownerTextView f41184v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f41185w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f41186x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f41187y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final ImageView f41188z;

    private l50(@NonNull RelativeLayout rootView, @NonNull LinearLayout gamers, @NonNull ImageView ivLock, @NonNull ImageView ivVip, @NonNull LinearLayout llP1, @NonNull LinearLayout llP2, @NonNull LinearLayout llP3, @NonNull LinearLayout llP4, @NonNull TextView nickNameP1, @NonNull TextView nickNameP2, @NonNull TextView nickNameP3, @NonNull TextView nickNameP4, @NonNull n50 p10, @NonNull n50 p11, @NonNull n50 p12, @NonNull n50 p13, @NonNull ImageView tv2, @NonNull ImageView tv3, @NonNull TextView tvCopper, @NonNull TextView tvGameName, @NonNull CountDownerTextView tvGameState, @NonNull TextView tvId, @NonNull TextView tvIdLabel, @NonNull TextView tvView, @NonNull ImageView waveView) {
        this.f41164b = rootView;
        this.f41165c = gamers;
        this.f41166d = ivLock;
        this.f41167e = ivVip;
        this.f41168f = llP1;
        this.f41169g = llP2;
        this.f41170h = llP3;
        this.f41171i = llP4;
        this.f41172j = nickNameP1;
        this.f41173k = nickNameP2;
        this.f41174l = nickNameP3;
        this.f41175m = nickNameP4;
        this.f41176n = p10;
        this.f41177o = p11;
        this.f41178p = p12;
        this.f41179q = p13;
        this.f41180r = tv2;
        this.f41181s = tv3;
        this.f41182t = tvCopper;
        this.f41183u = tvGameName;
        this.f41184v = tvGameState;
        this.f41185w = tvId;
        this.f41186x = tvIdLabel;
        this.f41187y = tvView;
        this.f41188z = waveView;
    }

    @NonNull
    public static l50 bind(@NonNull View rootView) {
        int i10 = R.id.gamers;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gamers);
        if (linearLayout != null) {
            i10 = R.id.iv_lock;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_lock);
            if (imageView != null) {
                i10 = R.id.iv_vip;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_vip);
                if (imageView2 != null) {
                    i10 = R.id.llP1;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llP1);
                    if (linearLayout2 != null) {
                        i10 = R.id.llP2;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llP2);
                        if (linearLayout3 != null) {
                            i10 = R.id.llP3;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llP3);
                            if (linearLayout4 != null) {
                                i10 = R.id.llP4;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llP4);
                                if (linearLayout5 != null) {
                                    i10 = R.id.nickNameP1;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.nickNameP1);
                                    if (textView != null) {
                                        i10 = R.id.nickNameP2;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nickNameP2);
                                        if (textView2 != null) {
                                            i10 = R.id.nickNameP3;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nickNameP3);
                                            if (textView3 != null) {
                                                i10 = R.id.nickNameP4;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nickNameP4);
                                                if (textView4 != null) {
                                                    i10 = R.id.f35477p1;
                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.f35477p1);
                                                    if (viewFindChildViewById != null) {
                                                        n50 n50VarBind = n50.bind(viewFindChildViewById);
                                                        i10 = R.id.f35478p2;
                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.f35478p2);
                                                        if (viewFindChildViewById2 != null) {
                                                            n50 n50VarBind2 = n50.bind(viewFindChildViewById2);
                                                            i10 = R.id.f35479p3;
                                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.f35479p3);
                                                            if (viewFindChildViewById3 != null) {
                                                                n50 n50VarBind3 = n50.bind(viewFindChildViewById3);
                                                                i10 = R.id.f35480p4;
                                                                View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.f35480p4);
                                                                if (viewFindChildViewById4 != null) {
                                                                    n50 n50VarBind4 = n50.bind(viewFindChildViewById4);
                                                                    i10 = R.id.tv2;
                                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.tv2);
                                                                    if (imageView3 != null) {
                                                                        i10 = R.id.tv3;
                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.tv3);
                                                                        if (imageView4 != null) {
                                                                            i10 = R.id.tvCopper;
                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCopper);
                                                                            if (textView5 != null) {
                                                                                i10 = R.id.tv_gameName;
                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_gameName);
                                                                                if (textView6 != null) {
                                                                                    i10 = R.id.tv_game_state;
                                                                                    CountDownerTextView countDownerTextView = (CountDownerTextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_state);
                                                                                    if (countDownerTextView != null) {
                                                                                        i10 = R.id.tv_id;
                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_id);
                                                                                        if (textView7 != null) {
                                                                                            i10 = R.id.tv_id_label;
                                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_id_label);
                                                                                            if (textView8 != null) {
                                                                                                i10 = R.id.tv_view;
                                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_view);
                                                                                                if (textView9 != null) {
                                                                                                    i10 = R.id.waveView;
                                                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.waveView);
                                                                                                    if (imageView5 != null) {
                                                                                                        return new l50((RelativeLayout) rootView, linearLayout, imageView, imageView2, linearLayout2, linearLayout3, linearLayout4, linearLayout5, textView, textView2, textView3, textView4, n50VarBind, n50VarBind2, n50VarBind3, n50VarBind4, imageView3, imageView4, textView5, textView6, countDownerTextView, textView7, textView8, textView9, imageView5);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static l50 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41164b;
    }

    @NonNull
    public static l50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_room_list_1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
