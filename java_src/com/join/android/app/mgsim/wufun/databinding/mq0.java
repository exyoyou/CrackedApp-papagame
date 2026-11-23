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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class mq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42016c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42017d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42019f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42020g;

    private mq0(@NonNull RelativeLayout rootView, @NonNull ImageView imageView5, @NonNull LinearLayout lookOther, @NonNull TextView subtitle, @NonNull TextView textView11, @NonNull TextView title) {
        this.f42015b = rootView;
        this.f42016c = imageView5;
        this.f42017d = lookOther;
        this.f42018e = subtitle;
        this.f42019f = textView11;
        this.f42020g = title;
    }

    @NonNull
    public static mq0 bind(@NonNull View rootView) {
        int i10 = R.id.imageView5;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
        if (imageView != null) {
            i10 = R.id.look_other;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other);
            if (linearLayout != null) {
                i10 = R.id.subtitle;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.subtitle);
                if (textView != null) {
                    i10 = R.id.textView11;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView11);
                    if (textView2 != null) {
                        i10 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView3 != null) {
                            return new mq0((RelativeLayout) rootView, imageView, linearLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42015b;
    }

    @NonNull
    public static mq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_modle_item_title, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
