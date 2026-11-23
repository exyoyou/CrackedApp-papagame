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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class or implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43030e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43031f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43032g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43033h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43034i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43035j;

    private or(@NonNull LinearLayout rootView, @NonNull LinearLayout commentHeaderLayout, @NonNull TextView commitCount, @NonNull ImageView commitImage, @NonNull TextView commitTv, @NonNull LinearLayout layoutBottom, @NonNull TextView textView53, @NonNull TextView textView9, @NonNull TextView tvRight) {
        this.f43027b = rootView;
        this.f43028c = commentHeaderLayout;
        this.f43029d = commitCount;
        this.f43030e = commitImage;
        this.f43031f = commitTv;
        this.f43032g = layoutBottom;
        this.f43033h = textView53;
        this.f43034i = textView9;
        this.f43035j = tvRight;
    }

    @NonNull
    public static or bind(@NonNull View rootView) {
        int i10 = R.id.commentHeaderLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.commentHeaderLayout);
        if (linearLayout != null) {
            i10 = R.id.commitCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.commitCount);
            if (textView != null) {
                i10 = R.id.commitImage;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.commitImage);
                if (imageView != null) {
                    i10 = R.id.commitTv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.commitTv);
                    if (textView2 != null) {
                        i10 = R.id.layoutBottom;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutBottom);
                        if (linearLayout2 != null) {
                            i10 = R.id.textView53;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView53);
                            if (textView3 != null) {
                                i10 = R.id.textView9;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                if (textView4 != null) {
                                    i10 = R.id.tv_right;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_right);
                                    if (textView5 != null) {
                                        return new or((LinearLayout) rootView, linearLayout, textView, imageView, textView2, linearLayout2, textView3, textView4, textView5);
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
    public static or inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43027b;
    }

    @NonNull
    public static or inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_record_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
