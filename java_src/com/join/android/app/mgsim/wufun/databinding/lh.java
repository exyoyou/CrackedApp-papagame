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

/* JADX INFO: loaded from: classes4.dex */
public final class lh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41310e;

    private lh(@NonNull LinearLayout rootView, @NonNull TextView btnCancel, @NonNull TextView chosCamera, @NonNull TextView picLib) {
        this.f41307b = rootView;
        this.f41308c = btnCancel;
        this.f41309d = chosCamera;
        this.f41310e = picLib;
    }

    @NonNull
    public static lh bind(@NonNull View rootView) {
        int i10 = R.id.btn_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btn_cancel);
        if (textView != null) {
            i10 = R.id.chos_camera;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.chos_camera);
            if (textView2 != null) {
                i10 = R.id.pic_lib;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pic_lib);
                if (textView3 != null) {
                    return new lh((LinearLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41307b;
    }

    @NonNull
    public static lh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_pic_choose, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
