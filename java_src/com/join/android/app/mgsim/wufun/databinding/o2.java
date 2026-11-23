package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class o2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f42609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42611f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f42612g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42613h;

    private o2(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull EditText etNote, @NonNull RelativeLayout headview, @NonNull ImageView icAdd, @NonNull View statubar, @NonNull TextView titleTextview) {
        this.f42607b = rootView;
        this.f42608c = backImage;
        this.f42609d = etNote;
        this.f42610e = headview;
        this.f42611f = icAdd;
        this.f42612g = statubar;
        this.f42613h = titleTextview;
    }

    @NonNull
    public static o2 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.etNote;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.etNote);
            if (editText != null) {
                i10 = R.id.headview;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.headview);
                if (relativeLayout != null) {
                    i10 = R.id.ic_add;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ic_add);
                    if (imageView2 != null) {
                        i10 = R.id.statubar;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.title_textview;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                            if (textView != null) {
                                return new o2((LinearLayout) rootView, imageView, editText, relativeLayout, imageView2, viewFindChildViewById, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static o2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42607b;
    }

    @NonNull
    public static o2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_hide_app_notebook, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
