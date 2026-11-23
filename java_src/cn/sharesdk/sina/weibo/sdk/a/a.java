package cn.sharesdk.sina.weibo.sdk.a;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.sharesdk.framework.utils.n;
import cn.sharesdk.sina.weibo.sdk.LoadingBar;
import com.mob.tools.utils.ResHelper;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f2783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f2784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WebView f2785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LoadingBar f2786d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f2787e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f2788f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Button f2789g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f2790h;

    public a(Context context) {
        this.f2790h = context;
    }

    private void e() {
        n.a(this.f2785c.getSettings(), true);
        n.a(this.f2785c, false);
        this.f2785c.getSettings().setSavePassword(false);
        this.f2785c.getSettings().setUserAgentString(Build.MANUFACTURER + "-" + Build.MODEL + "_" + Build.VERSION.RELEASE + "_weibosdk_0031405000_android");
        this.f2785c.requestFocus();
        this.f2785c.setScrollBarStyle(0);
        this.f2785c.setWebChromeClient(new WebChromeClient() { // from class: cn.sharesdk.sina.weibo.sdk.a.a.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
                a.this.f2786d.a(i10);
                if (i10 == 100) {
                    a.this.f2786d.setVisibility(4);
                } else {
                    a.this.f2786d.setVisibility(0);
                }
            }
        });
    }

    public TextView b() {
        return this.f2783a;
    }

    public WebView c() {
        return this.f2785c;
    }

    public LinearLayout d() {
        return this.f2787e;
    }

    public RelativeLayout a(int i10) {
        RelativeLayout relativeLayout = new RelativeLayout(this.f2790h);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(-1);
        RelativeLayout relativeLayout2 = new RelativeLayout(this.f2790h);
        relativeLayout2.setId(ResHelper.getIdRes(this.f2790h, "ssdk_sina_web_title_id"));
        relativeLayout2.setBackgroundColor(-131587);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, ResHelper.dipToPx(this.f2790h, 55));
        layoutParams.addRule(10);
        relativeLayout.addView(relativeLayout2, layoutParams);
        TextView textView = new TextView(this.f2790h);
        this.f2783a = textView;
        textView.setTextSize(1, 17.0f);
        this.f2783a.setTextColor(cn.sharesdk.sina.weibo.sdk.a.a(-32256, 1728020992));
        int stringRes = ResHelper.getStringRes(this.f2790h, "ssdk_sina_web_close");
        if (stringRes > 0) {
            this.f2783a.setText(stringRes);
        }
        int iDipToPx = ResHelper.dipToPx(this.f2790h, 10);
        this.f2783a.setPadding(iDipToPx, 0, iDipToPx, 0);
        this.f2783a.setOnTouchListener(new View.OnTouchListener() { // from class: cn.sharesdk.sina.weibo.sdk.a.a.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-1);
                    return false;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                view.setBackgroundColor(-131587);
                return false;
            }
        });
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        relativeLayout2.addView(this.f2783a, layoutParams2);
        TextView textView2 = new TextView(this.f2790h);
        this.f2784b = textView2;
        textView2.setTextColor(-11382190);
        this.f2784b.setTextSize(1, 18.0f);
        if (i10 > 0) {
            this.f2784b.setText(i10);
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(13);
        relativeLayout2.addView(this.f2784b, layoutParams3);
        this.f2785c = new WebView(this.f2790h);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams4.addRule(3, relativeLayout2.getId());
        relativeLayout.addView(this.f2785c, layoutParams4);
        this.f2786d = new LoadingBar(this.f2790h);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, ResHelper.dipToPx(this.f2790h, 3));
        layoutParams5.addRule(3, relativeLayout2.getId());
        relativeLayout.addView(this.f2786d, layoutParams5);
        View view = new View(this.f2790h);
        int bitmapRes = ResHelper.getBitmapRes(this.f2790h, "ssdk_weibo_common_shadow_top");
        if (bitmapRes > 0) {
            view.setBackgroundResource(bitmapRes);
        }
        relativeLayout.addView(view, layoutParams5);
        LinearLayout linearLayout = new LinearLayout(this.f2790h);
        this.f2787e = linearLayout;
        linearLayout.setVisibility(8);
        this.f2787e.setGravity(17);
        this.f2787e.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(13);
        relativeLayout.addView(this.f2787e, layoutParams6);
        ImageView imageView = new ImageView(this.f2790h);
        int bitmapRes2 = ResHelper.getBitmapRes(this.f2790h, "ssdk_weibo_empty_failed");
        if (bitmapRes2 > 0) {
            imageView.setImageResource(bitmapRes2);
        }
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams7.bottomMargin = ResHelper.dipToPx(this.f2790h, 8);
        this.f2787e.addView(imageView, layoutParams7);
        this.f2788f = new TextView(this.f2790h);
        int stringRes2 = ResHelper.getStringRes(this.f2790h, "ssdk_sina_web_net_error");
        if (stringRes2 > 0) {
            this.f2788f.setText(stringRes2);
        }
        this.f2788f.setTextColor(-4342339);
        this.f2788f.setTextSize(1, 14.0f);
        this.f2787e.addView(this.f2788f, new LinearLayout.LayoutParams(-2, -2));
        Button button = new Button(this.f2790h);
        this.f2789g = button;
        button.setTextColor(-8882056);
        this.f2789g.setGravity(17);
        this.f2789g.setTextSize(1, 16.0f);
        int stringRes3 = ResHelper.getStringRes(this.f2790h, "ssdk_sina_web_refresh");
        if (stringRes3 > 0) {
            this.f2789g.setText(stringRes3);
        }
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(ResHelper.dipToPx(this.f2790h, 142), ResHelper.dipToPx(this.f2790h, 46));
        layoutParams8.topMargin = iDipToPx;
        this.f2787e.addView(this.f2789g, layoutParams8);
        e();
        return relativeLayout;
    }

    public Button a() {
        return this.f2789g;
    }
}
