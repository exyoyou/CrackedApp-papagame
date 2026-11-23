package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fc implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38350e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38351f;

    private fc(@NonNull LinearLayout rootView, @NonNull TextView ptrClassicHeaderRotateViewHeaderLastUpdate, @NonNull LinearLayout ptrClassicHeaderRotateViewHeaderText, @NonNull TextView ptrClassicHeaderRotateViewHeaderTitle, @NonNull ProgressBar ptrClassicHeaderRotateViewProgressbar) {
        this.f38347b = rootView;
        this.f38348c = ptrClassicHeaderRotateViewHeaderLastUpdate;
        this.f38349d = ptrClassicHeaderRotateViewHeaderText;
        this.f38350e = ptrClassicHeaderRotateViewHeaderTitle;
        this.f38351f = ptrClassicHeaderRotateViewProgressbar;
    }

    @NonNull
    public static fc bind(@NonNull View rootView) {
        int i10 = R.id.ptr_classic_header_rotate_view_header_last_update;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.ptr_classic_header_rotate_view_header_last_update);
        if (textView != null) {
            i10 = R.id.ptr_classic_header_rotate_view_header_text;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ptr_classic_header_rotate_view_header_text);
            if (linearLayout != null) {
                i10 = R.id.ptr_classic_header_rotate_view_header_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ptr_classic_header_rotate_view_header_title);
                if (textView2 != null) {
                    i10 = R.id.ptr_classic_header_rotate_view_progressbar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.ptr_classic_header_rotate_view_progressbar);
                    if (progressBar != null) {
                        return new fc((LinearLayout) rootView, textView, linearLayout, textView2, progressBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fc inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38347b;
    }

    @NonNull
    public static fc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cube_ptr_classic_default_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
