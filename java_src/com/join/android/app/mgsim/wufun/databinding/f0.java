package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class f0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f38184c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CardView f38185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CardView f38186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CardView f38187f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38188g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f38189h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38190i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f38191j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f38192k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f38193l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38194m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38195n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38196o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38197p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f38198q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f38199r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f38200s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f38201t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f38202u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f38203v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f38204w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f38205x;

    private f0(@NonNull LinearLayout rootView, @NonNull Button btnNext, @NonNull CardView cvBoss, @NonNull CardView cvGame, @NonNull CardView cvTime, @NonNull ImageView ivArchiveImage, @NonNull ImageView ivArrow, @NonNull ImageView ivArrowGame, @NonNull ImageView ivBack, @NonNull ImageView ivDeleteSlot, @NonNull ImageView ivQuestion, @NonNull LinearLayout llBossInfo, @NonNull LinearLayout llChooseSlot, @NonNull RelativeLayout rlSlot, @NonNull SimpleDraweeView sdvImageGame, @NonNull TextView tvBossSubTitle, @NonNull TextView tvBossTitle, @NonNull TextView tvChooseBoos, @NonNull TextView tvChooseGame, @NonNull TextView tvCustomer, @NonNull TextView tvTime, @NonNull TextView tvTimeLabel, @NonNull TextView tvTitle) {
        this.f38183b = rootView;
        this.f38184c = btnNext;
        this.f38185d = cvBoss;
        this.f38186e = cvGame;
        this.f38187f = cvTime;
        this.f38188g = ivArchiveImage;
        this.f38189h = ivArrow;
        this.f38190i = ivArrowGame;
        this.f38191j = ivBack;
        this.f38192k = ivDeleteSlot;
        this.f38193l = ivQuestion;
        this.f38194m = llBossInfo;
        this.f38195n = llChooseSlot;
        this.f38196o = rlSlot;
        this.f38197p = sdvImageGame;
        this.f38198q = tvBossSubTitle;
        this.f38199r = tvBossTitle;
        this.f38200s = tvChooseBoos;
        this.f38201t = tvChooseGame;
        this.f38202u = tvCustomer;
        this.f38203v = tvTime;
        this.f38204w = tvTimeLabel;
        this.f38205x = tvTitle;
    }

    @NonNull
    public static f0 bind(@NonNull View rootView) {
        int i10 = R.id.btn_next;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_next);
        if (button != null) {
            i10 = R.id.cv_boss;
            CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.cv_boss);
            if (cardView != null) {
                i10 = R.id.cv_game;
                CardView cardView2 = (CardView) ViewBindings.findChildViewById(rootView, R.id.cv_game);
                if (cardView2 != null) {
                    i10 = R.id.cv_time;
                    CardView cardView3 = (CardView) ViewBindings.findChildViewById(rootView, R.id.cv_time);
                    if (cardView3 != null) {
                        i10 = R.id.iv_archive_image;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_archive_image);
                        if (imageView != null) {
                            i10 = R.id.iv_arrow;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_arrow);
                            if (imageView2 != null) {
                                i10 = R.id.iv_arrow_game;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_arrow_game);
                                if (imageView3 != null) {
                                    i10 = R.id.iv_back;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_back);
                                    if (imageView4 != null) {
                                        i10 = R.id.iv_delete_slot;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_delete_slot);
                                        if (imageView5 != null) {
                                            i10 = R.id.iv_question;
                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_question);
                                            if (imageView6 != null) {
                                                i10 = R.id.ll_boss_info;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_boss_info);
                                                if (linearLayout != null) {
                                                    i10 = R.id.ll_choose_slot;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_choose_slot);
                                                    if (linearLayout2 != null) {
                                                        i10 = R.id.rl_slot;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_slot);
                                                        if (relativeLayout != null) {
                                                            i10 = R.id.sdv_image_game;
                                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image_game);
                                                            if (simpleDraweeView != null) {
                                                                i10 = R.id.tv_boss_sub_title;
                                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_boss_sub_title);
                                                                if (textView != null) {
                                                                    i10 = R.id.tv_boss_title;
                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_boss_title);
                                                                    if (textView2 != null) {
                                                                        i10 = R.id.tv_choose_boos;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_choose_boos);
                                                                        if (textView3 != null) {
                                                                            i10 = R.id.tv_choose_game;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_choose_game);
                                                                            if (textView4 != null) {
                                                                                i10 = R.id.tv_customer;
                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_customer);
                                                                                if (textView5 != null) {
                                                                                    i10 = R.id.tv_time;
                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time);
                                                                                    if (textView6 != null) {
                                                                                        i10 = R.id.tv_time_label;
                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time_label);
                                                                                        if (textView7 != null) {
                                                                                            i10 = R.id.tv_title;
                                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                                                                                            if (textView8 != null) {
                                                                                                return new f0((LinearLayout) rootView, button, cardView, cardView2, cardView3, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, linearLayout, linearLayout2, relativeLayout, simpleDraweeView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
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
    public static f0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38183b;
    }

    @NonNull
    public static f0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_create_end_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
