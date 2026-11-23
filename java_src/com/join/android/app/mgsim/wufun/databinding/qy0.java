package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
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
public final class qy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44108f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44109g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44110h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44111i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final EditText f44112j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final EditText f44113k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44114l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44115m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44116n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final CheckBox f44117o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f44118p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f44119q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f44120r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f44121s;

    private qy0(@NonNull LinearLayout rootView, @NonNull ImageView back, @NonNull TextView bindmessage, @NonNull TextView checkBox, @NonNull ImageView clear, @NonNull RelativeLayout codeLayout, @NonNull TextView fergetPass, @NonNull TextView getCode, @NonNull EditText inputCode, @NonNull EditText inputPass, @NonNull TextView loginMessage, @NonNull RelativeLayout passLayout, @NonNull LinearLayout permissLayout, @NonNull CheckBox seePass, @NonNull TextView sendLogin, @NonNull TextView shengming, @NonNull TextView titleMessage, @NonNull TextView xieyi) {
        this.f44104b = rootView;
        this.f44105c = back;
        this.f44106d = bindmessage;
        this.f44107e = checkBox;
        this.f44108f = clear;
        this.f44109g = codeLayout;
        this.f44110h = fergetPass;
        this.f44111i = getCode;
        this.f44112j = inputCode;
        this.f44113k = inputPass;
        this.f44114l = loginMessage;
        this.f44115m = passLayout;
        this.f44116n = permissLayout;
        this.f44117o = seePass;
        this.f44118p = sendLogin;
        this.f44119q = shengming;
        this.f44120r = titleMessage;
        this.f44121s = xieyi;
    }

    @NonNull
    public static qy0 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (imageView != null) {
            i10 = R.id.bindmessage;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.bindmessage);
            if (textView != null) {
                i10 = R.id.checkBox;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.checkBox);
                if (textView2 != null) {
                    i10 = R.id.clear;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.clear);
                    if (imageView2 != null) {
                        i10 = R.id.codeLayout;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.codeLayout);
                        if (relativeLayout != null) {
                            i10 = R.id.fergetPass;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.fergetPass);
                            if (textView3 != null) {
                                i10 = R.id.getCode;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.getCode);
                                if (textView4 != null) {
                                    i10 = R.id.inputCode;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.inputCode);
                                    if (editText != null) {
                                        i10 = R.id.inputPass;
                                        EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.inputPass);
                                        if (editText2 != null) {
                                            i10 = R.id.loginMessage;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loginMessage);
                                            if (textView5 != null) {
                                                i10 = R.id.passLayout;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.passLayout);
                                                if (relativeLayout2 != null) {
                                                    i10 = R.id.permissLayout;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.permissLayout);
                                                    if (linearLayout != null) {
                                                        i10 = R.id.seePass;
                                                        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.seePass);
                                                        if (checkBox != null) {
                                                            i10 = R.id.sendLogin;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sendLogin);
                                                            if (textView6 != null) {
                                                                i10 = R.id.shengming;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shengming);
                                                                if (textView7 != null) {
                                                                    i10 = R.id.titleMessage;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleMessage);
                                                                    if (textView8 != null) {
                                                                        i10 = R.id.xieyi;
                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.xieyi);
                                                                        if (textView9 != null) {
                                                                            return new qy0((LinearLayout) rootView, imageView, textView, textView2, imageView2, relativeLayout, textView3, textView4, editText, editText2, textView5, relativeLayout2, linearLayout, checkBox, textView6, textView7, textView8, textView9);
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
    public static qy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44104b;
    }

    @NonNull
    public static qy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.wufunlogin_inputpass_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
