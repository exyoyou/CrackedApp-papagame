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
public final class vq implements ViewBinding {

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
    public final LinearLayout G;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46393d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46394e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46395f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46396g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46397h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46398i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46399j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46400k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f46401l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f46402m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f46403n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46404o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46405p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f46406q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f46407r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46408s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f46409t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46410u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46411v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f46412w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f46413x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f46414y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f46415z;

    private vq(@NonNull LinearLayout rootView, @NonNull TextView androdVersion, @NonNull LinearLayout androdVersionLayout, @NonNull TextView appSize, @NonNull LinearLayout backLayout, @NonNull TextView commpany, @NonNull LinearLayout commpanyLayout, @NonNull TextView downNumber, @NonNull LinearLayout downNumberLayout, @NonNull TextView downNumberTitle, @NonNull ImageView imageView5, @NonNull View layoutTop, @NonNull View lineH, @NonNull LinearLayout lookOther, @NonNull RelativeLayout message, @NonNull TextView moreText, @NonNull TextView nowVersion, @NonNull LinearLayout nowVersionLayout, @NonNull TextView resousFrom, @NonNull LinearLayout resousFromLayout, @NonNull LinearLayout sizelayout, @NonNull TextView textView43, @NonNull TextView textView52, @NonNull TextView textView54, @NonNull TextView textView56, @NonNull TextView textView57, @NonNull TextView textView60, @NonNull TextView textView9, @NonNull TextView titleText, @NonNull TextView upGame, @NonNull TextView updateDate, @NonNull LinearLayout updateDateLayout) {
        this.f46391b = rootView;
        this.f46392c = androdVersion;
        this.f46393d = androdVersionLayout;
        this.f46394e = appSize;
        this.f46395f = backLayout;
        this.f46396g = commpany;
        this.f46397h = commpanyLayout;
        this.f46398i = downNumber;
        this.f46399j = downNumberLayout;
        this.f46400k = downNumberTitle;
        this.f46401l = imageView5;
        this.f46402m = layoutTop;
        this.f46403n = lineH;
        this.f46404o = lookOther;
        this.f46405p = message;
        this.f46406q = moreText;
        this.f46407r = nowVersion;
        this.f46408s = nowVersionLayout;
        this.f46409t = resousFrom;
        this.f46410u = resousFromLayout;
        this.f46411v = sizelayout;
        this.f46412w = textView43;
        this.f46413x = textView52;
        this.f46414y = textView54;
        this.f46415z = textView56;
        this.A = textView57;
        this.B = textView60;
        this.C = textView9;
        this.D = titleText;
        this.E = upGame;
        this.F = updateDate;
        this.G = updateDateLayout;
    }

    @NonNull
    public static vq bind(@NonNull View rootView) {
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
                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.message);
                                                            if (relativeLayout != null) {
                                                                i10 = R.id.moreText;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.nowVersion;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nowVersion);
                                                                    if (textView7 != null) {
                                                                        i10 = R.id.nowVersionLayout;
                                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.nowVersionLayout);
                                                                        if (linearLayout6 != null) {
                                                                            i10 = R.id.resousFrom;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.resousFrom);
                                                                            if (textView8 != null) {
                                                                                i10 = R.id.resousFromLayout;
                                                                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.resousFromLayout);
                                                                                if (linearLayout7 != null) {
                                                                                    i10 = R.id.sizelayout;
                                                                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.sizelayout);
                                                                                    if (linearLayout8 != null) {
                                                                                        i10 = R.id.textView43;
                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView43);
                                                                                        if (textView9 != null) {
                                                                                            i10 = R.id.textView52;
                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView52);
                                                                                            if (textView10 != null) {
                                                                                                i10 = R.id.textView54;
                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView54);
                                                                                                if (textView11 != null) {
                                                                                                    i10 = R.id.textView56;
                                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView56);
                                                                                                    if (textView12 != null) {
                                                                                                        i10 = R.id.textView57;
                                                                                                        TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView57);
                                                                                                        if (textView13 != null) {
                                                                                                            i10 = R.id.textView60;
                                                                                                            TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView60);
                                                                                                            if (textView14 != null) {
                                                                                                                i10 = R.id.textView9;
                                                                                                                TextView textView15 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                                                                                                if (textView15 != null) {
                                                                                                                    i10 = R.id.titleText;
                                                                                                                    TextView textView16 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                                                                    if (textView16 != null) {
                                                                                                                        i10 = R.id.upGame;
                                                                                                                        TextView textView17 = (TextView) ViewBindings.findChildViewById(rootView, R.id.upGame);
                                                                                                                        if (textView17 != null) {
                                                                                                                            i10 = R.id.updateDate;
                                                                                                                            TextView textView18 = (TextView) ViewBindings.findChildViewById(rootView, R.id.updateDate);
                                                                                                                            if (textView18 != null) {
                                                                                                                                i10 = R.id.updateDateLayout;
                                                                                                                                LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.updateDateLayout);
                                                                                                                                if (linearLayout9 != null) {
                                                                                                                                    return new vq((LinearLayout) rootView, textView, linearLayout, textView2, linearLayout2, textView3, linearLayout3, textView4, linearLayout4, textView5, imageView, viewFindChildViewById, viewFindChildViewById2, linearLayout5, relativeLayout, textView6, textView7, linearLayout6, textView8, linearLayout7, linearLayout8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, linearLayout9);
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
    public static vq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46391b;
    }

    @NonNull
    public static vq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_gamedetialsimple, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
