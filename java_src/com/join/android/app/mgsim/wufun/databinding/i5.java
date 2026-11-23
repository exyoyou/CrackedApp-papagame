package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class i5 implements ViewBinding {

    @NonNull
    public final FrameLayout A;

    @NonNull
    public final TextView B;

    @NonNull
    public final TextView C;

    @NonNull
    public final TextView D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39661d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CardView f39662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f39663f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39664g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f39665h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39666i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f39667j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f39668k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f39669l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f39670m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39671n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39672o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39673p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f39674q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f39675r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f39676s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f39677t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f39678u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f39679v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39680w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final RecyclerView f39681x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final View f39682y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f39683z;

    private i5(@NonNull ConstraintLayout rootView, @NonNull ImageView backImage, @NonNull FrameLayout cardDelete, @NonNull CardView cardRecom, @NonNull ImageView checkbox1, @NonNull ImageView checkbox2, @NonNull ImageView checkbox3, @NonNull FrameLayout flRecom, @NonNull ConstraintLayout game1, @NonNull ConstraintLayout game2, @NonNull ConstraintLayout game3, @NonNull TextView gameDesc1, @NonNull SimpleDraweeView gameIcon1, @NonNull SimpleDraweeView gameIcon2, @NonNull SimpleDraweeView gameIcon3, @NonNull TextView gameName1, @NonNull TextView gameName2, @NonNull TextView gameName3, @NonNull TextView gameStatus1, @NonNull TextView gameStatus2, @NonNull TextView gameStatus3, @NonNull RelativeLayout headview, @NonNull RecyclerView rvRecom, @NonNull View statubar, @NonNull TextView titleTextview, @NonNull FrameLayout toComment, @NonNull TextView tvDeleteAll, @NonNull TextView tvDeleteGameOnly, @NonNull TextView tvGameTag) {
        this.f39659b = rootView;
        this.f39660c = backImage;
        this.f39661d = cardDelete;
        this.f39662e = cardRecom;
        this.f39663f = checkbox1;
        this.f39664g = checkbox2;
        this.f39665h = checkbox3;
        this.f39666i = flRecom;
        this.f39667j = game1;
        this.f39668k = game2;
        this.f39669l = game3;
        this.f39670m = gameDesc1;
        this.f39671n = gameIcon1;
        this.f39672o = gameIcon2;
        this.f39673p = gameIcon3;
        this.f39674q = gameName1;
        this.f39675r = gameName2;
        this.f39676s = gameName3;
        this.f39677t = gameStatus1;
        this.f39678u = gameStatus2;
        this.f39679v = gameStatus3;
        this.f39680w = headview;
        this.f39681x = rvRecom;
        this.f39682y = statubar;
        this.f39683z = titleTextview;
        this.A = toComment;
        this.B = tvDeleteAll;
        this.C = tvDeleteGameOnly;
        this.D = tvGameTag;
    }

    @NonNull
    public static i5 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.cardDelete;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.cardDelete);
            if (frameLayout != null) {
                i10 = R.id.cardRecom;
                CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.cardRecom);
                if (cardView != null) {
                    i10 = R.id.checkbox1;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.checkbox1);
                    if (imageView2 != null) {
                        i10 = R.id.checkbox2;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.checkbox2);
                        if (imageView3 != null) {
                            i10 = R.id.checkbox3;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.checkbox3);
                            if (imageView4 != null) {
                                i10 = R.id.flRecom;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flRecom);
                                if (frameLayout2 != null) {
                                    i10 = R.id.game1;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.game1);
                                    if (constraintLayout != null) {
                                        i10 = R.id.game2;
                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.game2);
                                        if (constraintLayout2 != null) {
                                            i10 = R.id.game3;
                                            ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.game3);
                                            if (constraintLayout3 != null) {
                                                i10 = R.id.gameDesc1;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameDesc1);
                                                if (textView != null) {
                                                    i10 = R.id.gameIcon1;
                                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon1);
                                                    if (simpleDraweeView != null) {
                                                        i10 = R.id.gameIcon2;
                                                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon2);
                                                        if (simpleDraweeView2 != null) {
                                                            i10 = R.id.gameIcon3;
                                                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon3);
                                                            if (simpleDraweeView3 != null) {
                                                                i10 = R.id.gameName1;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName1);
                                                                if (textView2 != null) {
                                                                    i10 = R.id.gameName2;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName2);
                                                                    if (textView3 != null) {
                                                                        i10 = R.id.gameName3;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName3);
                                                                        if (textView4 != null) {
                                                                            i10 = R.id.gameStatus1;
                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameStatus1);
                                                                            if (textView5 != null) {
                                                                                i10 = R.id.gameStatus2;
                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameStatus2);
                                                                                if (textView6 != null) {
                                                                                    i10 = R.id.gameStatus3;
                                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameStatus3);
                                                                                    if (textView7 != null) {
                                                                                        i10 = R.id.headview;
                                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.headview);
                                                                                        if (relativeLayout != null) {
                                                                                            i10 = R.id.rvRecom;
                                                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvRecom);
                                                                                            if (recyclerView != null) {
                                                                                                i10 = R.id.statubar;
                                                                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                                                                                if (viewFindChildViewById != null) {
                                                                                                    i10 = R.id.title_textview;
                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                                                                                    if (textView8 != null) {
                                                                                                        i10 = R.id.toComment;
                                                                                                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.toComment);
                                                                                                        if (frameLayout3 != null) {
                                                                                                            i10 = R.id.tvDeleteAll;
                                                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDeleteAll);
                                                                                                            if (textView9 != null) {
                                                                                                                i10 = R.id.tvDeleteGameOnly;
                                                                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDeleteGameOnly);
                                                                                                                if (textView10 != null) {
                                                                                                                    i10 = R.id.tvGameTag;
                                                                                                                    TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameTag);
                                                                                                                    if (textView11 != null) {
                                                                                                                        return new i5((ConstraintLayout) rootView, imageView, frameLayout, cardView, imageView2, imageView3, imageView4, frameLayout2, constraintLayout, constraintLayout2, constraintLayout3, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, textView2, textView3, textView4, textView5, textView6, textView7, relativeLayout, recyclerView, viewFindChildViewById, textView8, frameLayout3, textView9, textView10, textView11);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static i5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39659b;
    }

    @NonNull
    public static i5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_uninstall_wufun_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
