package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f36616d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36617e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36618f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f36619g;

    private bv0(@NonNull ConstraintLayout rootView, @NonNull TextView desc, @NonNull Button download, @NonNull ImageView imageView, @NonNull TextView title, @NonNull View view) {
        this.f36614b = rootView;
        this.f36615c = desc;
        this.f36616d = download;
        this.f36617e = imageView;
        this.f36618f = title;
        this.f36619g = view;
    }

    @NonNull
    public static bv0 bind(@NonNull View rootView) {
        int i10 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
        if (textView != null) {
            i10 = R.id.download;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.download);
            if (button != null) {
                i10 = R.id.imageView;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
                if (imageView != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                    if (textView2 != null) {
                        i10 = R.id.view;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view);
                        if (viewFindChildViewById != null) {
                            return new bv0((ConstraintLayout) rootView, textView, button, imageView, textView2, viewFindChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36614b;
    }

    @NonNull
    public static bv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.simple_sheet_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
