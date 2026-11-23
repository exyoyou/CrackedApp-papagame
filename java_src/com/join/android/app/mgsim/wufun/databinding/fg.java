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

/* JADX INFO: loaded from: classes4.dex */
public final class fg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38377c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38378d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38379e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38380f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38381g;

    private fg(@NonNull ConstraintLayout rootView, @NonNull ImageView iv1, @NonNull TextView tvBtn1, @NonNull TextView tvBtn2, @NonNull TextView tvText1, @NonNull TextView tvText2) {
        this.f38376b = rootView;
        this.f38377c = iv1;
        this.f38378d = tvBtn1;
        this.f38379e = tvBtn2;
        this.f38380f = tvText1;
        this.f38381g = tvText2;
    }

    @NonNull
    public static fg bind(@NonNull View rootView) {
        int i10 = R.id.iv_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
        if (imageView != null) {
            i10 = R.id.tv_btn_1;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
            if (textView != null) {
                i10 = R.id.tv_btn_2;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_2);
                if (textView2 != null) {
                    i10 = R.id.tv_text_1;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                    if (textView3 != null) {
                        i10 = R.id.tv_text_2;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                        if (textView4 != null) {
                            return new fg((ConstraintLayout) rootView, imageView, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38376b;
    }

    @NonNull
    public static fg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_hm_game_over, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
