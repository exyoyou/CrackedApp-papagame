package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.ui.view.AnalogTestView;

/* JADX INFO: loaded from: classes4.dex */
public final class pb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AnalogTestView f43304c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final AnalogTestView f43305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43307f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43308g;

    private pb0(@NonNull ConstraintLayout rootView, @NonNull AnalogTestView analogL, @NonNull AnalogTestView analogR, @NonNull TextView locL, @NonNull TextView locR, @NonNull TextView tip) {
        this.f43303b = rootView;
        this.f43304c = analogL;
        this.f43305d = analogR;
        this.f43306e = locL;
        this.f43307f = locR;
        this.f43308g = tip;
    }

    @NonNull
    public static pb0 bind(@NonNull View rootView) {
        int i10 = R.id.analog_l;
        AnalogTestView analogTestView = (AnalogTestView) ViewBindings.findChildViewById(rootView, R.id.analog_l);
        if (analogTestView != null) {
            i10 = R.id.analog_r;
            AnalogTestView analogTestView2 = (AnalogTestView) ViewBindings.findChildViewById(rootView, R.id.analog_r);
            if (analogTestView2 != null) {
                i10 = R.id.loc_l;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.loc_l);
                if (textView != null) {
                    i10 = R.id.loc_r;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loc_r);
                    if (textView2 != null) {
                        i10 = R.id.tip;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
                        if (textView3 != null) {
                            return new pb0((ConstraintLayout) rootView, analogTestView, analogTestView2, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43303b;
    }

    @NonNull
    public static pb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_peripheral_analog_test, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
