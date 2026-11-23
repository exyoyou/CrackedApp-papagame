package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class kn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CheckBox f40881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f40884f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f40885g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f40886h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40887i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final EditText f40888j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40889k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ScrollView f40890l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f40891m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f40892n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f40893o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f40894p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final EditText f40895q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f40896r;

    private kn0(@NonNull RelativeLayout rootView, @NonNull CheckBox checkBox, @NonNull TextView fergetbutn, @NonNull LinearLayout linearLayout, @NonNull ImageView loginQQ, @NonNull ImageView loginWechat, @NonNull ImageView loginWeibo, @NonNull TextView loginbutn, @NonNull EditText password, @NonNull TextView passwordTitle, @NonNull ScrollView scrollView, @NonNull TextView shengming, @NonNull TextView signUp, @NonNull TextView textView20, @NonNull TextView userNameTitle, @NonNull EditText username, @NonNull TextView xieyi) {
        this.f40880b = rootView;
        this.f40881c = checkBox;
        this.f40882d = fergetbutn;
        this.f40883e = linearLayout;
        this.f40884f = loginQQ;
        this.f40885g = loginWechat;
        this.f40886h = loginWeibo;
        this.f40887i = loginbutn;
        this.f40888j = password;
        this.f40889k = passwordTitle;
        this.f40890l = scrollView;
        this.f40891m = shengming;
        this.f40892n = signUp;
        this.f40893o = textView20;
        this.f40894p = userNameTitle;
        this.f40895q = username;
        this.f40896r = xieyi;
    }

    @NonNull
    public static kn0 bind(@NonNull View rootView) {
        int i10 = R.id.checkBox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkBox);
        if (checkBox != null) {
            i10 = R.id.fergetbutn;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.fergetbutn);
            if (textView != null) {
                i10 = R.id.linearLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                if (linearLayout != null) {
                    i10 = R.id.loginQQ;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.loginQQ);
                    if (imageView != null) {
                        i10 = R.id.loginWechat;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.loginWechat);
                        if (imageView2 != null) {
                            i10 = R.id.loginWeibo;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.loginWeibo);
                            if (imageView3 != null) {
                                i10 = R.id.loginbutn;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loginbutn);
                                if (textView2 != null) {
                                    i10 = R.id.password;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.password);
                                    if (editText != null) {
                                        i10 = R.id.passwordTitle;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.passwordTitle);
                                        if (textView3 != null) {
                                            i10 = R.id.scrollView;
                                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                                            if (scrollView != null) {
                                                i10 = R.id.shengming;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shengming);
                                                if (textView4 != null) {
                                                    i10 = R.id.signUp;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.signUp);
                                                    if (textView5 != null) {
                                                        i10 = R.id.textView20;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView20);
                                                        if (textView6 != null) {
                                                            i10 = R.id.userNameTitle;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userNameTitle);
                                                            if (textView7 != null) {
                                                                i10 = R.id.username;
                                                                EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.username);
                                                                if (editText2 != null) {
                                                                    i10 = R.id.xieyi;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.xieyi);
                                                                    if (textView8 != null) {
                                                                        return new kn0((RelativeLayout) rootView, checkBox, textView, linearLayout, imageView, imageView2, imageView3, textView2, editText, textView3, scrollView, textView4, textView5, textView6, textView7, editText2, textView8);
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
    public static kn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40880b;
    }

    @NonNull
    public static kn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_account_login_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
