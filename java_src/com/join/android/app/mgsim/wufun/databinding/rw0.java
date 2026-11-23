package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44542c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44545f;

    private rw0(@NonNull LinearLayout rootView, @NonNull TextView dialogButtonCancel, @NonNull TextView dialogButtonOk, @NonNull TextView dialogContent, @NonNull TextView tipTitle) {
        this.f44541b = rootView;
        this.f44542c = dialogButtonCancel;
        this.f44543d = dialogButtonOk;
        this.f44544e = dialogContent;
        this.f44545f = tipTitle;
    }

    @NonNull
    public static rw0 bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancel);
        if (textView != null) {
            i10 = R.id.dialog_button_ok;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (textView2 != null) {
                i10 = R.id.dialog_content;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                if (textView3 != null) {
                    i10 = R.id.tip_title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                    if (textView4 != null) {
                        return new rw0((LinearLayout) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44541b;
    }

    @NonNull
    public static rw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.update_choice_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
