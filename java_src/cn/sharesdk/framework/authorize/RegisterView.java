package cn.sharesdk.framework.authorize;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.sharesdk.framework.TitleLayout;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.n;
import com.mob.tools.utils.ResHelper;

/* JADX INFO: loaded from: classes7.dex */
public class RegisterView extends ResizeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TitleLayout f2600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RelativeLayout f2601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WebView f2602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f2603d;

    public RegisterView(Context context) {
        super(context);
        a(context);
    }

    private int b(Context context) {
        WindowManager windowManager;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (!(context instanceof Activity) || (windowManager = ((Activity) context).getWindowManager()) == null) {
            return 0;
        }
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public TitleLayout c() {
        return this.f2600a;
    }

    public RelativeLayout d() {
        return this.f2601b;
    }

    private void a(Context context) {
        setBackgroundColor(-1);
        setOrientation(1);
        final int iB = b(context);
        this.f2600a = new TitleLayout(context);
        try {
            int bitmapRes = ResHelper.getBitmapRes(context, "ssdk_auth_title_back");
            if (bitmapRes > 0) {
                this.f2600a.setBackgroundResource(bitmapRes);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        this.f2600a.getBtnRight().setVisibility(8);
        int stringRes = ResHelper.getStringRes(getContext(), "ssdk_weibo_oauth_regiseter");
        if (stringRes > 0) {
            this.f2600a.getTvTitle().setText(stringRes);
        }
        addView(this.f2600a);
        ImageView imageView = new ImageView(context);
        int bitmapRes2 = ResHelper.getBitmapRes(context, "ssdk_logo");
        if (bitmapRes2 > 0) {
            imageView.setImageResource(bitmapRes2);
        }
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setPadding(0, 0, ResHelper.dipToPx(context, 10), 0);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.sharesdk.framework.authorize.RegisterView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    int stringRes2 = ResHelper.getStringRes(view.getContext(), "ssdk_website");
                    String string = stringRes2 > 0 ? view.getResources().getString(stringRes2) : null;
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                } catch (Throwable th2) {
                    SSDKLog.b().a(th2);
                }
            }
        });
        this.f2600a.addView(imageView);
        this.f2601b = new RelativeLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        this.f2601b.setLayoutParams(layoutParams);
        addView(this.f2601b);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f2601b.addView(linearLayout);
        TextView textView = new TextView(context);
        this.f2603d = textView;
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        this.f2603d.setBackgroundColor(-12929302);
        linearLayout.addView(this.f2603d);
        this.f2603d.setVisibility(8);
        WebView webView = new WebView(context);
        this.f2602c = webView;
        n.a(webView, false);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.weight = 1.0f;
        this.f2602c.setLayoutParams(layoutParams2);
        this.f2602c.setWebChromeClient(new WebChromeClient() { // from class: cn.sharesdk.framework.authorize.RegisterView.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i10) {
                super.onProgressChanged(webView2, i10);
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) RegisterView.this.f2603d.getLayoutParams();
                layoutParams3.width = (iB * i10) / 100;
                RegisterView.this.f2603d.setLayoutParams(layoutParams3);
                if (i10 <= 0 || i10 >= 100) {
                    RegisterView.this.f2603d.setVisibility(8);
                } else {
                    RegisterView.this.f2603d.setVisibility(0);
                }
            }
        });
        linearLayout.addView(this.f2602c);
        this.f2602c.requestFocus();
    }

    public RegisterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public WebView b() {
        return this.f2602c;
    }

    public View a() {
        return this.f2600a.getBtnBack();
    }

    public void a(boolean z10) {
        this.f2600a.setVisibility(z10 ? 8 : 0);
    }
}
