package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44287d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44288e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44289f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44290g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44291h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44292i;

    private rb0(@NonNull ConstraintLayout rootView, @NonNull FrameLayout ltProgress, @NonNull TextView ltValue, @NonNull FrameLayout rtProgress, @NonNull TextView rtValue, @NonNull TextView tip, @NonNull LinearLayout triggerL, @NonNull LinearLayout triggerR) {
        this.f44285b = rootView;
        this.f44286c = ltProgress;
        this.f44287d = ltValue;
        this.f44288e = rtProgress;
        this.f44289f = rtValue;
        this.f44290g = tip;
        this.f44291h = triggerL;
        this.f44292i = triggerR;
    }

    @NonNull
    public static rb0 bind(@NonNull View rootView) {
        int i10 = R.id.lt_progress;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.lt_progress);
        if (frameLayout != null) {
            i10 = R.id.lt_value;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.lt_value);
            if (textView != null) {
                i10 = R.id.rt_progress;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.rt_progress);
                if (frameLayout2 != null) {
                    i10 = R.id.rt_value;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.rt_value);
                    if (textView2 != null) {
                        i10 = R.id.tip;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
                        if (textView3 != null) {
                            i10 = R.id.trigger_l;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.trigger_l);
                            if (linearLayout != null) {
                                i10 = R.id.trigger_r;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.trigger_r);
                                if (linearLayout2 != null) {
                                    return new rb0((ConstraintLayout) rootView, frameLayout, textView, frameLayout2, textView2, textView3, linearLayout, linearLayout2);
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
    public static rb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44285b;
    }

    @NonNull
    public static rb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_peripheral_trigger_test, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
