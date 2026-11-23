package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class f6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f38276d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f38277e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f38278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38279g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38281i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38282j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38283k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38284l;

    private f6(@NonNull LinearLayout rootView, @NonNull ImageView closed, @NonNull Button dialogButtonClose, @NonNull Button dialogButtonIKnow, @NonNull Button dialogButtonKeep, @NonNull TextView dialogContent, @NonNull TextView dialogTitle, @NonNull ImageView dialogTitleImage, @NonNull LinearLayout llBtn, @NonNull LinearLayout llBtnIKnow, @NonNull LinearLayout llContent) {
        this.f38274b = rootView;
        this.f38275c = closed;
        this.f38276d = dialogButtonClose;
        this.f38277e = dialogButtonIKnow;
        this.f38278f = dialogButtonKeep;
        this.f38279g = dialogContent;
        this.f38280h = dialogTitle;
        this.f38281i = dialogTitleImage;
        this.f38282j = llBtn;
        this.f38283k = llBtnIKnow;
        this.f38284l = llContent;
    }

    @NonNull
    public static f6 bind(@NonNull View rootView) {
        int i10 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.closed);
        if (imageView != null) {
            i10 = R.id.dialog_button_close;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_close);
            if (button != null) {
                i10 = R.id.dialog_button_i_know;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_i_know);
                if (button2 != null) {
                    i10 = R.id.dialog_button_keep;
                    Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_keep);
                    if (button3 != null) {
                        i10 = R.id.dialog_content;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                        if (textView != null) {
                            i10 = R.id.dialog_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_title);
                            if (textView2 != null) {
                                i10 = R.id.dialog_title_image;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dialog_title_image);
                                if (imageView2 != null) {
                                    i10 = R.id.llBtn;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llBtn);
                                    if (linearLayout != null) {
                                        i10 = R.id.llBtnIKnow;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llBtnIKnow);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.ll_content;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_content);
                                            if (linearLayout3 != null) {
                                                return new f6((LinearLayout) rootView, imageView, button, button2, button3, textView, textView2, imageView2, linearLayout, linearLayout2, linearLayout3);
                                            }
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
    public static f6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38274b;
    }

    @NonNull
    public static f6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.android_permiss_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
