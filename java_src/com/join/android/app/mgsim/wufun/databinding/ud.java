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
public final class ud implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f45657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final EditText f45658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f45659f;

    private ud(@NonNull LinearLayout rootView, @NonNull Button acceptBtn, @NonNull Button cancelBtn, @NonNull EditText inputTxt, @NonNull Button pasteBtn) {
        this.f45655b = rootView;
        this.f45656c = acceptBtn;
        this.f45657d = cancelBtn;
        this.f45658e = inputTxt;
        this.f45659f = pasteBtn;
    }

    @NonNull
    public static ud bind(@NonNull View rootView) {
        int i10 = R.id.acceptBtn;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.acceptBtn);
        if (button != null) {
            i10 = R.id.cancelBtn;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.cancelBtn);
            if (button2 != null) {
                i10 = R.id.inputTxt;
                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.inputTxt);
                if (editText != null) {
                    i10 = R.id.pasteBtn;
                    Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.pasteBtn);
                    if (button3 != null) {
                        return new ud((LinearLayout) rootView, button, button2, editText, button3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ud inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45655b;
    }

    @NonNull
    public static ud inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_accept_invite_fight, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
