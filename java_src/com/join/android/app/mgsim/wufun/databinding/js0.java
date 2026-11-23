package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class js0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f40400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f40401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f40403f;

    private js0(@NonNull RelativeLayout rootView, @NonNull Button deleteAllBtn, @NonNull Button pauseAllBtn, @NonNull RelativeLayout relateLayout, @NonNull Button startAllBtn) {
        this.f40399b = rootView;
        this.f40400c = deleteAllBtn;
        this.f40401d = pauseAllBtn;
        this.f40402e = relateLayout;
        this.f40403f = startAllBtn;
    }

    @NonNull
    public static js0 bind(@NonNull View rootView) {
        int i10 = R.id.deleteAllBtn;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.deleteAllBtn);
        if (button != null) {
            i10 = R.id.pauseAllBtn;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.pauseAllBtn);
            if (button2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                i10 = R.id.startAllBtn;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.startAllBtn);
                if (button3 != null) {
                    return new js0(relativeLayout, button, button2, relativeLayout, button3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static js0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40399b;
    }

    @NonNull
    public static js0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.popup_window_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
