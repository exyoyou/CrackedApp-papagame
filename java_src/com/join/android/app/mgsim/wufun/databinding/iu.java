package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class iu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CheckBox f39929c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39930d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39931e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f39932f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final CheckBox f39933g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39934h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39935i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f39936j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f39937k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f39938l;

    private iu(@NonNull LinearLayout rootView, @NonNull CheckBox girlCheckbox, @NonNull LinearLayout girlLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull CheckBox manCheckbox, @NonNull LinearLayout manLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f39928b = rootView;
        this.f39929c = girlCheckbox;
        this.f39930d = girlLayout;
        this.f39931e = imageView;
        this.f39932f = imageView2;
        this.f39933g = manCheckbox;
        this.f39934h = manLayout;
        this.f39935i = textView;
        this.f39936j = textView2;
        this.f39937k = textView3;
        this.f39938l = textView4;
    }

    @NonNull
    public static iu bind(@NonNull View rootView) {
        int i10 = R.id.girlCheckbox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.girlCheckbox);
        if (checkBox != null) {
            i10 = R.id.girlLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.girlLayout);
            if (linearLayout != null) {
                i10 = R.id.imageView;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
                if (imageView != null) {
                    i10 = R.id.imageView2;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView2);
                    if (imageView2 != null) {
                        i10 = R.id.manCheckbox;
                        CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.manCheckbox);
                        if (checkBox2 != null) {
                            i10 = R.id.manLayout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.manLayout);
                            if (linearLayout2 != null) {
                                i10 = R.id.textView;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                if (textView != null) {
                                    i10 = R.id.textView2;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                                    if (textView2 != null) {
                                        i10 = R.id.textView3;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                                        if (textView3 != null) {
                                            i10 = R.id.textView4;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView4);
                                            if (textView4 != null) {
                                                return new iu((LinearLayout) rootView, checkBox, linearLayout, imageView, imageView2, checkBox2, linearLayout2, textView, textView2, textView3, textView4);
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
    public static iu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39928b;
    }

    @NonNull
    public static iu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gender_check_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
