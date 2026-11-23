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
public final class t implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f45054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45056f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45057g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45058h;

    private t(@NonNull ConstraintLayout rootView, @NonNull ImageView iv1, @NonNull ImageView ivClose, @NonNull TextView tvBtn1, @NonNull TextView tvBtn2, @NonNull TextView tvText1, @NonNull TextView tvText2) {
        this.f45052b = rootView;
        this.f45053c = iv1;
        this.f45054d = ivClose;
        this.f45055e = tvBtn1;
        this.f45056f = tvBtn2;
        this.f45057g = tvText1;
        this.f45058h = tvText2;
    }

    @NonNull
    public static t bind(@NonNull View rootView) {
        int i10 = R.id.iv_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
        if (imageView != null) {
            i10 = R.id.iv_close;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (imageView2 != null) {
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
                                return new t((ConstraintLayout) rootView, imageView, imageView2, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static t inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45052b;
    }

    @NonNull
    public static t inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_cloud_game_time, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
