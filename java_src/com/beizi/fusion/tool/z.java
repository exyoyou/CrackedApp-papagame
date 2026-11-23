package com.beizi.fusion.tool;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.baidu.mobads.sdk.internal.bn;
import com.beizi.fusion.model.RequestInfo;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static z f10682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f10683b;

    private static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j f10684a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f10685b;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f10684a == null) {
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = this.f10685b;
            this.f10684a.sendMessage(messageObtain);
        }

        private a(final Context context) {
            this.f10685b = 100100;
            this.f10684a = new j(context) { // from class: com.beizi.fusion.tool.z.a.1
                @Override // com.beizi.fusion.tool.j
                public void a(Message message) {
                    Context contextA;
                    if (message == null) {
                        return;
                    }
                    try {
                        if (message.what == a.this.f10685b && (contextA = a()) != null) {
                            if (System.currentTimeMillis() - as.b(context, "updateUserAgentTime") < bn.f7593e) {
                                return;
                            }
                            WebView webView = new WebView(contextA);
                            WebView.setWebContentsDebuggingEnabled(false);
                            webView.getSettings().setSavePassword(false);
                            String userAgentString = webView.getSettings().getUserAgentString();
                            RequestInfo.getInstance(contextA).updateUserAgent(userAgentString);
                            com.beizi.ad.b.d(userAgentString);
                            as.a(contextA, "userAgent", userAgentString);
                            as.a(contextA, "updateUserAgentTime", Long.valueOf(System.currentTimeMillis()));
                        }
                    } catch (Exception unused) {
                    }
                }
            };
        }
    }

    public static synchronized z a() {
        if (f10682a == null) {
            synchronized (z.class) {
                f10682a = new z();
            }
        }
        return f10682a;
    }

    public void b(Context context) {
        if (TextUtils.isEmpty(this.f10683b)) {
            Executors.newSingleThreadScheduledExecutor().schedule(new a(context), 15000L, TimeUnit.MILLISECONDS);
        }
    }

    public String a(Context context) {
        if (TextUtils.isEmpty(this.f10683b)) {
            this.f10683b = as.a(context, "userAgent");
        }
        try {
            if (TextUtils.isEmpty(this.f10683b)) {
                this.f10683b = WebSettings.getDefaultUserAgent(context);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return this.f10683b;
    }

    public void a(String str) {
        this.f10683b = str;
    }
}
