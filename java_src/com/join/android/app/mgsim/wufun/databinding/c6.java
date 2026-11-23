package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class c6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f36785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f36786d;

    private c6(@NonNull LinearLayout rootView, @NonNull Button btnDialogCancel, @NonNull Button btnDialogOk) {
        this.f36784b = rootView;
        this.f36785c = btnDialogCancel;
        this.f36786d = btnDialogOk;
    }

    @NonNull
    public static c6 bind(@NonNull View rootView) {
        int i10 = R.id.btn_dialog_cancel;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_dialog_cancel);
        if (button != null) {
            i10 = R.id.btn_dialog_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_dialog_ok);
            if (button2 != null) {
                return new c6((LinearLayout) rootView, button, button2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static c6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36784b;
    }

    @NonNull
    public static c6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.alert_foot_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
