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
public final class b90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f36283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f36285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36286f;

    private b90(@NonNull RelativeLayout rootView, @NonNull Button select, @NonNull TextView selectTv, @NonNull Button start, @NonNull TextView startTv) {
        this.f36282b = rootView;
        this.f36283c = select;
        this.f36284d = selectTv;
        this.f36285e = start;
        this.f36286f = startTv;
    }

    @NonNull
    public static b90 bind(@NonNull View rootView) {
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
                        return new b90((RelativeLayout) rootView, button, textView, button2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static b90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36282b;
    }

    @NonNull
    public static b90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_emu_kay_map_common_for_gba, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
