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
public final class t80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final DialogXBaseRelativeLayout f45150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaxLinearLayout f45151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f45153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f45154f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45155g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45157i;

    private t80(@NonNull DialogXBaseRelativeLayout rootView, @NonNull MaxLinearLayout boxBody, @NonNull RelativeLayout boxCustom, @NonNull DialogXBaseRelativeLayout boxRoot, @NonNull ImageView imgDialogxPopIcon, @NonNull TextView txtDialogxButton, @NonNull TextView txtDialogxPopMessage, @NonNull TextView txtDialogxPopTitle) {
        this.f45150b = rootView;
        this.f45151c = boxBody;
        this.f45152d = boxCustom;
        this.f45153e = boxRoot;
        this.f45154f = imgDialogxPopIcon;
        this.f45155g = txtDialogxButton;
        this.f45156h = txtDialogxPopMessage;
        this.f45157i = txtDialogxPopTitle;
    }

    @NonNull
    public static t80 bind(@NonNull View rootView) {
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
                                return new t80(dialogXBaseRelativeLayout, maxLinearLayout, relativeLayout, dialogXBaseRelativeLayout, imageView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static t80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DialogXBaseRelativeLayout getRoot() {
        return this.f45150b;
    }

    @NonNull
    public static t80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_dialogx_popnotification_material_dark, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
