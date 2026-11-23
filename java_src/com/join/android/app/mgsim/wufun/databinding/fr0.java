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
public final class fr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CheckBox f38506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f38508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f38509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38510g;

    private fr0(@NonNull LinearLayout rootView, @NonNull CheckBox checkbox, @NonNull TextView content, @NonNull Button dialogButtonCancle, @NonNull Button dialogButtonOk, @NonNull TextView title) {
        this.f38505b = rootView;
        this.f38506c = checkbox;
        this.f38507d = content;
        this.f38508e = dialogButtonCancle;
        this.f38509f = dialogButtonOk;
        this.f38510g = title;
    }

    @NonNull
    public static fr0 bind(@NonNull View rootView) {
        int i10 = R.id.checkbox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkbox);
        if (checkBox != null) {
            i10 = R.id.content;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
            if (textView != null) {
                i10 = R.id.dialog_button_cancle;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancle);
                if (button != null) {
                    i10 = R.id.dialog_button_ok;
                    Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
                    if (button2 != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView2 != null) {
                            return new fr0((LinearLayout) rootView, checkBox, textView, button, button2, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38505b;
    }

    @NonNull
    public static fr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.plug_update_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
