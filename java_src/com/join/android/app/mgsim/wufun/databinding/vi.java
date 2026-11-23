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
import com.join.mgps.customview.ScrollTextViewLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class vi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f46278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46279e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f46280f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46281g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f46282h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46283i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ScrollTextViewLayout f46284j;

    private vi(@NonNull RelativeLayout rootView, @NonNull TextView biground, @NonNull ImageView downloadBg, @NonNull LinearLayout downloadLayout, @NonNull ImageView downloadLine, @NonNull ImageView hasNewFinishedGameImage, @NonNull ImageView imageLoading, @NonNull TextView scrollText, @NonNull ScrollTextViewLayout scrollTextLayout) {
        this.f46276b = rootView;
        this.f46277c = biground;
        this.f46278d = downloadBg;
        this.f46279e = downloadLayout;
        this.f46280f = downloadLine;
        this.f46281g = hasNewFinishedGameImage;
        this.f46282h = imageLoading;
        this.f46283i = scrollText;
        this.f46284j = scrollTextLayout;
    }

    @NonNull
    public static vi bind(@NonNull View rootView) {
        int i10 = R.id.biground;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.biground);
        if (textView != null) {
            i10 = R.id.download_bg;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.download_bg);
            if (imageView != null) {
                i10 = R.id.downloadLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.downloadLayout);
                if (linearLayout != null) {
                    i10 = R.id.downloadLine;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.downloadLine);
                    if (imageView2 != null) {
                        i10 = R.id.hasNewFinishedGameImage;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.hasNewFinishedGameImage);
                        if (imageView3 != null) {
                            i10 = R.id.imageLoading;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageLoading);
                            if (imageView4 != null) {
                                i10 = R.id.scroll_text;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.scroll_text);
                                if (textView2 != null) {
                                    i10 = R.id.scroll_text_layout;
                                    ScrollTextViewLayout scrollTextViewLayout = (ScrollTextViewLayout) ViewBindings.findChildViewById(rootView, R.id.scroll_text_layout);
                                    if (scrollTextViewLayout != null) {
                                        return new vi((RelativeLayout) rootView, textView, imageView, linearLayout, imageView2, imageView3, imageView4, textView2, scrollTextViewLayout);
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
    public static vi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46276b;
    }

    @NonNull
    public static vi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.download_detial_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
