package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class v80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f46117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f46118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f46119g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46120h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46121i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f46122j;

    private v80(@NonNull ConstraintLayout rootView, @NonNull TextView desc, @NonNull SimpleDraweeView icon, @NonNull View redPointDesc, @NonNull View redPointSubIcon, @NonNull View redPointTitle, @NonNull SimpleDraweeView subIcon, @NonNull TextView title, @NonNull View vLine) {
        this.f46114b = rootView;
        this.f46115c = desc;
        this.f46116d = icon;
        this.f46117e = redPointDesc;
        this.f46118f = redPointSubIcon;
        this.f46119g = redPointTitle;
        this.f46120h = subIcon;
        this.f46121i = title;
        this.f46122j = vLine;
    }

    @NonNull
    public static v80 bind(@NonNull View rootView) {
        int i10 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
        if (textView != null) {
            i10 = R.id.icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
            if (simpleDraweeView != null) {
                i10 = R.id.redPointDesc;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.redPointDesc);
                if (viewFindChildViewById != null) {
                    i10 = R.id.redPointSubIcon;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.redPointSubIcon);
                    if (viewFindChildViewById2 != null) {
                        i10 = R.id.redPointTitle;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.redPointTitle);
                        if (viewFindChildViewById3 != null) {
                            i10 = R.id.subIcon;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.subIcon);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                if (textView2 != null) {
                                    i10 = R.id.v_line;
                                    View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.v_line);
                                    if (viewFindChildViewById4 != null) {
                                        return new v80((ConstraintLayout) rootView, textView, simpleDraweeView, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, simpleDraweeView2, textView2, viewFindChildViewById4);
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
    public static v80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46114b;
    }

    @NonNull
    public static v80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_discovery_header_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
