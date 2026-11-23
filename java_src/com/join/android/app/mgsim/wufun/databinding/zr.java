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

/* JADX INFO: loaded from: classes4.dex */
public final class zr implements ViewBinding {

    @NonNull
    public final TextView A;

    @NonNull
    public final TextView B;

    @NonNull
    public final TextView C;

    @NonNull
    public final TextView D;

    @NonNull
    public final TextView E;

    @NonNull
    public final TextView F;

    @NonNull
    public final TextView G;

    @NonNull
    public final LinearLayout H;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48372c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48373d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48374e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48375f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48376g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48377h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f48378i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48379j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f48380k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f48381l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f48382m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f48383n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48384o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f48385p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48386q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f48387r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f48388s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48389t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f48390u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48391v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48392w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f48393x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f48394y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f48395z;

    private zr(@NonNull LinearLayout rootView, @NonNull TextView androdVersion, @NonNull LinearLayout androdVersionLayout, @NonNull TextView appSize, @NonNull LinearLayout backLayout, @NonNull TextView commpany, @NonNull LinearLayout commpanyLayout, @NonNull TextView downNumber, @NonNull LinearLayout downNumberLayout, @NonNull TextView downNumberTitle, @NonNull ImageView imageView5, @NonNull View layoutTop, @NonNull View lineH, @NonNull LinearLayout lookOther, @NonNull TextView message, @NonNull RelativeLayout message1, @NonNull TextView moreText, @NonNull TextView nowVersion, @NonNull LinearLayout nowVersionLayout, @NonNull TextView resousFrom, @NonNull LinearLayout resousFromLayout, @NonNull LinearLayout sizelayout, @NonNull TextView textView43, @NonNull TextView textView52, @NonNull TextView textView54, @NonNull TextView textView56, @NonNull TextView textView57, @NonNull TextView textView60, @NonNull TextView textView9, @NonNull TextView titleText, @NonNull TextView upGame, @NonNull TextView updateDate, @NonNull LinearLayout updateDateLayout) {
        this.f48371b = rootView;
        this.f48372c = androdVersion;
        this.f48373d = androdVersionLayout;
        this.f48374e = appSize;
        this.f48375f = backLayout;
        this.f48376g = commpany;
        this.f48377h = commpanyLayout;
        this.f48378i = downNumber;
        this.f48379j = downNumberLayout;
        this.f48380k = downNumberTitle;
        this.f48381l = imageView5;
        this.f48382m = layoutTop;
        this.f48383n = lineH;
        this.f48384o = lookOther;
        this.f48385p = message;
        this.f48386q = message1;
        this.f48387r = moreText;
        this.f48388s = nowVersion;
        this.f48389t = nowVersionLayout;
        this.f48390u = resousFrom;
        this.f48391v = resousFromLayout;
        this.f48392w = sizelayout;
        this.f48393x = textView43;
        this.f48394y = textView52;
        this.f48395z = textView54;
        this.A = textView56;
        this.B = textView57;
        this.C = textView60;
        this.D = textView9;
        this.E = titleText;
        this.F = upGame;
        this.G = updateDate;
        this.H = updateDateLayout;
    }

    @NonNull
    public static zr bind(@NonNull View rootView) {
        int i10 = R.id.androdVersion;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.androdVersion);
        if (textView != null) {
            i10 = R.id.androdVersionLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.androdVersionLayout);
            if (linearLayout != null) {
                i10 = R.id.appSize;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
                if (textView2 != null) {
                    i10 = R.id.backLayout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
                    if (linearLayout2 != null) {
                        i10 = R.id.commpany;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.commpany);
                        if (textView3 != null) {
                            i10 = R.id.commpanyLayout;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.commpanyLayout);
                            if (linearLayout3 != null) {
                                i10 = R.id.downNumber;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downNumber);
                                if (textView4 != null) {
                                    i10 = R.id.downNumberLayout;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.downNumberLayout);
                                    if (linearLayout4 != null) {
                                        i10 = R.id.downNumberTitle;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downNumberTitle);
                                        if (textView5 != null) {
                                            i10 = R.id.imageView5;
                                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
                                            if (imageView != null) {
                                                i10 = R.id.layoutTop;
                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                                                if (viewFindChildViewById != null) {
                                                    i10 = R.id.line_h;
                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.line_h);
                                                    if (viewFindChildViewById2 != null) {
                                                        i10 = R.id.look_other;
                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other);
                                                        if (linearLayout5 != null) {
                                                            i10 = R.id.message;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                                                            if (textView6 != null) {
                                                                i10 = R.id.message1;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.message1);
                                                                if (relativeLayout != null) {
                                                                    i10 = R.id.moreText;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText);
                                                                    if (textView7 != null) {
                                                                        i10 = R.id.nowVersion;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nowVersion);
                                                                        if (textView8 != null) {
                                                                            i10 = R.id.nowVersionLayout;
                                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.nowVersionLayout);
                                                                            if (linearLayout6 != null) {
                                                                                i10 = R.id.resousFrom;
                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.resousFrom);
                                                                                if (textView9 != null) {
                                                                                    i10 = R.id.resousFromLayout;
                                                                                    LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.resousFromLayout);
                                                                                    if (linearLayout7 != null) {
                                                                                        i10 = R.id.sizelayout;
                                                                                        LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.sizelayout);
                                                                                        if (linearLayout8 != null) {
                                                                                            i10 = R.id.textView43;
                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView43);
                                                                                            if (textView10 != null) {
                                                                                                i10 = R.id.textView52;
                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView52);
                                                                                                if (textView11 != null) {
                                                                                                    i10 = R.id.textView54;
                                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView54);
                                                                                                    if (textView12 != null) {
                                                                                                        i10 = R.id.textView56;
                                                                                                        TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView56);
                                                                                                        if (textView13 != null) {
                                                                                                            i10 = R.id.textView57;
                                                                                                            TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView57);
                                                                                                            if (textView14 != null) {
                                                                                                                i10 = R.id.textView60;
                                                                                                                TextView textView15 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView60);
                                                                                                                if (textView15 != null) {
                                                                                                                    i10 = R.id.textView9;
                                                                                                                    TextView textView16 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                                                                                                    if (textView16 != null) {
                                                                                                                        i10 = R.id.titleText;
                                                                                                                        TextView textView17 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                                                                        if (textView17 != null) {
                                                                                                                            i10 = R.id.upGame;
                                                                                                                            TextView textView18 = (TextView) ViewBindings.findChildViewById(rootView, R.id.upGame);
                                                                                                                            if (textView18 != null) {
                                                                                                                                i10 = R.id.updateDate;
                                                                                                                                TextView textView19 = (TextView) ViewBindings.findChildViewById(rootView, R.id.updateDate);
                                                                                                                                if (textView19 != null) {
                                                                                                                                    i10 = R.id.updateDateLayout;
                                                                                                                                    LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.updateDateLayout);
                                                                                                                                    if (linearLayout9 != null) {
                                                                                                                                        return new zr((LinearLayout) rootView, textView, linearLayout, textView2, linearLayout2, textView3, linearLayout3, textView4, linearLayout4, textView5, imageView, viewFindChildViewById, viewFindChildViewById2, linearLayout5, textView6, relativeLayout, textView7, textView8, linearLayout6, textView9, linearLayout7, linearLayout8, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, linearLayout9);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zr inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48371b;
    }

    @NonNull
    public static zr inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_updateinfo1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
