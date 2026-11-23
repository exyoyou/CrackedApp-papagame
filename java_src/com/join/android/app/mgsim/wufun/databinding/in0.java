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
public final class in0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f39891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f39892d;

    private in0(@NonNull LinearLayout rootView, @NonNull Button getpassByPhoneNumber, @NonNull EditText phoneText) {
        this.f39890b = rootView;
        this.f39891c = getpassByPhoneNumber;
        this.f39892d = phoneText;
    }

    @NonNull
    public static in0 bind(@NonNull View rootView) {
        int i10 = R.id.getpassByPhoneNumber;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.getpassByPhoneNumber);
        if (button != null) {
            i10 = R.id.phoneText;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.phoneText);
            if (editText != null) {
                return new in0((LinearLayout) rootView, button, editText);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static in0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39890b;
    }

    @NonNull
    public static in0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_account_forgetpass_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
