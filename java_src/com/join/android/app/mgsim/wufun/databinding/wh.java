package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f46795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CheckBox f46796d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46797e;

    private wh(@NonNull LinearLayout rootView, @NonNull Button btnOk, @NonNull CheckBox chkNotify, @NonNull TextView tvContent) {
        this.f46794b = rootView;
        this.f46795c = btnOk;
        this.f46796d = chkNotify;
        this.f46797e = tvContent;
    }

    @NonNull
    public static wh bind(@NonNull View rootView) {
        int i10 = R.id.btn_ok;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_ok);
        if (button != null) {
            i10 = R.id.chk_notify;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.chk_notify);
            if (checkBox != null) {
                i10 = R.id.tv_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_content);
                if (textView != null) {
                    return new wh((LinearLayout) rootView, button, checkBox, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46794b;
    }

    @NonNull
    public static wh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_simulator_notify, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
