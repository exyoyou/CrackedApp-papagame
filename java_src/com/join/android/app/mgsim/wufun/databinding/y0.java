package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class y0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f47499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f47501f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47502g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47503h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RadioButton f47504i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RadioButton f47505j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RadioButton f47506k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RadioButton f47507l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RadioGroup f47508m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RadioGroup f47509n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47510o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47511p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47512q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47513r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f47514s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f47515t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f47516u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f47517v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f47518w;

    private y0(@NonNull RelativeLayout rootView, @NonNull LinearLayout archiveBack, @NonNull FrameLayout frag, @NonNull ImageView ivMyarchiveOpen, @NonNull ImageView ivShopOpen, @NonNull LinearLayout llManage, @NonNull TextView myshop, @NonNull RadioButton rbBuy, @NonNull RadioButton rbColud, @NonNull RadioButton rbLocal, @NonNull RadioButton rbRemoned, @NonNull RadioGroup rgMyarchive, @NonNull RadioGroup rgMyshop, @NonNull RelativeLayout rlBg, @NonNull RelativeLayout rlMyarchive, @NonNull RelativeLayout rlShop, @NonNull SimpleDraweeView simdw, @NonNull TextView tvManage, @NonNull TextView tvMyarchive, @NonNull TextView tvMyarchiveSize, @NonNull TextView tvRed, @NonNull TextView tvShopSize) {
        this.f47497b = rootView;
        this.f47498c = archiveBack;
        this.f47499d = frag;
        this.f47500e = ivMyarchiveOpen;
        this.f47501f = ivShopOpen;
        this.f47502g = llManage;
        this.f47503h = myshop;
        this.f47504i = rbBuy;
        this.f47505j = rbColud;
        this.f47506k = rbLocal;
        this.f47507l = rbRemoned;
        this.f47508m = rgMyarchive;
        this.f47509n = rgMyshop;
        this.f47510o = rlBg;
        this.f47511p = rlMyarchive;
        this.f47512q = rlShop;
        this.f47513r = simdw;
        this.f47514s = tvManage;
        this.f47515t = tvMyarchive;
        this.f47516u = tvMyarchiveSize;
        this.f47517v = tvRed;
        this.f47518w = tvShopSize;
    }

    @NonNull
    public static y0 bind(@NonNull View rootView) {
        int i10 = R.id.archive_back;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.archive_back);
        if (linearLayout != null) {
            i10 = R.id.frag;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.frag);
            if (frameLayout != null) {
                i10 = R.id.iv_myarchive_open;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_myarchive_open);
                if (imageView != null) {
                    i10 = R.id.iv_shop_open;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_shop_open);
                    if (imageView2 != null) {
                        i10 = R.id.ll_manage;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_manage);
                        if (linearLayout2 != null) {
                            i10 = R.id.myshop;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.myshop);
                            if (textView != null) {
                                i10 = R.id.rb_buy;
                                RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_buy);
                                if (radioButton != null) {
                                    i10 = R.id.rb_colud;
                                    RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_colud);
                                    if (radioButton2 != null) {
                                        i10 = R.id.rb_local;
                                        RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_local);
                                        if (radioButton3 != null) {
                                            i10 = R.id.rb_remoned;
                                            RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_remoned);
                                            if (radioButton4 != null) {
                                                i10 = R.id.rg_myarchive;
                                                RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, R.id.rg_myarchive);
                                                if (radioGroup != null) {
                                                    i10 = R.id.rg_myshop;
                                                    RadioGroup radioGroup2 = (RadioGroup) ViewBindings.findChildViewById(rootView, R.id.rg_myshop);
                                                    if (radioGroup2 != null) {
                                                        i10 = R.id.rl_bg;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_bg);
                                                        if (relativeLayout != null) {
                                                            i10 = R.id.rl_myarchive;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_myarchive);
                                                            if (relativeLayout2 != null) {
                                                                i10 = R.id.rl_shop;
                                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_shop);
                                                                if (relativeLayout3 != null) {
                                                                    i10 = R.id.simdw;
                                                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.simdw);
                                                                    if (simpleDraweeView != null) {
                                                                        i10 = R.id.tv_manage;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_manage);
                                                                        if (textView2 != null) {
                                                                            i10 = R.id.tv_myarchive;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_myarchive);
                                                                            if (textView3 != null) {
                                                                                i10 = R.id.tv_myarchive_size;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_myarchive_size);
                                                                                if (textView4 != null) {
                                                                                    i10 = R.id.tv_red;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_red);
                                                                                    if (textView5 != null) {
                                                                                        i10 = R.id.tv_shop_size;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_shop_size);
                                                                                        if (textView6 != null) {
                                                                                            return new y0((RelativeLayout) rootView, linearLayout, frameLayout, imageView, imageView2, linearLayout2, textView, radioButton, radioButton2, radioButton3, radioButton4, radioGroup, radioGroup2, relativeLayout, relativeLayout2, relativeLayout3, simpleDraweeView, textView2, textView3, textView4, textView5, textView6);
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
    public static y0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47497b;
    }

    @NonNull
    public static y0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_document_manage, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
