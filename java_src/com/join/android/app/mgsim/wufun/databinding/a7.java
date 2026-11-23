package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class a7 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f35676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final EditText f35677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35678f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ScrollView f35679g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35680h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f35681i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final Button f35682j;

    private a7(@NonNull LinearLayout rootView, @NonNull TextView getCodeTv, @NonNull EditText inputCode, @NonNull EditText inputPhone, @NonNull TextView myAccountTv, @NonNull ScrollView scrollView, @NonNull TextView securityLevel, @NonNull TextView securitySuggest, @NonNull Button settingButn) {
        this.f35674b = rootView;
        this.f35675c = getCodeTv;
        this.f35676d = inputCode;
        this.f35677e = inputPhone;
        this.f35678f = myAccountTv;
        this.f35679g = scrollView;
        this.f35680h = securityLevel;
        this.f35681i = securitySuggest;
        this.f35682j = settingButn;
    }

    @NonNull
    public static a7 bind(@NonNull View rootView) {
        int i10 = R.id.getCodeTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.getCodeTv);
        if (textView != null) {
            i10 = R.id.inputCode;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.inputCode);
            if (editText != null) {
                i10 = R.id.inputPhone;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.inputPhone);
                if (editText2 != null) {
                    i10 = R.id.myAccountTv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.myAccountTv);
                    if (textView2 != null) {
                        i10 = R.id.scrollView;
                        ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                        if (scrollView != null) {
                            i10 = R.id.securityLevel;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.securityLevel);
                            if (textView3 != null) {
                                i10 = R.id.securitySuggest;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.securitySuggest);
                                if (textView4 != null) {
                                    i10 = R.id.settingButn;
                                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.settingButn);
                                    if (button != null) {
                                        return new a7((LinearLayout) rootView, textView, editText, editText2, textView2, scrollView, textView3, textView4, button);
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
    public static a7 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35674b;
    }

    @NonNull
    public static a7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.bind_phone_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
