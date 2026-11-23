package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qe0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43782d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43784f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43785g;

    private qe0(@NonNull LinearLayout rootView, @NonNull ImageView closed, @NonNull SimpleDraweeView luck, @NonNull TextView ok, @NonNull TextView subTitle, @NonNull TextView title) {
        this.f43780b = rootView;
        this.f43781c = closed;
        this.f43782d = luck;
        this.f43783e = ok;
        this.f43784f = subTitle;
        this.f43785g = title;
    }

    @NonNull
    public static qe0 bind(@NonNull View rootView) {
        int i10 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.closed);
        if (imageView != null) {
            i10 = R.id.luck;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.luck);
            if (simpleDraweeView != null) {
                i10 = R.id.ok;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                if (textView != null) {
                    i10 = R.id.sub_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sub_title);
                    if (textView2 != null) {
                        i10 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView3 != null) {
                            return new qe0((LinearLayout) rootView, imageView, simpleDraweeView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qe0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43780b;
    }

    @NonNull
    public static qe0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.luck_draw_finish_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
