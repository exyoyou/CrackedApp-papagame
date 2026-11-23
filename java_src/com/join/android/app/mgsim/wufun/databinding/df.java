package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class df implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f37381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37382d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37383e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37384f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37385g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f37386h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37387i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37388j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37389k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f37390l;

    private df(@NonNull ConstraintLayout rootView, @NonNull View close, @NonNull ConstraintLayout confirm, @NonNull ConstraintLayout constraintLayout17, @NonNull ConstraintLayout container, @NonNull ConstraintLayout content, @NonNull ImageView iv1, @NonNull TextView textView74, @NonNull TextView textView78, @NonNull TextView textView79, @NonNull TextView tip) {
        this.f37380b = rootView;
        this.f37381c = close;
        this.f37382d = confirm;
        this.f37383e = constraintLayout17;
        this.f37384f = container;
        this.f37385g = content;
        this.f37386h = iv1;
        this.f37387i = textView74;
        this.f37388j = textView78;
        this.f37389k = textView79;
        this.f37390l = tip;
    }

    @NonNull
    public static df bind(@NonNull View rootView) {
        int i10 = R.id.close;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.close);
        if (viewFindChildViewById != null) {
            i10 = R.id.confirm;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.confirm);
            if (constraintLayout != null) {
                i10 = R.id.constraintLayout17;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout17);
                if (constraintLayout2 != null) {
                    ConstraintLayout constraintLayout3 = (ConstraintLayout) rootView;
                    i10 = R.id.content;
                    ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.content);
                    if (constraintLayout4 != null) {
                        i10 = R.id.iv1;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv1);
                        if (imageView != null) {
                            i10 = R.id.textView74;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView74);
                            if (textView != null) {
                                i10 = R.id.textView78;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView78);
                                if (textView2 != null) {
                                    i10 = R.id.textView79;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView79);
                                    if (textView3 != null) {
                                        i10 = R.id.tip;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
                                        if (textView4 != null) {
                                            return new df(constraintLayout3, viewFindChildViewById, constraintLayout, constraintLayout2, constraintLayout3, constraintLayout4, imageView, textView, textView2, textView3, textView4);
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
    public static df inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37380b;
    }

    @NonNull
    public static df inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_download_high_speed, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
