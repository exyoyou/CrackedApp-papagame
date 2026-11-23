package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class v70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f46104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46106e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46107f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46108g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46109h;

    private v70(@NonNull LinearLayout rootView, @NonNull View emptyDivider, @NonNull SimpleDraweeView ivModuleIcon, @NonNull LinearLayout llContent, @NonNull TextView messageBadge, @NonNull TextView tvModuleDoings, @NonNull TextView tvModuleName) {
        this.f46103b = rootView;
        this.f46104c = emptyDivider;
        this.f46105d = ivModuleIcon;
        this.f46106e = llContent;
        this.f46107f = messageBadge;
        this.f46108g = tvModuleDoings;
        this.f46109h = tvModuleName;
    }

    @NonNull
    public static v70 bind(@NonNull View rootView) {
        int i10 = R.id.emptyDivider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.emptyDivider);
        if (viewFindChildViewById != null) {
            i10 = R.id.iv_module_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_module_icon);
            if (simpleDraweeView != null) {
                i10 = R.id.ll_content;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_content);
                if (linearLayout != null) {
                    i10 = R.id.messageBadge;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageBadge);
                    if (textView != null) {
                        i10 = R.id.tv_module_doings;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_module_doings);
                        if (textView2 != null) {
                            i10 = R.id.tv_module_name;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_module_name);
                            if (textView3 != null) {
                                return new v70((LinearLayout) rootView, viewFindChildViewById, simpleDraweeView, linearLayout, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static v70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46103b;
    }

    @NonNull
    public static v70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_usercenter, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
