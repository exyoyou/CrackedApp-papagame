package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ft0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ViewStub f38524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewStub f38526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ViewStub f38527f;

    private ft0(@NonNull LinearLayout rootView, @NonNull ViewStub endViewstub, @NonNull LinearLayout loadingView, @NonNull ViewStub loadingViewstub, @NonNull ViewStub normalViewstub) {
        this.f38523b = rootView;
        this.f38524c = endViewstub;
        this.f38525d = loadingView;
        this.f38526e = loadingViewstub;
        this.f38527f = normalViewstub;
    }

    @NonNull
    public static ft0 bind(@NonNull View rootView) {
        int i10 = R.id.end_viewstub;
        ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(rootView, R.id.end_viewstub);
        if (viewStub != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            i10 = R.id.loading_viewstub;
            ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(rootView, R.id.loading_viewstub);
            if (viewStub2 != null) {
                i10 = R.id.normal_viewstub;
                ViewStub viewStub3 = (ViewStub) ViewBindings.findChildViewById(rootView, R.id.normal_viewstub);
                if (viewStub3 != null) {
                    return new ft0(linearLayout, viewStub, linearLayout, viewStub2, viewStub3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ft0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38523b;
    }

    @NonNull
    public static ft0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.sample_common_list_footer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
