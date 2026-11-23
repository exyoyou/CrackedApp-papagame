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
public final class zf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48214e;

    private zf(@NonNull RelativeLayout rootView, @NonNull LinearLayout ivClose, @NonNull TextView tvKickinfo, @NonNull TextView tvPosition) {
        this.f48211b = rootView;
        this.f48212c = ivClose;
        this.f48213d = tvKickinfo;
        this.f48214e = tvPosition;
    }

    @NonNull
    public static zf bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (linearLayout != null) {
            i10 = R.id.tv_kickinfo;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_kickinfo);
            if (textView != null) {
                i10 = R.id.tv_position;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_position);
                if (textView2 != null) {
                    return new zf((RelativeLayout) rootView, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48211b;
    }

    @NonNull
    public static zf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_gameroom_kick, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
