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
public final class hw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final EditText f39520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f39521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ScrollView f39523f;

    private hw(@NonNull LinearLayout rootView, @NonNull EditText inputPhone, @NonNull Button insteadButn, @NonNull TextView myAccountTv, @NonNull ScrollView scrollView) {
        this.f39519b = rootView;
        this.f39520c = inputPhone;
        this.f39521d = insteadButn;
        this.f39522e = myAccountTv;
        this.f39523f = scrollView;
    }

    @NonNull
    public static hw bind(@NonNull View rootView) {
        int i10 = R.id.inputPhone;
        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.inputPhone);
        if (editText != null) {
            i10 = R.id.insteadButn;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.insteadButn);
            if (button != null) {
                i10 = R.id.myAccountTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.myAccountTv);
                if (textView != null) {
                    i10 = R.id.scrollView;
                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                    if (scrollView != null) {
                        return new hw((LinearLayout) rootView, editText, button, textView, scrollView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39519b;
    }

    @NonNull
    public static hw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.instead_phone_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
