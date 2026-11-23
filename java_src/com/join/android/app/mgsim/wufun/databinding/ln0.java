package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
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
public final class ln0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CheckBox f41421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41424g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41425h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41426i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final EditText f41427j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f41428k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ScrollView f41429l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final EditText f41430m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f41431n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final EditText f41432o;

    private ln0(@NonNull LinearLayout rootView, @NonNull TextView accoutTitle, @NonNull CheckBox agreeCheckBox, @NonNull TextView forget, @NonNull LinearLayout lLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout4, @NonNull EditText password, @NonNull Button reginButton, @NonNull ScrollView scrollView, @NonNull EditText telPhone, @NonNull TextView textView3, @NonNull EditText userName) {
        this.f41419b = rootView;
        this.f41420c = accoutTitle;
        this.f41421d = agreeCheckBox;
        this.f41422e = forget;
        this.f41423f = lLayout;
        this.f41424g = linearLayout;
        this.f41425h = linearLayout2;
        this.f41426i = linearLayout4;
        this.f41427j = password;
        this.f41428k = reginButton;
        this.f41429l = scrollView;
        this.f41430m = telPhone;
        this.f41431n = textView3;
        this.f41432o = userName;
    }

    @NonNull
    public static ln0 bind(@NonNull View rootView) {
        int i10 = R.id.accoutTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.accoutTitle);
        if (textView != null) {
            i10 = R.id.agreeCheckBox;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.agreeCheckBox);
            if (checkBox != null) {
                i10 = R.id.forget;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forget);
                if (textView2 != null) {
                    i10 = R.id.lLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lLayout);
                    if (linearLayout != null) {
                        i10 = R.id.linearLayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                        if (linearLayout2 != null) {
                            i10 = R.id.linearLayout2;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                            if (linearLayout3 != null) {
                                i10 = R.id.linearLayout4;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout4);
                                if (linearLayout4 != null) {
                                    i10 = R.id.password;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.password);
                                    if (editText != null) {
                                        i10 = R.id.reginButton;
                                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.reginButton);
                                        if (button != null) {
                                            i10 = R.id.scrollView;
                                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                                            if (scrollView != null) {
                                                i10 = R.id.telPhone;
                                                EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.telPhone);
                                                if (editText2 != null) {
                                                    i10 = R.id.textView3;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                                                    if (textView3 != null) {
                                                        i10 = R.id.userName;
                                                        EditText editText3 = (EditText) ViewBindings.findChildViewById(rootView, R.id.userName);
                                                        if (editText3 != null) {
                                                            return new ln0((LinearLayout) rootView, textView, checkBox, textView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, editText, button, scrollView, editText2, textView3, editText3);
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
    public static ln0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41419b;
    }

    @NonNull
    public static ln0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_account_regin_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
