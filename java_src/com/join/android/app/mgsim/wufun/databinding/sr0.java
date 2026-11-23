package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RadioButton f44928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RadioButton f44929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RadioButton f44930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RadioGroup f44931f;

    private sr0(@NonNull RelativeLayout rootView, @NonNull RadioButton radioButtonHot, @NonNull RadioButton radioButtonMostReply, @NonNull RadioButton radioButtonNew, @NonNull RadioGroup rgSort) {
        this.f44927b = rootView;
        this.f44928c = radioButtonHot;
        this.f44929d = radioButtonMostReply;
        this.f44930e = radioButtonNew;
        this.f44931f = rgSort;
    }

    @NonNull
    public static sr0 bind(@NonNull View rootView) {
        int i10 = R.id.radioButton_hot;
        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.radioButton_hot);
        if (radioButton != null) {
            i10 = R.id.radioButton_mostReply;
            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.radioButton_mostReply);
            if (radioButton2 != null) {
                i10 = R.id.radioButton_new;
                RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.radioButton_new);
                if (radioButton3 != null) {
                    i10 = R.id.rgSort;
                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, R.id.rgSort);
                    if (radioGroup != null) {
                        return new sr0((RelativeLayout) rootView, radioButton, radioButton2, radioButton3, radioGroup);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44927b;
    }

    @NonNull
    public static sr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_lable_list_sort, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
