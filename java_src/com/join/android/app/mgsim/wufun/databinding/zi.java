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
public final class zi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48249c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48250d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f48251e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f48252f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f48253g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f48254h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ScrollTextViewLayout f48255i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f48256j;

    private zi(@NonNull RelativeLayout rootView, @NonNull TextView biground, @NonNull LinearLayout downloadLayout, @NonNull ImageView downloadLine, @NonNull ImageView hasNewFinishedGameImage, @NonNull ImageView imageLoading, @NonNull TextView scrollText, @NonNull ScrollTextViewLayout scrollTextLayout, @NonNull View statubar) {
        this.f48248b = rootView;
        this.f48249c = biground;
        this.f48250d = downloadLayout;
        this.f48251e = downloadLine;
        this.f48252f = hasNewFinishedGameImage;
        this.f48253g = imageLoading;
        this.f48254h = scrollText;
        this.f48255i = scrollTextLayout;
        this.f48256j = statubar;
    }

    @NonNull
    public static zi bind(@NonNull View rootView) {
        int i10 = R.id.biground;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.biground);
        if (textView != null) {
            i10 = R.id.downloadLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.downloadLayout);
            if (linearLayout != null) {
                i10 = R.id.downloadLine;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.downloadLine);
                if (imageView != null) {
                    i10 = R.id.hasNewFinishedGameImage;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.hasNewFinishedGameImage);
                    if (imageView2 != null) {
                        i10 = R.id.imageLoading;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageLoading);
                        if (imageView3 != null) {
                            i10 = R.id.scroll_text;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.scroll_text);
                            if (textView2 != null) {
                                i10 = R.id.scroll_text_layout;
                                ScrollTextViewLayout scrollTextViewLayout = (ScrollTextViewLayout) ViewBindings.findChildViewById(rootView, R.id.scroll_text_layout);
                                if (scrollTextViewLayout != null) {
                                    i10 = R.id.statubar;
                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                    if (viewFindChildViewById != null) {
                                        return new zi((RelativeLayout) rootView, textView, linearLayout, imageView, imageView2, imageView3, textView2, scrollTextViewLayout, viewFindChildViewById);
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
    public static zi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48248b;
    }

    @NonNull
    public static zi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.download_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
