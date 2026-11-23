package cn.sharesdk.tencent.qq;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.h;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.net.URLDecoder;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class a extends cn.sharesdk.framework.authorize.b {
    public a(WebAuthorizeActivity webAuthorizeActivity) {
        super(webAuthorizeActivity);
    }

    private void a(HashMap<String, String> map) {
        String str = map.get("access_token");
        String str2 = map.get("expires_in");
        String str3 = map.get("error");
        String str4 = map.get("error_description");
        String str5 = map.get("pf");
        String str6 = map.get("pfkey");
        String str7 = map.get("pay_token");
        if (TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str3)) {
                this.listener.onError(new Throwable());
                return;
            }
            String str8 = str4 + " (" + str3 + ")";
            AuthorizeListener authorizeListener = this.listener;
            if (authorizeListener != null) {
                authorizeListener.onError(new Throwable(str8));
                return;
            }
            return;
        }
        try {
            HashMap<String, Object> mapC = cn.sharesdk.tencent.qq.utils.a.a(this.activity.getHelper().getPlatform()).c(str);
            if (mapC != null && mapC.size() > 0) {
                if (!mapC.containsKey("openid")) {
                    AuthorizeListener authorizeListener2 = this.listener;
                    if (authorizeListener2 != null) {
                        authorizeListener2.onError(new Throwable());
                        return;
                    }
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putString("access_token", str);
                bundle.putString("open_id", String.valueOf(mapC.get("openid")));
                bundle.putString("expires_in", str2);
                bundle.putString("pf", str5);
                bundle.putString("pfkey", str6);
                bundle.putString("pay_token", str7);
                AuthorizeListener authorizeListener3 = this.listener;
                if (authorizeListener3 != null) {
                    authorizeListener3.onComplete(bundle);
                    return;
                }
                return;
            }
            AuthorizeListener authorizeListener4 = this.listener;
            if (authorizeListener4 != null) {
                authorizeListener4.onError(new Throwable());
            }
        } catch (Throwable th) {
            AuthorizeListener authorizeListener5 = this.listener;
            if (authorizeListener5 != null) {
                authorizeListener5.onError(th);
            }
        }
    }

    @Override // cn.sharesdk.framework.authorize.b
    protected void onComplete(String str) {
        if (str.startsWith(this.redirectUri)) {
            str = str.substring(str.indexOf(35) + 1);
        }
        String[] strArrSplit = str.split(x.a.f97576d);
        HashMap<String, String> map = new HashMap<>();
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split(SimpleComparison.EQUAL_TO_OPERATION);
            if (strArrSplit2.length < 2) {
                map.put(URLDecoder.decode(strArrSplit2[0]), "");
            } else {
                String strDecode = URLDecoder.decode(strArrSplit2[0]);
                String str3 = strArrSplit2[1];
                map.put(strDecode, URLDecoder.decode(str3 != null ? str3 : ""));
            }
        }
        a(map);
    }

    @Override // cn.sharesdk.framework.h, android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
        String[] strArr;
        String strValueOf;
        String strValueOf2;
        if (!(webView.getContext() instanceof Activity)) {
            sslErrorHandler.cancel();
            return;
        }
        Activity activity = (Activity) webView.getContext();
        if ("zh".equals(h.a())) {
            strArr = new String[]{String.valueOf(new char[]{19981, 21463, 20449, 20219, 30340, 35777, 20070, 12290, 20320, 35201, 32487, 32493, 21527, 65311}), String.valueOf(new char[]{35777, 20070, 24050, 36807, 26399, 12290, 20320, 35201, 32487, 32493, 21527, 65311}), String.valueOf(new char[]{35777, 20070, 'I', 'D', 19981, 21305, 37197, 12290, 20320, 35201, 32487, 32493, 21527, 65311}), String.valueOf(new char[]{35777, 20070, 23578, 26410, 29983, 25928, 12290, 20320, 35201, 32487, 32493, 21527, 65311}), String.valueOf(new char[]{35777, 20070, 38169, 35823, 12290, 20320, 35201, 32487, 32493, 21527, 65311})};
            strValueOf = String.valueOf(new char[]{35777, 20070, 38169, 35823});
            String.valueOf(new char[]{32487, 32493});
            strValueOf2 = String.valueOf(new char[]{20572, 27490});
        } else {
            strArr = new String[]{"Certificate is untrusted. Do you want to continue anyway?", "Certificate has expired. Do you want to continue anyway?", "Certificate ID is mismatched. Do you want to continue anyway?", "Certificate is not yet valid. Do you want to continue anyway?", "Certificate error. Do you want to continue anyway?"};
            strValueOf = "SSL Certificate Error";
            strValueOf2 = "No";
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(strValueOf);
        int primaryError = sslError.getPrimaryError();
        if (primaryError == 0) {
            builder.setMessage(strArr[3]);
        } else if (primaryError == 1) {
            builder.setMessage(strArr[1]);
        } else if (primaryError == 2) {
            builder.setMessage(strArr[2]);
        } else if (primaryError != 3) {
            builder.setMessage(strArr[4]);
        } else {
            builder.setMessage(strArr[0]);
        }
        builder.setCancelable(false);
        builder.setNegativeButton(strValueOf2, new DialogInterface.OnClickListener() { // from class: cn.sharesdk.tencent.qq.a.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                dialogInterface.dismiss();
                sslErrorHandler.cancel();
            }
        });
        try {
            builder.create().show();
        } catch (Throwable th) {
            SSDKLog.b().b(th);
        }
    }

    @Override // cn.sharesdk.framework.h, android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, final String str) {
        if (!str.startsWith(this.redirectUri)) {
            webView.loadUrl(str);
            return true;
        }
        webView.setVisibility(4);
        webView.stopLoading();
        this.activity.finish();
        new Thread() { // from class: cn.sharesdk.tencent.qq.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    a.this.onComplete(str);
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                }
            }
        }.start();
        return true;
    }
}
