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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47173f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47174g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47175h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47176i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47177j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47178k;

    private xd(@NonNull RelativeLayout rootView, @NonNull ImageView iv1, @NonNull RelativeLayout rl1, @NonNull ImageView shortcutCloseIv, @NonNull TextView shortcutCreateTv, @NonNull SimpleDraweeView shortcutIconOneIv, @NonNull SimpleDraweeView shortcutIconTwoIv, @NonNull TextView shortcutNoMoreReminderTv, @NonNull TextView tv1, @NonNull TextView tv2) {
        this.f47169b = rootView;
        this.f47170c = iv1;
        this.f47171d = rl1;
        this.f47172e = shortcutCloseIv;
        this.f47173f = shortcutCreateTv;
        this.f47174g = shortcutIconOneIv;
        this.f47175h = shortcutIconTwoIv;
        this.f47176i = shortcutNoMoreReminderTv;
        this.f47177j = tv1;
        this.f47178k = tv2;
    }

    @NonNull
    public static xd bind(@NonNull View rootView) {
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
                        i10 = R.id.shortcutIconOneIv;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.shortcutIconOneIv);
                        if (simpleDraweeView != null) {
                            i10 = R.id.shortcutIconTwoIv;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.shortcutIconTwoIv);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.shortcutNoMoreReminderTv;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shortcutNoMoreReminderTv);
                                if (textView2 != null) {
                                    i10 = R.id.tv1;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv1);
                                    if (textView3 != null) {
                                        i10 = R.id.tv2;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv2);
                                        if (textView4 != null) {
                                            return new xd((RelativeLayout) rootView, imageView, relativeLayout, imageView2, textView, simpleDraweeView, simpleDraweeView2, textView2, textView3, textView4);
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
    public static xd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47169b;
    }

    @NonNull
    public static xd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_add_shortcut_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
