package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class a90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f35715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f35717e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35718f;

    private a90(@NonNull RelativeLayout rootView, @NonNull Button select, @NonNull TextView selectTv, @NonNull Button start, @NonNull TextView startTv) {
        this.f35714b = rootView;
        this.f35715c = select;
        this.f35716d = selectTv;
        this.f35717e = start;
        this.f35718f = startTv;
    }

    @NonNull
    public static a90 bind(@NonNull View rootView) {
        int i10 = R.id.select;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.select);
        if (button != null) {
            i10 = R.id.select_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.select_tv);
            if (textView != null) {
                i10 = R.id.start;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.start);
                if (button2 != null) {
                    i10 = R.id.start_tv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.start_tv);
                    if (textView2 != null) {
                        return new a90((RelativeLayout) rootView, button, textView, button2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static a90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35714b;
    }

    @NonNull
    public static a90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_emu_kay_map_common, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
