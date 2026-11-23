package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bt implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f36568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f36569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f36571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36572h;

    private bt(@NonNull LinearLayout rootView, @NonNull TextView content, @NonNull Button getGift, @NonNull View lineH, @NonNull TextView percent, @NonNull ProgressBar progress, @NonNull TextView title) {
        this.f36566b = rootView;
        this.f36567c = content;
        this.f36568d = getGift;
        this.f36569e = lineH;
        this.f36570f = percent;
        this.f36571g = progress;
        this.f36572h = title;
    }

    @NonNull
    public static bt bind(@NonNull View rootView) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (textView != null) {
            i10 = R.id.getGift;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.getGift);
            if (button != null) {
                i10 = R.id.line_h;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line_h);
                if (viewFindChildViewById != null) {
                    i10 = R.id.percent;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.percent);
                    if (textView2 != null) {
                        i10 = R.id.progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progress);
                        if (progressBar != null) {
                            i10 = R.id.title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                            if (textView3 != null) {
                                return new bt((LinearLayout) rootView, textView, button, viewFindChildViewById, textView2, progressBar, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bt inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36566b;
    }

    @NonNull
    public static bt inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_more_gift_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
