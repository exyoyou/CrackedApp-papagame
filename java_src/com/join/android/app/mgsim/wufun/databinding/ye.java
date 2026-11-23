package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ye implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CheckBox f47687c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47688d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47689e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47690f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47691g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47692h;

    private ye(@NonNull LinearLayout rootView, @NonNull CheckBox checkBox, @NonNull ImageView ivClose, @NonNull TextView textView103, @NonNull TextView tvKnow, @NonNull TextView tvSubTitle, @NonNull TextView tvTitle) {
        this.f47686b = rootView;
        this.f47687c = checkBox;
        this.f47688d = ivClose;
        this.f47689e = textView103;
        this.f47690f = tvKnow;
        this.f47691g = tvSubTitle;
        this.f47692h = tvTitle;
    }

    @NonNull
    public static ye bind(@NonNull View rootView) {
        int i10 = R.id.checkBox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkBox);
        if (checkBox != null) {
            i10 = R.id.iv_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (imageView != null) {
                i10 = R.id.textView103;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView103);
                if (textView != null) {
                    i10 = R.id.tv_know;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_know);
                    if (textView2 != null) {
                        i10 = R.id.tv_sub_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sub_title);
                        if (textView3 != null) {
                            i10 = R.id.tv_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                            if (textView4 != null) {
                                return new ye((LinearLayout) rootView, checkBox, imageView, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ye inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47686b;
    }

    @NonNull
    public static ye inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_create_end_game_guide, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
