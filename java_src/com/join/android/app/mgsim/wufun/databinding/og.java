package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class og implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f42853c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42855e;

    private og(@NonNull RelativeLayout rootView, @NonNull Button btnLeave, @NonNull LinearLayout ivClose, @NonNull TextView tvTop) {
        this.f42852b = rootView;
        this.f42853c = btnLeave;
        this.f42854d = ivClose;
        this.f42855e = tvTop;
    }

    @NonNull
    public static og bind(@NonNull View rootView) {
        int i10 = R.id.btnLeave;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnLeave);
        if (button != null) {
            i10 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (linearLayout != null) {
                i10 = R.id.tv_top;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                if (textView != null) {
                    return new og((RelativeLayout) rootView, button, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static og inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42852b;
    }

    @NonNull
    public static og inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_leave_room, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
