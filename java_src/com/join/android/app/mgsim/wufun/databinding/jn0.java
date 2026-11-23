package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f40320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f40321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final EditText f40322f;

    private jn0(@NonNull LinearLayout rootView, @NonNull LinearLayout linearLayout3, @NonNull EditText newPass, @NonNull Button okChange, @NonNull EditText reWhitePass) {
        this.f40318b = rootView;
        this.f40319c = linearLayout3;
        this.f40320d = newPass;
        this.f40321e = okChange;
        this.f40322f = reWhitePass;
    }

    @NonNull
    public static jn0 bind(@NonNull View rootView) {
        int i10 = R.id.linearLayout3;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout3);
        if (linearLayout != null) {
            i10 = R.id.newPass;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.newPass);
            if (editText != null) {
                i10 = R.id.okChange;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.okChange);
                if (button != null) {
                    i10 = R.id.reWhitePass;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.reWhitePass);
                    if (editText2 != null) {
                        return new jn0((LinearLayout) rootView, linearLayout, editText, button, editText2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40318b;
    }

    @NonNull
    public static jn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_account_getpassbyphone, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
