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
public final class xf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f47193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f47194d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47196f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47197g;

    private xf(@NonNull RelativeLayout rootView, @NonNull Button btnPosition, @NonNull Button btnReport, @NonNull LinearLayout ivClose, @NonNull RelativeLayout rlMain, @NonNull TextView tvPosition) {
        this.f47192b = rootView;
        this.f47193c = btnPosition;
        this.f47194d = btnReport;
        this.f47195e = ivClose;
        this.f47196f = rlMain;
        this.f47197g = tvPosition;
    }

    @NonNull
    public static xf bind(@NonNull View rootView) {
        int i10 = R.id.btn_position;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_position);
        if (button != null) {
            i10 = R.id.btn_report;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_report);
            if (button2 != null) {
                i10 = R.id.iv_close;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                if (linearLayout != null) {
                    i10 = R.id.rl_main;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_main);
                    if (relativeLayout != null) {
                        i10 = R.id.tv_position;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_position);
                        if (textView != null) {
                            return new xf((RelativeLayout) rootView, button, button2, linearLayout, relativeLayout, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47192b;
    }

    @NonNull
    public static xf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_game_room_seat, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
