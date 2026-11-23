package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f48242c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f48243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48244e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Spinner f48245f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48246g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final EditText f48247h;

    private zh0(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancle, @NonNull Button dialogButtonOk, @NonNull TextView dialogContent, @NonNull Spinner spinner, @NonNull TextView tipTitle, @NonNull EditText txt) {
        this.f48241b = rootView;
        this.f48242c = dialogButtonCancle;
        this.f48243d = dialogButtonOk;
        this.f48244e = dialogContent;
        this.f48245f = spinner;
        this.f48246g = tipTitle;
        this.f48247h = txt;
    }

    @NonNull
    public static zh0 bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancle);
        if (button != null) {
            i10 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (button2 != null) {
                i10 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                if (textView != null) {
                    i10 = R.id.spinner;
                    Spinner spinner = (Spinner) ViewBindings.findChildViewById(rootView, R.id.spinner);
                    if (spinner != null) {
                        i10 = R.id.tip_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                        if (textView2 != null) {
                            i10 = R.id.txt;
                            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.txt);
                            if (editText != null) {
                                return new zh0((LinearLayout) rootView, button, button2, textView, spinner, textView2, editText);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48241b;
    }

    @NonNull
    public static zh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_gag_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
