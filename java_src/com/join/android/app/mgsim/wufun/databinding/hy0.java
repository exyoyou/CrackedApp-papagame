package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f39549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f39550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39551f;

    private hy0(@NonNull LinearLayout rootView, @NonNull TextView content, @NonNull Button dialogButtonCancel, @NonNull Button dialogButtonOk, @NonNull TextView tipTitle) {
        this.f39547b = rootView;
        this.f39548c = content;
        this.f39549d = dialogButtonCancel;
        this.f39550e = dialogButtonOk;
        this.f39551f = tipTitle;
    }

    @NonNull
    public static hy0 bind(@NonNull View rootView) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (textView != null) {
            i10 = R.id.dialog_button_cancel;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancel);
            if (button != null) {
                i10 = R.id.dialog_button_ok;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
                if (button2 != null) {
                    i10 = R.id.tip_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                    if (textView2 != null) {
                        return new hy0((LinearLayout) rootView, textView, button, button2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39547b;
    }

    @NonNull
    public static hy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.white_back_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
