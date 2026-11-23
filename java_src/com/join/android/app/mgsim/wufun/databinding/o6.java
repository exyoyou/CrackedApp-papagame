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
public final class o6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ScrollView f42692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f42693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f42694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42696f;

    private o6(@NonNull ScrollView rootView, @NonNull Button btnConfirm, @NonNull EditText edit, @NonNull LinearLayout llDismiss, @NonNull LinearLayout toot) {
        this.f42692b = rootView;
        this.f42693c = btnConfirm;
        this.f42694d = edit;
        this.f42695e = llDismiss;
        this.f42696f = toot;
    }

    @NonNull
    public static o6 bind(@NonNull View rootView) {
        int i10 = R.id.btn_confirm;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_confirm);
        if (button != null) {
            i10 = R.id.edit;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.edit);
            if (editText != null) {
                i10 = R.id.ll_dismiss;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_dismiss);
                if (linearLayout != null) {
                    i10 = R.id.toot;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.toot);
                    if (linearLayout2 != null) {
                        return new o6((ScrollView) rootView, button, editText, linearLayout, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static o6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ScrollView getRoot() {
        return this.f42692b;
    }

    @NonNull
    public static o6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.appointment_pay_popwindow_page, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
