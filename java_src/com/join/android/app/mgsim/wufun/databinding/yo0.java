package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yo0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f47851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47852d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47854f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47855g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47856h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47857i;

    private yo0(@NonNull RelativeLayout rootView, @NonNull Button dialogButtonOk, @NonNull TextView dialogContent, @NonNull RelativeLayout dialogLayout, @NonNull LinearLayout ivClose, @NonNull TextView nonticeText, @NonNull TextView subContent, @NonNull TextView tvPosition) {
        this.f47850b = rootView;
        this.f47851c = dialogButtonOk;
        this.f47852d = dialogContent;
        this.f47853e = dialogLayout;
        this.f47854f = ivClose;
        this.f47855g = nonticeText;
        this.f47856h = subContent;
        this.f47857i = tvPosition;
    }

    @NonNull
    public static yo0 bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_ok;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
        if (button != null) {
            i10 = R.id.dialog_content;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
            if (textView != null) {
                i10 = R.id.dialogLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.dialogLayout);
                if (relativeLayout != null) {
                    i10 = R.id.iv_close;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                    if (linearLayout != null) {
                        i10 = R.id.nonticeText;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nonticeText);
                        if (textView2 != null) {
                            i10 = R.id.sub_content;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sub_content);
                            if (textView3 != null) {
                                i10 = R.id.tv_position;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_position);
                                if (textView4 != null) {
                                    return new yo0((RelativeLayout) rootView, button, textView, relativeLayout, linearLayout, textView2, textView3, textView4);
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
    public static yo0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47850b;
    }

    @NonNull
    public static yo0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.nontice_top_anim_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
