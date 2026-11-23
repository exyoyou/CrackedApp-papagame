package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f44488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ListView f44489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44490e;

    private rt0(@NonNull LinearLayout rootView, @NonNull Button btnParent, @NonNull ListView lvFiles, @NonNull TextView tvpath) {
        this.f44487b = rootView;
        this.f44488c = btnParent;
        this.f44489d = lvFiles;
        this.f44490e = tvpath;
    }

    @NonNull
    public static rt0 bind(@NonNull View rootView) {
        int i10 = R.id.btnParent;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnParent);
        if (button != null) {
            i10 = R.id.lvFiles;
            ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.lvFiles);
            if (listView != null) {
                i10 = R.id.tvpath;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvpath);
                if (textView != null) {
                    return new rt0((LinearLayout) rootView, button, listView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44487b;
    }

    @NonNull
    public static rt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.sdcard_lay, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
