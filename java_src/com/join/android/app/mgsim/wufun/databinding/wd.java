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

/* JADX INFO: loaded from: classes4.dex */
public final class wd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46752c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46753d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f46754e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46755f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46756g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46757h;

    private wd(@NonNull RelativeLayout rootView, @NonNull ImageView iv1, @NonNull RelativeLayout rl1, @NonNull ImageView shortcutCloseIv, @NonNull TextView shortcutCreateTv, @NonNull TextView tv1, @NonNull TextView tv2) {
        this.f46751b = rootView;
        this.f46752c = iv1;
        this.f46753d = rl1;
        this.f46754e = shortcutCloseIv;
        this.f46755f = shortcutCreateTv;
        this.f46756g = tv1;
        this.f46757h = tv2;
    }

    @NonNull
    public static wd bind(@NonNull View rootView) {
        int i10 = R.id.iv1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv1);
        if (imageView != null) {
            i10 = R.id.rl1;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl1);
            if (relativeLayout != null) {
                i10 = R.id.shortcutCloseIv;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.shortcutCloseIv);
                if (imageView2 != null) {
                    i10 = R.id.shortcutCreateTv;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.shortcutCreateTv);
                    if (textView != null) {
                        i10 = R.id.tv1;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv1);
                        if (textView2 != null) {
                            i10 = R.id.tv2;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv2);
                            if (textView3 != null) {
                                return new wd((RelativeLayout) rootView, imageView, relativeLayout, imageView2, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46751b;
    }

    @NonNull
    public static wd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_add_shortcut_result_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
