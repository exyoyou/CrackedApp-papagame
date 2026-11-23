package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class g8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f38751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38753f;

    private g8(@NonNull LinearLayout rootView, @NonNull TextView changeNickNameNotice, @NonNull EditText name, @NonNull TextView savebutn, @NonNull TextView textView2) {
        this.f38749b = rootView;
        this.f38750c = changeNickNameNotice;
        this.f38751d = name;
        this.f38752e = savebutn;
        this.f38753f = textView2;
    }

    @NonNull
    public static g8 bind(@NonNull View rootView) {
        int i10 = R.id.changeNickNameNotice;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.changeNickNameNotice);
        if (textView != null) {
            i10 = R.id.name;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.name);
            if (editText != null) {
                i10 = R.id.savebutn;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.savebutn);
                if (textView2 != null) {
                    i10 = R.id.textView2;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                    if (textView3 != null) {
                        return new g8((LinearLayout) rootView, textView, editText, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static g8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38749b;
    }

    @NonNull
    public static g8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.change_name_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
