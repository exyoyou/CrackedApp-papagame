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
public final class ng implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f42313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f42314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42316f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42317g;

    private ng(@NonNull RelativeLayout rootView, @NonNull Button btnCancel, @NonNull Button btnOk, @NonNull LinearLayout ivClose, @NonNull TextView tvTitle, @NonNull TextView tvTop) {
        this.f42312b = rootView;
        this.f42313c = btnCancel;
        this.f42314d = btnOk;
        this.f42315e = ivClose;
        this.f42316f = tvTitle;
        this.f42317g = tvTop;
    }

    @NonNull
    public static ng bind(@NonNull View rootView) {
        int i10 = R.id.btn_cancel;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_cancel);
        if (button != null) {
            i10 = R.id.btn_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_ok);
            if (button2 != null) {
                i10 = R.id.iv_close;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                if (linearLayout != null) {
                    i10 = R.id.tv_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                    if (textView != null) {
                        i10 = R.id.tv_top;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                        if (textView2 != null) {
                            return new ng((RelativeLayout) rootView, button, button2, linearLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ng inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42312b;
    }

    @NonNull
    public static ng inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_kickout_room_info, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
