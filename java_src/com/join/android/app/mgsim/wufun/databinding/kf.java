package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class kf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f40745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f40747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40748g;

    private kf(@NonNull RelativeLayout rootView, @NonNull ImageView back, @NonNull Button cancel, @NonNull TextView info, @NonNull Button research, @NonNull TextView title) {
        this.f40743b = rootView;
        this.f40744c = back;
        this.f40745d = cancel;
        this.f40746e = info;
        this.f40747f = research;
        this.f40748g = title;
    }

    @NonNull
    public static kf bind(@NonNull View rootView) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (imageView != null) {
            i10 = R.id.cancel;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.cancel);
            if (button != null) {
                i10 = R.id.info;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.info);
                if (textView != null) {
                    i10 = R.id.research;
                    Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.research);
                    if (button2 != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView2 != null) {
                            return new kf((RelativeLayout) rootView, imageView, button, textView, button2, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40743b;
    }

    @NonNull
    public static kf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_fight_disconnect, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
