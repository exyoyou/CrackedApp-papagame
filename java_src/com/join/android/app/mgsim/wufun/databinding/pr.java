package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pr implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final HorizontalScrollView f43491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f43492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43493f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43494g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43495h;

    private pr(@NonNull LinearLayout rootView, @NonNull ImageView imageView18, @NonNull HorizontalScrollView scrollView, @NonNull Button titleMoreBookButn, @NonNull LinearLayout titleMoreLayout, @NonNull TextView titleMoreMessage, @NonNull LinearLayout titleMoreTip) {
        this.f43489b = rootView;
        this.f43490c = imageView18;
        this.f43491d = scrollView;
        this.f43492e = titleMoreBookButn;
        this.f43493f = titleMoreLayout;
        this.f43494g = titleMoreMessage;
        this.f43495h = titleMoreTip;
    }

    @NonNull
    public static pr bind(@NonNull View rootView) {
        int i10 = R.id.imageView18;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView18);
        if (imageView != null) {
            i10 = R.id.scrollView;
            HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
            if (horizontalScrollView != null) {
                i10 = R.id.titleMoreBookButn;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.titleMoreBookButn);
                if (button != null) {
                    LinearLayout linearLayout = (LinearLayout) rootView;
                    i10 = R.id.titleMoreMessage;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleMoreMessage);
                    if (textView != null) {
                        i10 = R.id.titleMoreTip;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.titleMoreTip);
                        if (linearLayout2 != null) {
                            return new pr(linearLayout, imageView, horizontalScrollView, button, linearLayout, textView, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pr inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43489b;
    }

    @NonNull
    public static pr inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_subscribe, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
