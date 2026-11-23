package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f44309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f44310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44313g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44314h;

    private rd0(@NonNull LinearLayout rootView, @NonNull Button btnOp, @NonNull Button del, @NonNull ImageView img, @NonNull TextView name, @NonNull TextView percentage, @NonNull TextView status) {
        this.f44308b = rootView;
        this.f44309c = btnOp;
        this.f44310d = del;
        this.f44311e = img;
        this.f44312f = name;
        this.f44313g = percentage;
        this.f44314h = status;
    }

    @NonNull
    public static rd0 bind(@NonNull View rootView) {
        int i10 = R.id.btnOp;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnOp);
        if (button != null) {
            i10 = R.id.del;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.del);
            if (button2 != null) {
                i10 = R.id.img;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img);
                if (imageView != null) {
                    i10 = R.id.name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (textView != null) {
                        i10 = R.id.percentage;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.percentage);
                        if (textView2 != null) {
                            i10 = R.id.status;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.status);
                            if (textView3 != null) {
                                return new rd0((LinearLayout) rootView, button, button2, imageView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44308b;
    }

    @NonNull
    public static rd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.listview_download_center_downloading, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
