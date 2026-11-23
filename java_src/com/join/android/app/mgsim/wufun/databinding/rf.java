package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f44329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f44330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44332f;

    private rf(@NonNull LinearLayout rootView, @NonNull Button negativeBtn, @NonNull Button positiveBtn, @NonNull TextView tipContent, @NonNull TextView tipTitle) {
        this.f44328b = rootView;
        this.f44329c = negativeBtn;
        this.f44330d = positiveBtn;
        this.f44331e = tipContent;
        this.f44332f = tipTitle;
    }

    @NonNull
    public static rf bind(@NonNull View rootView) {
        int i10 = R.id.negative_btn;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.negative_btn);
        if (button != null) {
            i10 = R.id.positive_btn;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.positive_btn);
            if (button2 != null) {
                i10 = R.id.tip_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_content);
                if (textView != null) {
                    i10 = R.id.tip_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                    if (textView2 != null) {
                        return new rf((LinearLayout) rootView, button, button2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44328b;
    }

    @NonNull
    public static rf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_forum, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
