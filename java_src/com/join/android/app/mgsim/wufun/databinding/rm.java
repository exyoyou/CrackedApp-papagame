package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final pb0 f44393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final qb0 f44394f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final rb0 f44395g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final sb0 f44396h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44397i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44398j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44399k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44400l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44401m;

    private rm(@NonNull ConstraintLayout rootView, @NonNull TextView analogTest, @NonNull TextView keyTest, @NonNull pb0 layoutAnalogTest, @NonNull qb0 layoutKeyTest, @NonNull rb0 layoutTriggerTest, @NonNull sb0 layoutVibrateTest, @NonNull LinearLayout menu, @NonNull TextView name, @NonNull LinearLayout peripheral, @NonNull TextView triggerTest, @NonNull TextView vibrateTest) {
        this.f44390b = rootView;
        this.f44391c = analogTest;
        this.f44392d = keyTest;
        this.f44393e = layoutAnalogTest;
        this.f44394f = layoutKeyTest;
        this.f44395g = layoutTriggerTest;
        this.f44396h = layoutVibrateTest;
        this.f44397i = menu;
        this.f44398j = name;
        this.f44399k = peripheral;
        this.f44400l = triggerTest;
        this.f44401m = vibrateTest;
    }

    @NonNull
    public static rm bind(@NonNull View rootView) {
        int i10 = R.id.analog_test;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.analog_test);
        if (textView != null) {
            i10 = R.id.key_test;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.key_test);
            if (textView2 != null) {
                i10 = R.id.layout_analog_test;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layout_analog_test);
                if (viewFindChildViewById != null) {
                    pb0 pb0VarBind = pb0.bind(viewFindChildViewById);
                    i10 = R.id.layout_key_test;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.layout_key_test);
                    if (viewFindChildViewById2 != null) {
                        qb0 qb0VarBind = qb0.bind(viewFindChildViewById2);
                        i10 = R.id.layout_trigger_test;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.layout_trigger_test);
                        if (viewFindChildViewById3 != null) {
                            rb0 rb0VarBind = rb0.bind(viewFindChildViewById3);
                            i10 = R.id.layout_vibrate_test;
                            View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.layout_vibrate_test);
                            if (viewFindChildViewById4 != null) {
                                sb0 sb0VarBind = sb0.bind(viewFindChildViewById4);
                                i10 = R.id.menu;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.menu);
                                if (linearLayout != null) {
                                    i10 = R.id.name;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                    if (textView3 != null) {
                                        i10 = R.id.peripheral;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.peripheral);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.trigger_test;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.trigger_test);
                                            if (textView4 != null) {
                                                i10 = R.id.vibrate_test;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vibrate_test);
                                                if (textView5 != null) {
                                                    return new rm((ConstraintLayout) rootView, textView, textView2, pb0VarBind, qb0VarBind, rb0VarBind, sb0VarBind, linearLayout, textView3, linearLayout2, textView4, textView5);
                                                }
                                            }
                                        }
                                    }
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
    public static rm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44390b;
    }

    @NonNull
    public static rm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_hm_settings_peripheral, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
