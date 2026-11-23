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
public final class ag implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35808c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f35809d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35810e;

    private ag(@NonNull LinearLayout rootView, @NonNull TextView cancelTv, @NonNull Button checkBtn, @NonNull TextView nameTv) {
        this.f35807b = rootView;
        this.f35808c = cancelTv;
        this.f35809d = checkBtn;
        this.f35810e = nameTv;
    }

    @NonNull
    public static ag bind(@NonNull View rootView) {
        int i10 = R.id.cancel_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancel_tv);
        if (textView != null) {
            i10 = R.id.check_btn;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.check_btn);
            if (button != null) {
                i10 = R.id.name_tv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name_tv);
                if (textView2 != null) {
                    return new ag((LinearLayout) rootView, textView, button, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ag inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35807b;
    }

    @NonNull
    public static ag inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_handshank, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
