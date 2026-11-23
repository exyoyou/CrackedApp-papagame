package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxLinearLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class s80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final DialogXBaseRelativeLayout f44675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaxLinearLayout f44676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44677d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f44678e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44679f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44680g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44681h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44682i;

    private s80(@NonNull DialogXBaseRelativeLayout rootView, @NonNull MaxLinearLayout boxBody, @NonNull RelativeLayout boxCustom, @NonNull DialogXBaseRelativeLayout boxRoot, @NonNull ImageView imgDialogxPopIcon, @NonNull TextView txtDialogxButton, @NonNull TextView txtDialogxPopMessage, @NonNull TextView txtDialogxPopTitle) {
        this.f44675b = rootView;
        this.f44676c = boxBody;
        this.f44677d = boxCustom;
        this.f44678e = boxRoot;
        this.f44679f = imgDialogxPopIcon;
        this.f44680g = txtDialogxButton;
        this.f44681h = txtDialogxPopMessage;
        this.f44682i = txtDialogxPopTitle;
    }

    @NonNull
    public static s80 bind(@NonNull View rootView) {
        int i10 = R.id.box_body;
        MaxLinearLayout maxLinearLayout = (MaxLinearLayout) ViewBindings.findChildViewById(rootView, R.id.box_body);
        if (maxLinearLayout != null) {
            i10 = R.id.box_custom;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.box_custom);
            if (relativeLayout != null) {
                DialogXBaseRelativeLayout dialogXBaseRelativeLayout = (DialogXBaseRelativeLayout) rootView;
                i10 = R.id.img_dialogx_pop_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_dialogx_pop_icon);
                if (imageView != null) {
                    i10 = R.id.txt_dialogx_button;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.txt_dialogx_button);
                    if (textView != null) {
                        i10 = R.id.txt_dialogx_pop_message;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.txt_dialogx_pop_message);
                        if (textView2 != null) {
                            i10 = R.id.txt_dialogx_pop_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.txt_dialogx_pop_title);
                            if (textView3 != null) {
                                return new s80(dialogXBaseRelativeLayout, maxLinearLayout, relativeLayout, dialogXBaseRelativeLayout, imageView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static s80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DialogXBaseRelativeLayout getRoot() {
        return this.f44675b;
    }

    @NonNull
    public static s80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_dialogx_popnotification_material, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
