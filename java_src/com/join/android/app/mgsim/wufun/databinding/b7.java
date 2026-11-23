package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
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
public final class b7 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f36244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36246f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36247g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36248h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36249i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final EditText f36250j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36251k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final EditText f36252l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final EditText f36253m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f36254n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36255o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36256p;

    private b7(@NonNull RelativeLayout rootView, @NonNull LinearLayout changeNickNameLayout, @NonNull EditText code, @NonNull TextView codeTime, @NonNull LinearLayout editPhone, @NonNull TextView hintPhone, @NonNull TextView nextStep, @NonNull TextView nextStep2, @NonNull EditText nickName, @NonNull TextView nickNameBution, @NonNull EditText password, @NonNull EditText phoneNumber, @NonNull TextView phoneShow, @NonNull LinearLayout setPassLayout, @NonNull SimpleDraweeView userIcon) {
        this.f36242b = rootView;
        this.f36243c = changeNickNameLayout;
        this.f36244d = code;
        this.f36245e = codeTime;
        this.f36246f = editPhone;
        this.f36247g = hintPhone;
        this.f36248h = nextStep;
        this.f36249i = nextStep2;
        this.f36250j = nickName;
        this.f36251k = nickNameBution;
        this.f36252l = password;
        this.f36253m = phoneNumber;
        this.f36254n = phoneShow;
        this.f36255o = setPassLayout;
        this.f36256p = userIcon;
    }

    @NonNull
    public static b7 bind(@NonNull View rootView) {
        int i10 = R.id.changeNickNameLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.changeNickNameLayout);
        if (linearLayout != null) {
            i10 = R.id.code;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.code);
            if (editText != null) {
                i10 = R.id.codeTime;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.codeTime);
                if (textView != null) {
                    i10 = R.id.editPhone;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.editPhone);
                    if (linearLayout2 != null) {
                        i10 = R.id.hintPhone;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.hintPhone);
                        if (textView2 != null) {
                            i10 = R.id.nextStep;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nextStep);
                            if (textView3 != null) {
                                i10 = R.id.nextStep2;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nextStep2);
                                if (textView4 != null) {
                                    i10 = R.id.nickName;
                                    EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.nickName);
                                    if (editText2 != null) {
                                        i10 = R.id.nickNameBution;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nickNameBution);
                                        if (textView5 != null) {
                                            i10 = R.id.password;
                                            EditText editText3 = (EditText) ViewBindings.findChildViewById(rootView, R.id.password);
                                            if (editText3 != null) {
                                                i10 = R.id.phoneNumber;
                                                EditText editText4 = (EditText) ViewBindings.findChildViewById(rootView, R.id.phoneNumber);
                                                if (editText4 != null) {
                                                    i10 = R.id.phoneShow;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.phoneShow);
                                                    if (textView6 != null) {
                                                        i10 = R.id.setPassLayout;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.setPassLayout);
                                                        if (linearLayout3 != null) {
                                                            i10 = R.id.userIcon;
                                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                                                            if (simpleDraweeView != null) {
                                                                return new b7((RelativeLayout) rootView, linearLayout, editText, textView, linearLayout2, textView2, textView3, textView4, editText2, textView5, editText3, editText4, textView6, linearLayout3, simpleDraweeView);
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
    public static b7 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36242b;
    }

    @NonNull
    public static b7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.bind_phone_activity_new, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
