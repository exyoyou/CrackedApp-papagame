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
public final class kl0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40852g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40853h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40854i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40855j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40856k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40857l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40858m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f40859n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f40860o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40861p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f40862q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f40863r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40864s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40865t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40866u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f40867v;

    private kl0(@NonNull LinearLayout rootView, @NonNull LinearLayout everdayGame, @NonNull TextView everdayNewnumber, @NonNull TextView everdayNewtime, @NonNull TextView fightAppname, @NonNull SimpleDraweeView fightappImage, @NonNull SimpleDraweeView game1, @NonNull SimpleDraweeView game2, @NonNull SimpleDraweeView game3, @NonNull RelativeLayout localfightLayout, @NonNull LinearLayout main, @NonNull SimpleDraweeView recomenRightImage, @NonNull TextView recomenRightLabel, @NonNull TextView recomenRightName, @NonNull SimpleDraweeView recomenTopImage, @NonNull TextView recomenTopName, @NonNull TextView recomenTopSubTitle, @NonNull RelativeLayout recommendRight, @NonNull RelativeLayout recommendTop, @NonNull LinearLayout updatedmore, @NonNull TextView xxxx) {
        this.f40847b = rootView;
        this.f40848c = everdayGame;
        this.f40849d = everdayNewnumber;
        this.f40850e = everdayNewtime;
        this.f40851f = fightAppname;
        this.f40852g = fightappImage;
        this.f40853h = game1;
        this.f40854i = game2;
        this.f40855j = game3;
        this.f40856k = localfightLayout;
        this.f40857l = main;
        this.f40858m = recomenRightImage;
        this.f40859n = recomenRightLabel;
        this.f40860o = recomenRightName;
        this.f40861p = recomenTopImage;
        this.f40862q = recomenTopName;
        this.f40863r = recomenTopSubTitle;
        this.f40864s = recommendRight;
        this.f40865t = recommendTop;
        this.f40866u = updatedmore;
        this.f40867v = xxxx;
    }

    @NonNull
    public static kl0 bind(@NonNull View rootView) {
        int i10 = R.id.everdayGame;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.everdayGame);
        if (linearLayout != null) {
            i10 = R.id.everday_newnumber;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.everday_newnumber);
            if (textView != null) {
                i10 = R.id.everday_newtime;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.everday_newtime);
                if (textView2 != null) {
                    i10 = R.id.fight_appname;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.fight_appname);
                    if (textView3 != null) {
                        i10 = R.id.fightapp_image;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.fightapp_image);
                        if (simpleDraweeView != null) {
                            i10 = R.id.game1;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.game1);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.game2;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.game2);
                                if (simpleDraweeView3 != null) {
                                    i10 = R.id.game3;
                                    SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.game3);
                                    if (simpleDraweeView4 != null) {
                                        i10 = R.id.localfight_layout;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.localfight_layout);
                                        if (relativeLayout != null) {
                                            LinearLayout linearLayout2 = (LinearLayout) rootView;
                                            i10 = R.id.recomenRightImage;
                                            SimpleDraweeView simpleDraweeView5 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.recomenRightImage);
                                            if (simpleDraweeView5 != null) {
                                                i10 = R.id.recomenRightLabel;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.recomenRightLabel);
                                                if (textView4 != null) {
                                                    i10 = R.id.recomenRightName;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.recomenRightName);
                                                    if (textView5 != null) {
                                                        i10 = R.id.recomenTopImage;
                                                        SimpleDraweeView simpleDraweeView6 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.recomenTopImage);
                                                        if (simpleDraweeView6 != null) {
                                                            i10 = R.id.recomenTopName;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.recomenTopName);
                                                            if (textView6 != null) {
                                                                i10 = R.id.recomenTopSubTitle;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.recomenTopSubTitle);
                                                                if (textView7 != null) {
                                                                    i10 = R.id.recommendRight;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.recommendRight);
                                                                    if (relativeLayout2 != null) {
                                                                        i10 = R.id.recommendTop;
                                                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.recommendTop);
                                                                        if (relativeLayout3 != null) {
                                                                            i10 = R.id.updatedmore;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.updatedmore);
                                                                            if (linearLayout3 != null) {
                                                                                i10 = R.id.xxxx;
                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.xxxx);
                                                                                if (textView8 != null) {
                                                                                    return new kl0(linearLayout2, linearLayout, textView, textView2, textView3, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, relativeLayout, linearLayout2, simpleDraweeView5, textView4, textView5, simpleDraweeView6, textView6, textView7, relativeLayout2, relativeLayout3, linearLayout3, textView8);
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
    public static kl0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40847b;
    }

    @NonNull
    public static kl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_localfight_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
