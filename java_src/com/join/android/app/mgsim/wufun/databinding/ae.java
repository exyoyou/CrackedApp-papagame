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
public final class ae implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f35784c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f35785d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f35786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35787f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35788g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35789h;

    private ae(@NonNull RelativeLayout rootView, @NonNull Button dialogButtonCancle, @NonNull Button dialogButtonOk, @NonNull Button dialogButtonSure, @NonNull TextView dialogContent, @NonNull LinearLayout ivClose, @NonNull TextView tipTitle) {
        this.f35783b = rootView;
        this.f35784c = dialogButtonCancle;
        this.f35785d = dialogButtonOk;
        this.f35786e = dialogButtonSure;
        this.f35787f = dialogContent;
        this.f35788g = ivClose;
        this.f35789h = tipTitle;
    }

    @NonNull
    public static ae bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancle);
        if (button != null) {
            i10 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (button2 != null) {
                i10 = R.id.dialog_button_sure;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_sure);
                if (button3 != null) {
                    i10 = R.id.dialog_content;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                    if (textView != null) {
                        i10 = R.id.iv_close;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                        if (linearLayout != null) {
                            i10 = R.id.tip_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                            if (textView2 != null) {
                                return new ae((RelativeLayout) rootView, button, button2, button3, textView, linearLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ae inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35783b;
    }

    @NonNull
    public static ae inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_area_error_hint, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
