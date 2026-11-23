package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final EditText f44796c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44797d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RadioButton f44798e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RadioButton f44799f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RadioGroup f44800g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44801h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44802i;

    private sh(@NonNull ConstraintLayout rootView, @NonNull EditText et1, @NonNull ImageView ivClose, @NonNull RadioButton rbt1, @NonNull RadioButton rbt2, @NonNull RadioGroup rg1, @NonNull TextView tvBtn1, @NonNull TextView tvText1) {
        this.f44795b = rootView;
        this.f44796c = et1;
        this.f44797d = ivClose;
        this.f44798e = rbt1;
        this.f44799f = rbt2;
        this.f44800g = rg1;
        this.f44801h = tvBtn1;
        this.f44802i = tvText1;
    }

    @NonNull
    public static sh bind(@NonNull View rootView) {
        int i10 = R.id.et_1;
        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_1);
        if (editText != null) {
            i10 = R.id.iv_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (imageView != null) {
                i10 = R.id.rbt_1;
                RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rbt_1);
                if (radioButton != null) {
                    i10 = R.id.rbt_2;
                    RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rbt_2);
                    if (radioButton2 != null) {
                        i10 = R.id.rg_1;
                        RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, R.id.rg_1);
                        if (radioGroup != null) {
                            i10 = R.id.tv_btn_1;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
                            if (textView != null) {
                                i10 = R.id.tv_text_1;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                if (textView2 != null) {
                                    return new sh((ConstraintLayout) rootView, editText, imageView, radioButton, radioButton2, radioGroup, textView, textView2);
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
    public static sh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44795b;
    }

    @NonNull
    public static sh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_search_game_feed, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
