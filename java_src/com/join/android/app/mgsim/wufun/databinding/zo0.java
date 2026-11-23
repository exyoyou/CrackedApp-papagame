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
public final class zo0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f48340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f48341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f48343f;

    private zo0(@NonNull LinearLayout rootView, @NonNull Button dialogButtonClose, @NonNull Button dialogButtonKeep, @NonNull TextView dialogContent, @NonNull ImageView dialogTitleImage) {
        this.f48339b = rootView;
        this.f48340c = dialogButtonClose;
        this.f48341d = dialogButtonKeep;
        this.f48342e = dialogContent;
        this.f48343f = dialogTitleImage;
    }

    @NonNull
    public static zo0 bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_close;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_close);
        if (button != null) {
            i10 = R.id.dialog_button_keep;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_keep);
            if (button2 != null) {
                i10 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                if (textView != null) {
                    i10 = R.id.dialog_title_image;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dialog_title_image);
                    if (imageView != null) {
                        return new zo0((LinearLayout) rootView, button, button2, textView, imageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zo0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48339b;
    }

    @NonNull
    public static zo0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.notice_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
