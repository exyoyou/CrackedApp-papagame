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
import com.join.android.app.mgsim.wufun.R;
import com.zhy.view.flowlayout.TagFlowSpecialLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class fs0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TagFlowSpecialLayout f38515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TagFlowSpecialLayout f38516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TagFlowSpecialLayout f38517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38518f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38519g;

    private fs0(@NonNull LinearLayout rootView, @NonNull TagFlowSpecialLayout filter1, @NonNull TagFlowSpecialLayout filter2, @NonNull TagFlowSpecialLayout filter3, @NonNull TextView resetButn, @NonNull TextView setting) {
        this.f38514b = rootView;
        this.f38515c = filter1;
        this.f38516d = filter2;
        this.f38517e = filter3;
        this.f38518f = resetButn;
        this.f38519g = setting;
    }

    @NonNull
    public static fs0 bind(@NonNull View rootView) {
        int i10 = R.id.filter1;
        TagFlowSpecialLayout tagFlowSpecialLayout = (TagFlowSpecialLayout) ViewBindings.findChildViewById(rootView, R.id.filter1);
        if (tagFlowSpecialLayout != null) {
            i10 = R.id.filter2;
            TagFlowSpecialLayout tagFlowSpecialLayout2 = (TagFlowSpecialLayout) ViewBindings.findChildViewById(rootView, R.id.filter2);
            if (tagFlowSpecialLayout2 != null) {
                i10 = R.id.filter3;
                TagFlowSpecialLayout tagFlowSpecialLayout3 = (TagFlowSpecialLayout) ViewBindings.findChildViewById(rootView, R.id.filter3);
                if (tagFlowSpecialLayout3 != null) {
                    i10 = R.id.resetButn;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.resetButn);
                    if (textView != null) {
                        i10 = R.id.setting;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setting);
                        if (textView2 != null) {
                            return new fs0((LinearLayout) rootView, tagFlowSpecialLayout, tagFlowSpecialLayout2, tagFlowSpecialLayout3, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fs0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38514b;
    }

    @NonNull
    public static fs0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_special_filter_bottom_operate, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
