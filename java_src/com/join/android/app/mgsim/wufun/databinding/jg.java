package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40225c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40226d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40227e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final EditText f40228f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40229g;

    private jg(@NonNull ConstraintLayout rootView, @NonNull TextView cancel, @NonNull ImageView close, @NonNull TextView confirm, @NonNull EditText name, @NonNull TextView title) {
        this.f40224b = rootView;
        this.f40225c = cancel;
        this.f40226d = close;
        this.f40227e = confirm;
        this.f40228f = name;
        this.f40229g = title;
    }

    @NonNull
    public static jg bind(@NonNull View rootView) {
        int i10 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancel);
        if (textView != null) {
            i10 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
            if (imageView != null) {
                i10 = R.id.confirm;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.confirm);
                if (textView2 != null) {
                    i10 = R.id.name;
                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (editText != null) {
                        i10 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView3 != null) {
                            return new jg((ConstraintLayout) rootView, textView, imageView, textView2, editText, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40224b;
    }

    @NonNull
    public static jg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_hm_save_custom, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
