package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class c5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f36775c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f36776d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f36777e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f36778f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f36779g;

    private c5(@NonNull LinearLayout rootView, @NonNull Button butn, @NonNull Button butn2, @NonNull Button butn3, @NonNull Button butn4, @NonNull Button butn5) {
        this.f36774b = rootView;
        this.f36775c = butn;
        this.f36776d = butn2;
        this.f36777e = butn3;
        this.f36778f = butn4;
        this.f36779g = butn5;
    }

    @NonNull
    public static c5 bind(@NonNull View rootView) {
        int i10 = R.id.butn;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.butn);
        if (button != null) {
            i10 = R.id.butn2;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.butn2);
            if (button2 != null) {
                i10 = R.id.butn3;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.butn3);
                if (button3 != null) {
                    i10 = R.id.butn4;
                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.butn4);
                    if (button4 != null) {
                        i10 = R.id.butn5;
                        Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.butn5);
                        if (button5 != null) {
                            return new c5((LinearLayout) rootView, button, button2, button3, button4, button5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static c5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36774b;
    }

    @NonNull
    public static c5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_test2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
