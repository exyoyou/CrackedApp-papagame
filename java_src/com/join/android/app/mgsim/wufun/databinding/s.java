package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class s implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44568c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44569d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44570e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44571f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44572g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44573h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44574i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44575j;

    private s(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clContainer, @NonNull SimpleDraweeView sdvIcon1, @NonNull SimpleDraweeView sdvIcon2, @NonNull TextView tvBtn1, @NonNull TextView tvBtn2, @NonNull TextView tvLabel1, @NonNull TextView tvText1, @NonNull TextView tvText2) {
        this.f44567b = rootView;
        this.f44568c = clContainer;
        this.f44569d = sdvIcon1;
        this.f44570e = sdvIcon2;
        this.f44571f = tvBtn1;
        this.f44572g = tvBtn2;
        this.f44573h = tvLabel1;
        this.f44574i = tvText1;
        this.f44575j = tvText2;
    }

    @NonNull
    public static s bind(@NonNull View rootView) {
        int i10 = R.id.cl_container;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_container);
        if (constraintLayout != null) {
            i10 = R.id.sdv_icon_1;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_icon_1);
            if (simpleDraweeView != null) {
                i10 = R.id.sdv_icon_2;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_icon_2);
                if (simpleDraweeView2 != null) {
                    i10 = R.id.tv_btn_1;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
                    if (textView != null) {
                        i10 = R.id.tv_btn_2;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_2);
                        if (textView2 != null) {
                            i10 = R.id.tv_label_1;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_1);
                            if (textView3 != null) {
                                i10 = R.id.tv_text_1;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                if (textView4 != null) {
                                    i10 = R.id.tv_text_2;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                                    if (textView5 != null) {
                                        return new s((ConstraintLayout) rootView, constraintLayout, simpleDraweeView, simpleDraweeView2, textView, textView2, textView3, textView4, textView5);
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
    public static s inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44567b;
    }

    @NonNull
    public static s inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_cloud_game_switch_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
