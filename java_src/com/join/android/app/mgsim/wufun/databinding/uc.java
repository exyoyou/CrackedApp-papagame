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
public final class uc implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45647c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f45648d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45650f;

    private uc(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancle, @NonNull Button dialogButtonOk, @NonNull TextView dialogContent, @NonNull TextView tipTitle) {
        this.f45646b = rootView;
        this.f45647c = dialogButtonCancle;
        this.f45648d = dialogButtonOk;
        this.f45649e = dialogContent;
        this.f45650f = tipTitle;
    }

    @NonNull
    public static uc bind(@NonNull View rootView) {
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
                        return new uc((LinearLayout) rootView, button, button2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uc inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45646b;
    }

    @NonNull
    public static uc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.delete_center_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
