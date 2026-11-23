package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MarqueeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class e20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final MarqueeTextView f37741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f37742c;

    private e20(@NonNull MarqueeTextView rootView, @NonNull MarqueeTextView tvHotContent) {
        this.f37741b = rootView;
        this.f37742c = tvHotContent;
    }

    @NonNull
    public static e20 bind(@NonNull View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        MarqueeTextView marqueeTextView = (MarqueeTextView) rootView;
        return new e20(marqueeTextView, marqueeTextView);
    }

    @NonNull
    public static e20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public MarqueeTextView getRoot() {
        return this.f37741b;
    }

    @NonNull
    public static e20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_express_hot_topic_flipper, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
