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
public final class d implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f37170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f37171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CheckBox f37172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37173f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f37174g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37175h;

    private d(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancle, @NonNull Button dialogButtonOk, @NonNull CheckBox dialogCb, @NonNull TextView dialogContent, @NonNull View middle, @NonNull TextView tipTitle) {
        this.f37169b = rootView;
        this.f37170c = dialogButtonCancle;
        this.f37171d = dialogButtonOk;
        this.f37172e = dialogCb;
        this.f37173f = dialogContent;
        this.f37174g = middle;
        this.f37175h = tipTitle;
    }

    @NonNull
    public static d bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancle);
        if (button != null) {
            i10 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (button2 != null) {
                i10 = R.id.dialogCb;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.dialogCb);
                if (checkBox != null) {
                    i10 = R.id.dialog_content;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                    if (textView != null) {
                        i10 = R.id.middle;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.middle);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.tip_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                            if (textView2 != null) {
                                return new d((LinearLayout) rootView, button, button2, checkBox, textView, viewFindChildViewById, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static d inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37169b;
    }

    @NonNull
    public static d inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.accountlogin_notice_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
