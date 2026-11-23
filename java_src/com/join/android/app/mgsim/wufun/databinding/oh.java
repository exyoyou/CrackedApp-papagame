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
public final class oh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f42862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f42863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42865f;

    private oh(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancle, @NonNull Button dialogButtonOk, @NonNull TextView dialogContent, @NonNull TextView tipTitle) {
        this.f42861b = rootView;
        this.f42862c = dialogButtonCancle;
        this.f42863d = dialogButtonOk;
        this.f42864e = dialogContent;
        this.f42865f = tipTitle;
    }

    @NonNull
    public static oh bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancle);
        if (button != null) {
            i10 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (button2 != null) {
                i10 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                if (textView != null) {
                    i10 = R.id.tip_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                    if (textView2 != null) {
                        return new oh((LinearLayout) rootView, button, button2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static oh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42861b;
    }

    @NonNull
    public static oh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_pre_posting_hint, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
