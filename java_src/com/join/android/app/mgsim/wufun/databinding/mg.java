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
public final class mg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f41871c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41872d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41874f;

    private mg(@NonNull RelativeLayout rootView, @NonNull Button btnCopy, @NonNull LinearLayout ivClose, @NonNull TextView tvPwdInfo, @NonNull TextView tvTop) {
        this.f41870b = rootView;
        this.f41871c = btnCopy;
        this.f41872d = ivClose;
        this.f41873e = tvPwdInfo;
        this.f41874f = tvTop;
    }

    @NonNull
    public static mg bind(@NonNull View rootView) {
        int i10 = R.id.btn_copy;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_copy);
        if (button != null) {
            i10 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (linearLayout != null) {
                i10 = R.id.tv_pwd_info;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_pwd_info);
                if (textView != null) {
                    i10 = R.id.tv_top;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                    if (textView2 != null) {
                        return new mg((RelativeLayout) rootView, button, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41870b;
    }

    @NonNull
    public static mg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_invite_pwd, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
