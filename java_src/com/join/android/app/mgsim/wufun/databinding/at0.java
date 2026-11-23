package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class at0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Group f36045f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f36046g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f36047h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f36048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f36049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f36050k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LottieAnimationView f36051l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LottieAnimationView f36052m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36053n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36054o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f36055p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f36056q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RecyclerView f36057r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RecyclerView f36058s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f36059t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f36060u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final View f36061v;

    private at0(@NonNull LinearLayout rootView, @NonNull ConstraintLayout clContainer, @NonNull ConstraintLayout clEnterGame, @NonNull ConstraintLayout clGames, @NonNull Group g10, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull ImageView iv3, @NonNull ImageView ivBtn1, @NonNull ImageView ivBtn2, @NonNull LottieAnimationView lavPView, @NonNull LottieAnimationView lavView, @NonNull LinearLayout llContainer, @NonNull ConstraintLayout protocol, @NonNull ImageView protocolCheck, @NonNull View protocolCheckPlaceholder, @NonNull RecyclerView rvGame, @NonNull RecyclerView rvList, @NonNull TextView tvText3, @NonNull TextView userProtocolTxt, @NonNull View vStatus) {
        this.f36041b = rootView;
        this.f36042c = clContainer;
        this.f36043d = clEnterGame;
        this.f36044e = clGames;
        this.f36045f = g10;
        this.f36046g = iv1;
        this.f36047h = iv2;
        this.f36048i = iv3;
        this.f36049j = ivBtn1;
        this.f36050k = ivBtn2;
        this.f36051l = lavPView;
        this.f36052m = lavView;
        this.f36053n = llContainer;
        this.f36054o = protocol;
        this.f36055p = protocolCheck;
        this.f36056q = protocolCheckPlaceholder;
        this.f36057r = rvGame;
        this.f36058s = rvList;
        this.f36059t = tvText3;
        this.f36060u = userProtocolTxt;
        this.f36061v = vStatus;
    }

    @NonNull
    public static at0 bind(@NonNull View rootView) {
        int i10 = R.id.cl_container;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_container);
        if (constraintLayout != null) {
            i10 = R.id.cl_enter_game;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_enter_game);
            if (constraintLayout2 != null) {
                i10 = R.id.cl_games;
                ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_games);
                if (constraintLayout3 != null) {
                    i10 = R.id.g_1;
                    Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.g_1);
                    if (group != null) {
                        i10 = R.id.iv_1;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                        if (imageView != null) {
                            i10 = R.id.iv_2;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_2);
                            if (imageView2 != null) {
                                i10 = R.id.iv_3;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_3);
                                if (imageView3 != null) {
                                    i10 = R.id.iv_btn_1;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_btn_1);
                                    if (imageView4 != null) {
                                        i10 = R.id.iv_btn_2;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_btn_2);
                                        if (imageView5 != null) {
                                            i10 = R.id.lav_p_view;
                                            LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(rootView, R.id.lav_p_view);
                                            if (lottieAnimationView != null) {
                                                i10 = R.id.lav_view;
                                                LottieAnimationView lottieAnimationView2 = (LottieAnimationView) ViewBindings.findChildViewById(rootView, R.id.lav_view);
                                                if (lottieAnimationView2 != null) {
                                                    i10 = R.id.ll_container;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_container);
                                                    if (linearLayout != null) {
                                                        i10 = R.id.protocol;
                                                        ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.protocol);
                                                        if (constraintLayout4 != null) {
                                                            i10 = R.id.protocolCheck;
                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.protocolCheck);
                                                            if (imageView6 != null) {
                                                                i10 = R.id.protocolCheckPlaceholder;
                                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.protocolCheckPlaceholder);
                                                                if (viewFindChildViewById != null) {
                                                                    i10 = R.id.rv_game;
                                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_game);
                                                                    if (recyclerView != null) {
                                                                        i10 = R.id.rv_list;
                                                                        RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list);
                                                                        if (recyclerView2 != null) {
                                                                            i10 = R.id.tv_text_3;
                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                                                                            if (textView != null) {
                                                                                i10 = R.id.userProtocolTxt;
                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userProtocolTxt);
                                                                                if (textView2 != null) {
                                                                                    i10 = R.id.v_status;
                                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_status);
                                                                                    if (viewFindChildViewById2 != null) {
                                                                                        return new at0((LinearLayout) rootView, constraintLayout, constraintLayout2, constraintLayout3, group, imageView, imageView2, imageView3, imageView4, imageView5, lottieAnimationView, lottieAnimationView2, linearLayout, constraintLayout4, imageView6, viewFindChildViewById, recyclerView, recyclerView2, textView, textView2, viewFindChildViewById2);
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
    public static at0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36041b;
    }

    @NonNull
    public static at0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.recommend_activity_layout_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
