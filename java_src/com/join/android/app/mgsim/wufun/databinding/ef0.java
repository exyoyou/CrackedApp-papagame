package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ef0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37942c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f37943d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final EditText f37944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final EditText f37945f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final EditText f37946g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ScrollView f37947h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Button f37948i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final EditText f37949j;

    private ef0(@NonNull LinearLayout rootView, @NonNull LinearLayout alternative, @NonNull Button getValidateCode, @NonNull EditText nickname, @NonNull EditText password, @NonNull EditText phone, @NonNull ScrollView scrollView, @NonNull Button submit, @NonNull EditText validateCode) {
        this.f37941b = rootView;
        this.f37942c = alternative;
        this.f37943d = getValidateCode;
        this.f37944e = nickname;
        this.f37945f = password;
        this.f37946g = phone;
        this.f37947h = scrollView;
        this.f37948i = submit;
        this.f37949j = validateCode;
    }

    @NonNull
    public static ef0 bind(@NonNull View rootView) {
        int i10 = R.id.alternative;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.alternative);
        if (linearLayout != null) {
            i10 = R.id.getValidateCode;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.getValidateCode);
            if (button != null) {
                i10 = R.id.nickname;
                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.nickname);
                if (editText != null) {
                    i10 = R.id.password;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.password);
                    if (editText2 != null) {
                        i10 = R.id.phone;
                        EditText editText3 = (EditText) ViewBindings.findChildViewById(rootView, R.id.phone);
                        if (editText3 != null) {
                            i10 = R.id.scrollView;
                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                            if (scrollView != null) {
                                i10 = R.id.submit;
                                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.submit);
                                if (button2 != null) {
                                    i10 = R.id.validateCode;
                                    EditText editText4 = (EditText) ViewBindings.findChildViewById(rootView, R.id.validateCode);
                                    if (editText4 != null) {
                                        return new ef0((LinearLayout) rootView, linearLayout, button, editText, editText2, editText3, scrollView, button2, editText4);
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
    public static ef0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37941b;
    }

    @NonNull
    public static ef0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_account_upgrade, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
