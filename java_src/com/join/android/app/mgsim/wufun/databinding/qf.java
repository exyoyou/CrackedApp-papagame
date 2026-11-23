package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.input.InputUnderLine;

/* JADX INFO: loaded from: classes4.dex */
public final class qf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f43788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final InputUnderLine f43790f;

    private qf(@NonNull RelativeLayout rootView, @NonNull ImageView ivClose, @NonNull Button join, @NonNull TextView tvTop, @NonNull InputUnderLine txtIP) {
        this.f43786b = rootView;
        this.f43787c = ivClose;
        this.f43788d = join;
        this.f43789e = tvTop;
        this.f43790f = txtIP;
    }

    @NonNull
    public static qf bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (imageView != null) {
            i10 = R.id.join;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.join);
            if (button != null) {
                i10 = R.id.tv_top;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                if (textView != null) {
                    i10 = R.id.txtIP;
                    InputUnderLine inputUnderLine = (InputUnderLine) ViewBindings.findChildViewById(rootView, R.id.txtIP);
                    if (inputUnderLine != null) {
                        return new qf((RelativeLayout) rootView, imageView, button, textView, inputUnderLine);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43786b;
    }

    @NonNull
    public static qf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_fight_wifi_ip, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
