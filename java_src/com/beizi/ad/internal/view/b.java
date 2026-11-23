package com.beizi.ad.internal.view;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes6.dex */
public class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebChromeClient.CustomViewCallback f9161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FrameLayout f9162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Activity f9163c;

    public b(Activity activity) {
        this.f9163c = activity;
    }

    private void a(FrameLayout frameLayout) {
        ImageButton imageButton = new ImageButton(this.f9163c);
        imageButton.setImageDrawable(this.f9163c.getResources().getDrawable(R.drawable.ic_menu_close_clear_cancel));
        imageButton.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 53));
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.view.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.onHideCustomView();
            }
        });
        frameLayout.addView(imageButton);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f9163c);
        builder.setTitle(String.format(this.f9163c.getResources().getString(com.beizi.fusion.R.string.beizi_html5_geo_permission_prompt_title), str));
        builder.setMessage(com.beizi.fusion.R.string.beizi_html5_geo_permission_prompt);
        builder.setPositiveButton(com.beizi.fusion.R.string.beizi_allow, new DialogInterface.OnClickListener() { // from class: com.beizi.ad.internal.view.b.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                callback.invoke(str, true, true);
            }
        });
        builder.setNegativeButton(com.beizi.fusion.R.string.beizi_deny, new DialogInterface.OnClickListener() { // from class: com.beizi.ad.internal.view.b.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                callback.invoke(str, false, false);
            }
        });
        builder.create().show();
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        ViewGroup viewGroup;
        super.onHideCustomView();
        Activity activity = this.f9163c;
        if (activity == null || this.f9162b == null || (viewGroup = (ViewGroup) activity.findViewById(R.id.content)) == null) {
            return;
        }
        viewGroup.removeView(this.f9162b);
        WebChromeClient.CustomViewCallback customViewCallback = this.f9161a;
        if (customViewCallback != null) {
            try {
                customViewCallback.onCustomViewHidden();
            } catch (NullPointerException unused) {
            }
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, int i10, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, customViewCallback);
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        ViewGroup viewGroup;
        super.onShowCustomView(view, customViewCallback);
        Activity activity = this.f9163c;
        if (activity == null || (viewGroup = (ViewGroup) activity.findViewById(R.id.content)) == null) {
            return;
        }
        this.f9161a = customViewCallback;
        if (!(view instanceof FrameLayout)) {
            this.f9162b = null;
            return;
        }
        FrameLayout frameLayout = (FrameLayout) view;
        this.f9162b = frameLayout;
        frameLayout.setClickable(true);
        this.f9162b.setBackgroundColor(-16777216);
        try {
            a(this.f9162b);
            viewGroup.addView(this.f9162b, new ViewGroup.LayoutParams(-1, -1));
        } catch (Exception unused) {
        }
    }
}
