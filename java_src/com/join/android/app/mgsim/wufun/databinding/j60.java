package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class j60 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f40106c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40107d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40109f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40110g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RadioButton f40111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RadioButton f40112i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RadioButton f40113j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RadioButton f40114k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40115l;

    private j60(@NonNull LinearLayout rootView, @NonNull FrameLayout fragShop, @NonNull LinearLayout llGood, @NonNull LinearLayout llMy, @NonNull LinearLayout llNew, @NonNull LinearLayout llZong, @NonNull RadioButton rbGood, @NonNull RadioButton rbMy, @NonNull RadioButton rbNew, @NonNull RadioButton rbZong, @NonNull RelativeLayout rlTitleshopbar) {
        this.f40105b = rootView;
        this.f40106c = fragShop;
        this.f40107d = llGood;
        this.f40108e = llMy;
        this.f40109f = llNew;
        this.f40110g = llZong;
        this.f40111h = rbGood;
        this.f40112i = rbMy;
        this.f40113j = rbNew;
        this.f40114k = rbZong;
        this.f40115l = rlTitleshopbar;
    }

    @NonNull
    public static j60 bind(@NonNull View rootView) {
        int i10 = R.id.frag_shop;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.frag_shop);
        if (frameLayout != null) {
            i10 = R.id.ll_good;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_good);
            if (linearLayout != null) {
                i10 = R.id.ll_my;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_my);
                if (linearLayout2 != null) {
                    i10 = R.id.ll_new;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_new);
                    if (linearLayout3 != null) {
                        i10 = R.id.ll_zong;
                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_zong);
                        if (linearLayout4 != null) {
                            i10 = R.id.rb_good;
                            RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_good);
                            if (radioButton != null) {
                                i10 = R.id.rb_my;
                                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_my);
                                if (radioButton2 != null) {
                                    i10 = R.id.rb_new;
                                    RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_new);
                                    if (radioButton3 != null) {
                                        i10 = R.id.rb_zong;
                                        RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_zong);
                                        if (radioButton4 != null) {
                                            i10 = R.id.rl_titleshopbar;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_titleshopbar);
                                            if (relativeLayout != null) {
                                                return new j60((LinearLayout) rootView, frameLayout, linearLayout, linearLayout2, linearLayout3, linearLayout4, radioButton, radioButton2, radioButton3, radioButton4, relativeLayout);
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
    public static j60 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40105b;
    }

    @NonNull
    public static j60 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_shop_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
