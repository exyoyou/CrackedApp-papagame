package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40275f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40276g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f40277h;

    private jk0(@NonNull LinearLayout rootView, @NonNull RelativeLayout commentHeaderLayout, @NonNull TextView commitCount, @NonNull TextView commitImage, @NonNull TextView commitTv, @NonNull LinearLayout layoutBottom, @NonNull View line) {
        this.f40271b = rootView;
        this.f40272c = commentHeaderLayout;
        this.f40273d = commitCount;
        this.f40274e = commitImage;
        this.f40275f = commitTv;
        this.f40276g = layoutBottom;
        this.f40277h = line;
    }

    @NonNull
    public static jk0 bind(@NonNull View rootView) {
        int i10 = R.id.commentHeaderLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.commentHeaderLayout);
        if (relativeLayout != null) {
            i10 = R.id.commitCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.commitCount);
            if (textView != null) {
                i10 = R.id.commitImage;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.commitImage);
                if (textView2 != null) {
                    i10 = R.id.commitTv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.commitTv);
                    if (textView3 != null) {
                        i10 = R.id.layoutBottom;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutBottom);
                        if (linearLayout != null) {
                            i10 = R.id.line;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                            if (viewFindChildViewById != null) {
                                return new jk0((LinearLayout) rootView, relativeLayout, textView, textView2, textView3, linearLayout, viewFindChildViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40271b;
    }

    @NonNull
    public static jk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_record_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
