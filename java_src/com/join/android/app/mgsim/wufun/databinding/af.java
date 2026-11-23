package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.zyyoona7.picker.DatePickerView;

/* JADX INFO: loaded from: classes4.dex */
public final class af implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f35798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DatePickerView f35799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f35800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35802f;

    private af(@NonNull ConstraintLayout rootView, @NonNull DatePickerView datePicker, @NonNull ImageView ivBtn1, @NonNull TextView tvBtn1, @NonNull TextView tvLabel1) {
        this.f35798b = rootView;
        this.f35799c = datePicker;
        this.f35800d = ivBtn1;
        this.f35801e = tvBtn1;
        this.f35802f = tvLabel1;
    }

    @NonNull
    public static af bind(@NonNull View rootView) {
        int i10 = R.id.date_picker;
        DatePickerView datePickerView = (DatePickerView) ViewBindings.findChildViewById(rootView, R.id.date_picker);
        if (datePickerView != null) {
            i10 = R.id.iv_btn_1;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_btn_1);
            if (imageView != null) {
                i10 = R.id.tv_btn_1;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
                if (textView != null) {
                    i10 = R.id.tv_label_1;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_1);
                    if (textView2 != null) {
                        return new af((ConstraintLayout) rootView, datePickerView, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static af inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f35798b;
    }

    @NonNull
    public static af inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_date_picker, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
