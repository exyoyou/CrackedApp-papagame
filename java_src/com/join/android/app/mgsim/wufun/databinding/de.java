package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class de implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37374f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37375g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37376h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37377i;

    private de(@NonNull RelativeLayout rootView, @NonNull ImageView iv1, @NonNull LinearLayout ivClose, @NonNull ConstraintLayout noRecord, @NonNull RelativeLayout rlTop, @NonNull TextView tv1, @NonNull TextView tv2, @NonNull TextView tvTop) {
        this.f37370b = rootView;
        this.f37371c = iv1;
        this.f37372d = ivClose;
        this.f37373e = noRecord;
        this.f37374f = rlTop;
        this.f37375g = tv1;
        this.f37376h = tv2;
        this.f37377i = tvTop;
    }

    @NonNull
    public static de bind(@NonNull View rootView) {
        int i10 = R.id.iv1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv1);
        if (imageView != null) {
            i10 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (linearLayout != null) {
                i10 = R.id.noRecord;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.noRecord);
                if (constraintLayout != null) {
                    i10 = R.id.rl_top;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_top);
                    if (relativeLayout != null) {
                        i10 = R.id.tv1;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv1);
                        if (textView != null) {
                            i10 = R.id.tv2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv2);
                            if (textView2 != null) {
                                i10 = R.id.tv_top;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                                if (textView3 != null) {
                                    return new de((RelativeLayout) rootView, imageView, linearLayout, constraintLayout, relativeLayout, textView, textView2, textView3);
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
    public static de inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37370b;
    }

    @NonNull
    public static de inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_arena_no_record, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
