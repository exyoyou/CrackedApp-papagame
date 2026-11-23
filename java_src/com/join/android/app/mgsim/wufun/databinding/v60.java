package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class v60 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f46090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46091d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46092e;

    private v60(@NonNull LinearLayout rootView, @NonNull View line, @NonNull RelativeLayout simulatorRightRl, @NonNull TextView simulatorTitleTv) {
        this.f46089b = rootView;
        this.f46090c = line;
        this.f46091d = simulatorRightRl;
        this.f46092e = simulatorTitleTv;
    }

    @NonNull
    public static v60 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.simulator_right_rl;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.simulator_right_rl);
            if (relativeLayout != null) {
                i10 = R.id.simulator_title_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.simulator_title_tv);
                if (textView != null) {
                    return new v60((LinearLayout) rootView, viewFindChildViewById, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static v60 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46089b;
    }

    @NonNull
    public static v60 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_simulator_title_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
