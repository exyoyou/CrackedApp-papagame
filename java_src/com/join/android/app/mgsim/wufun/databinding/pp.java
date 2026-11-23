package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43471d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43472e;

    private pp(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView imageViewHPic, @NonNull TextView number, @NonNull TextView title) {
        this.f43469b = rootView;
        this.f43470c = imageViewHPic;
        this.f43471d = number;
        this.f43472e = title;
    }

    @NonNull
    public static pp bind(@NonNull View rootView) {
        int i10 = R.id.imageViewHPic;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imageViewHPic);
        if (simpleDraweeView != null) {
            i10 = R.id.number;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.number);
            if (textView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                if (textView2 != null) {
                    return new pp((RelativeLayout) rootView, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43469b;
    }

    @NonNull
    public static pp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detail_screenshot_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
