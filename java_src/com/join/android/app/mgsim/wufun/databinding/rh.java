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
public final class rh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f44352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44353d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44354e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44355f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44356g;

    private rh(@NonNull RelativeLayout rootView, @NonNull Button btnOk, @NonNull LinearLayout ivClose, @NonNull RelativeLayout rlMain, @NonNull RelativeLayout top, @NonNull TextView tvTop) {
        this.f44351b = rootView;
        this.f44352c = btnOk;
        this.f44353d = ivClose;
        this.f44354e = rlMain;
        this.f44355f = top;
        this.f44356g = tvTop;
    }

    @NonNull
    public static rh bind(@NonNull View rootView) {
        int i10 = R.id.btnOk;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnOk);
        if (button != null) {
            i10 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (linearLayout != null) {
                i10 = R.id.rl_main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_main);
                if (relativeLayout != null) {
                    i10 = R.id.top;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.top);
                    if (relativeLayout2 != null) {
                        i10 = R.id.tv_top;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                        if (textView != null) {
                            return new rh((RelativeLayout) rootView, button, linearLayout, relativeLayout, relativeLayout2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44351b;
    }

    @NonNull
    public static rh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_room_srv_play_mode_tip, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
