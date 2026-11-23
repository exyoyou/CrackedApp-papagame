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
public final class sj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f44811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f44812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44814f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44815g;

    private sj(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancle, @NonNull Button dialogButtonOk, @NonNull TextView dialogContent, @NonNull TextView textView, @NonNull TextView tipTitle) {
        this.f44810b = rootView;
        this.f44811c = dialogButtonCancle;
        this.f44812d = dialogButtonOk;
        this.f44813e = dialogContent;
        this.f44814f = textView;
        this.f44815g = tipTitle;
    }

    @NonNull
    public static sj bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancle);
        if (button != null) {
            i10 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (button2 != null) {
                i10 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                if (textView != null) {
                    i10 = R.id.textView;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                    if (textView2 != null) {
                        i10 = R.id.tip_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                        if (textView3 != null) {
                            return new sj((LinearLayout) rootView, button, button2, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44810b;
    }

    @NonNull
    public static sj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fc_notice_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
