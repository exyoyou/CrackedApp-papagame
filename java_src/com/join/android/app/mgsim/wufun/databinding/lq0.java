package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lq0 implements ViewBinding {

    @NonNull
    public final TextView A;

    @NonNull
    public final RelativeLayout B;

    @NonNull
    public final RelativeLayout C;

    @NonNull
    public final RelativeLayout D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41487f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41488g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41489h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41490i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41491j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41492k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41493l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41494m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41495n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41496o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41497p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41498q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41499r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41500s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41501t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41502u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f41503v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f41504w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f41505x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f41506y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f41507z;

    private lq0(@NonNull LinearLayout rootView, @NonNull TextView appSize, @NonNull TextView appSize2, @NonNull TextView appSize3, @NonNull TextView appdescribe, @NonNull TextView appdescribe2, @NonNull TextView appdescribe3, @NonNull TextView appname, @NonNull TextView appname2, @NonNull TextView appname3, @NonNull SimpleDraweeView gameIcon, @NonNull SimpleDraweeView gameIcon2, @NonNull SimpleDraweeView gameIcon3, @NonNull LinearLayout gameLayout, @NonNull LinearLayout gameLayout2, @NonNull LinearLayout gameLayout3, @NonNull LinearLayout gamebroadcastTop, @NonNull SimpleDraweeView gamebroadcastTopImage1, @NonNull SimpleDraweeView gamebroadcastTopImage2, @NonNull SimpleDraweeView gamebroadcastTopImage3, @NonNull TextView itemInstall, @NonNull TextView itemInstall2, @NonNull TextView itemInstall3, @NonNull TextView moneyText1, @NonNull TextView moneyText2, @NonNull TextView moneyText3, @NonNull RelativeLayout rLayoutRight, @NonNull RelativeLayout rLayoutRight2, @NonNull RelativeLayout rLayoutRight3) {
        this.f41483b = rootView;
        this.f41484c = appSize;
        this.f41485d = appSize2;
        this.f41486e = appSize3;
        this.f41487f = appdescribe;
        this.f41488g = appdescribe2;
        this.f41489h = appdescribe3;
        this.f41490i = appname;
        this.f41491j = appname2;
        this.f41492k = appname3;
        this.f41493l = gameIcon;
        this.f41494m = gameIcon2;
        this.f41495n = gameIcon3;
        this.f41496o = gameLayout;
        this.f41497p = gameLayout2;
        this.f41498q = gameLayout3;
        this.f41499r = gamebroadcastTop;
        this.f41500s = gamebroadcastTopImage1;
        this.f41501t = gamebroadcastTopImage2;
        this.f41502u = gamebroadcastTopImage3;
        this.f41503v = itemInstall;
        this.f41504w = itemInstall2;
        this.f41505x = itemInstall3;
        this.f41506y = moneyText1;
        this.f41507z = moneyText2;
        this.A = moneyText3;
        this.B = rLayoutRight;
        this.C = rLayoutRight2;
        this.D = rLayoutRight3;
    }

    @NonNull
    public static lq0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.appSize2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize2);
            if (textView2 != null) {
                i10 = R.id.appSize3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize3);
                if (textView3 != null) {
                    i10 = R.id.appdescribe;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appdescribe);
                    if (textView4 != null) {
                        i10 = R.id.appdescribe2;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appdescribe2);
                        if (textView5 != null) {
                            i10 = R.id.appdescribe3;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appdescribe3);
                            if (textView6 != null) {
                                i10 = R.id.appname;
                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname);
                                if (textView7 != null) {
                                    i10 = R.id.appname2;
                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname2);
                                    if (textView8 != null) {
                                        i10 = R.id.appname3;
                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname3);
                                        if (textView9 != null) {
                                            i10 = R.id.gameIcon;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon);
                                            if (simpleDraweeView != null) {
                                                i10 = R.id.gameIcon2;
                                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon2);
                                                if (simpleDraweeView2 != null) {
                                                    i10 = R.id.gameIcon3;
                                                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon3);
                                                    if (simpleDraweeView3 != null) {
                                                        i10 = R.id.gameLayout;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameLayout);
                                                        if (linearLayout != null) {
                                                            i10 = R.id.gameLayout2;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameLayout2);
                                                            if (linearLayout2 != null) {
                                                                i10 = R.id.gameLayout3;
                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameLayout3);
                                                                if (linearLayout3 != null) {
                                                                    i10 = R.id.gamebroadcastTop;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTop);
                                                                    if (linearLayout4 != null) {
                                                                        i10 = R.id.gamebroadcastTopImage1;
                                                                        SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage1);
                                                                        if (simpleDraweeView4 != null) {
                                                                            i10 = R.id.gamebroadcastTopImage2;
                                                                            SimpleDraweeView simpleDraweeView5 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage2);
                                                                            if (simpleDraweeView5 != null) {
                                                                                i10 = R.id.gamebroadcastTopImage3;
                                                                                SimpleDraweeView simpleDraweeView6 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage3);
                                                                                if (simpleDraweeView6 != null) {
                                                                                    i10 = R.id.itemInstall;
                                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemInstall);
                                                                                    if (textView10 != null) {
                                                                                        i10 = R.id.itemInstall2;
                                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemInstall2);
                                                                                        if (textView11 != null) {
                                                                                            i10 = R.id.itemInstall3;
                                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemInstall3);
                                                                                            if (textView12 != null) {
                                                                                                i10 = R.id.moneyText1;
                                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText1);
                                                                                                if (textView13 != null) {
                                                                                                    i10 = R.id.moneyText2;
                                                                                                    TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText2);
                                                                                                    if (textView14 != null) {
                                                                                                        i10 = R.id.moneyText3;
                                                                                                        TextView textView15 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText3);
                                                                                                        if (textView15 != null) {
                                                                                                            i10 = R.id.rLayoutRight;
                                                                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rLayoutRight);
                                                                                                            if (relativeLayout != null) {
                                                                                                                i10 = R.id.rLayoutRight2;
                                                                                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rLayoutRight2);
                                                                                                                if (relativeLayout2 != null) {
                                                                                                                    i10 = R.id.rLayoutRight3;
                                                                                                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rLayoutRight3);
                                                                                                                    if (relativeLayout3 != null) {
                                                                                                                        return new lq0((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, simpleDraweeView4, simpleDraweeView5, simpleDraweeView6, textView10, textView11, textView12, textView13, textView14, textView15, relativeLayout, relativeLayout2, relativeLayout3);
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
    public static lq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41483b;
    }

    @NonNull
    public static lq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_mode_seven, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
