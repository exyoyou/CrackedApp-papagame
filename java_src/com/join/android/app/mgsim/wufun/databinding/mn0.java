package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class mn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41986c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f41987d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41988e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41989f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f41990g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41991h;

    private mn0(@NonNull LinearLayout rootView, @NonNull LinearLayout linearLayout, @NonNull EditText mmsCode, @NonNull TextView phoneNumber, @NonNull TextView resendCode, @NonNull Button sendCode, @NonNull TextView textView4) {
        this.f41985b = rootView;
        this.f41986c = linearLayout;
        this.f41987d = mmsCode;
        this.f41988e = phoneNumber;
        this.f41989f = resendCode;
        this.f41990g = sendCode;
        this.f41991h = textView4;
    }

    @NonNull
    public static mn0 bind(@NonNull View rootView) {
        int i10 = R.id.linearLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
        if (linearLayout != null) {
            i10 = R.id.mmsCode;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.mmsCode);
            if (editText != null) {
                i10 = R.id.phoneNumber;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.phoneNumber);
                if (textView != null) {
                    i10 = R.id.resendCode;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.resendCode);
                    if (textView2 != null) {
                        i10 = R.id.sendCode;
                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.sendCode);
                        if (button != null) {
                            i10 = R.id.textView4;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView4);
                            if (textView3 != null) {
                                return new mn0((LinearLayout) rootView, linearLayout, editText, textView, textView2, button, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41985b;
    }

    @NonNull
    public static mn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_account_regin_sendmmscode_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
