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
public final class ug implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CheckBox f45684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f45685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45686f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45687g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45688h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45689i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45690j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45691k;

    private ug(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancle, @NonNull CheckBox dialogCb, @NonNull Button dialogMessagBt, @NonNull TextView dialogMessagCopyTx, @NonNull TextView dialogMessagOneTx, @NonNull TextView dialogMessagThreeTx, @NonNull TextView dialogMessagTwoTx, @NonNull TextView dialogMessageTitleTx, @NonNull TextView tipTitle) {
        this.f45682b = rootView;
        this.f45683c = dialogButtonCancle;
        this.f45684d = dialogCb;
        this.f45685e = dialogMessagBt;
        this.f45686f = dialogMessagCopyTx;
        this.f45687g = dialogMessagOneTx;
        this.f45688h = dialogMessagThreeTx;
        this.f45689i = dialogMessagTwoTx;
        this.f45690j = dialogMessageTitleTx;
        this.f45691k = tipTitle;
    }

    @NonNull
    public static ug bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancle);
        if (button != null) {
            i10 = R.id.dialogCb;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.dialogCb);
            if (checkBox != null) {
                i10 = R.id.dialogMessagBt;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialogMessagBt);
                if (button2 != null) {
                    i10 = R.id.dialogMessagCopyTx;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessagCopyTx);
                    if (textView != null) {
                        i10 = R.id.dialogMessagOneTx;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessagOneTx);
                        if (textView2 != null) {
                            i10 = R.id.dialogMessagThreeTx;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessagThreeTx);
                            if (textView3 != null) {
                                i10 = R.id.dialogMessagTwoTx;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessagTwoTx);
                                if (textView4 != null) {
                                    i10 = R.id.dialogMessageTitleTx;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessageTitleTx);
                                    if (textView5 != null) {
                                        i10 = R.id.tip_title;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                                        if (textView6 != null) {
                                            return new ug((LinearLayout) rootView, button, checkBox, button2, textView, textView2, textView3, textView4, textView5, textView6);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ug inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45682b;
    }

    @NonNull
    public static ug inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_message_view1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
