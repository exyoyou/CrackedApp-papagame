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
public final class pi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f43364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f43365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ListView f43366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43367f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43368g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43369h;

    private pi(@NonNull LinearLayout rootView, @NonNull Button btnAllDownloaded, @NonNull Button btnDownload, @NonNull ListView listView, @NonNull TextView txtDownloadedList, @NonNull TextView txtIndicator, @NonNull TextView txtStatus) {
        this.f43363b = rootView;
        this.f43364c = btnAllDownloaded;
        this.f43365d = btnDownload;
        this.f43366e = listView;
        this.f43367f = txtDownloadedList;
        this.f43368g = txtIndicator;
        this.f43369h = txtStatus;
    }

    @NonNull
    public static pi bind(@NonNull View rootView) {
        int i10 = R.id.btnAllDownloaded;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnAllDownloaded);
        if (button != null) {
            i10 = R.id.btnDownload;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btnDownload);
            if (button2 != null) {
                i10 = R.id.listView;
                ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.listView);
                if (listView != null) {
                    i10 = R.id.txtDownloadedList;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.txtDownloadedList);
                    if (textView != null) {
                        i10 = R.id.txtIndicator;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.txtIndicator);
                        if (textView2 != null) {
                            i10 = R.id.txtStatus;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.txtStatus);
                            if (textView3 != null) {
                                return new pi((LinearLayout) rootView, button, button2, listView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43363b;
    }

    @NonNull
    public static pi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.download_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
