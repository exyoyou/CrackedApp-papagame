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
public final class z6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f48097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f48098d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48099e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48100f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f48101g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f48102h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f48103i;

    private z6(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancel, @NonNull Button dialogButtonOk, @NonNull TextView dialogContent, @NonNull TextView dialogDesci, @NonNull View divider, @NonNull ImageView notice, @NonNull TextView tipTitle) {
        this.f48096b = rootView;
        this.f48097c = dialogButtonCancel;
        this.f48098d = dialogButtonOk;
        this.f48099e = dialogContent;
        this.f48100f = dialogDesci;
        this.f48101g = divider;
        this.f48102h = notice;
        this.f48103i = tipTitle;
    }

    @NonNull
    public static z6 bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancel;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancel);
        if (button != null) {
            i10 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (button2 != null) {
                i10 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                if (textView != null) {
                    i10 = R.id.dialog_desci;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_desci);
                    if (textView2 != null) {
                        i10 = R.id.divider;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.notice;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.notice);
                            if (imageView != null) {
                                i10 = R.id.tip_title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                                if (textView3 != null) {
                                    return new z6((LinearLayout) rootView, button, button2, textView, textView2, viewFindChildViewById, imageView, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static z6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48096b;
    }

    @NonNull
    public static z6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.bind_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
