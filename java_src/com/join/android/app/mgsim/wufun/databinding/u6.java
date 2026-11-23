package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class u6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45588d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f45589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45590f;

    private u6(@NonNull LinearLayout rootView, @NonNull Button dialogButtonOk, @NonNull TextView dialogContent, @NonNull ImageView imageView, @NonNull TextView tipTitle) {
        this.f45586b = rootView;
        this.f45587c = dialogButtonOk;
        this.f45588d = dialogContent;
        this.f45589e = imageView;
        this.f45590f = tipTitle;
    }

    @NonNull
    public static u6 bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_ok;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
        if (button != null) {
            i10 = R.id.dialog_content;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
            if (textView != null) {
                i10 = R.id.imageView;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
                if (imageView != null) {
                    i10 = R.id.tip_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                    if (textView2 != null) {
                        return new u6((LinearLayout) rootView, button, textView, imageView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static u6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45586b;
    }

    @NonNull
    public static u6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.backups_notice_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
