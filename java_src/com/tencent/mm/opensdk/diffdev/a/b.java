package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import android.util.Base64;
import com.coremedia.iso.boxes.k1;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import com.tencent.mm.opensdk.utils.Log;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends AsyncTask<Void, Void, a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f83714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f83715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f83716c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f83717d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f83718e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private OAuthListener f83719f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f83720g;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public OAuthErrCode f83721a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f83722b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f83723c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f83724d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f83725e;

        private a() {
        }

        public static a a(byte[] bArr) {
            OAuthErrCode oAuthErrCode;
            String str;
            a aVar = new a();
            if (bArr == null || bArr.length == 0) {
                Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, buf is null");
                oAuthErrCode = OAuthErrCode.WechatAuth_Err_NetworkErr;
            } else {
                try {
                    try {
                        JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                        int i10 = jSONObject.getInt("errcode");
                        if (i10 != 0) {
                            Log.e("MicroMsg.SDK.GetQRCodeResult", String.format("resp errcode = %d", Integer.valueOf(i10)));
                            aVar.f83721a = OAuthErrCode.WechatAuth_Err_NormalErr;
                            jSONObject.optString("errmsg");
                            return aVar;
                        }
                        String string = jSONObject.getJSONObject("qrcode").getString("qrcodebase64");
                        if (string != null && string.length() != 0) {
                            byte[] bArrDecode = Base64.decode(string, 0);
                            if (bArrDecode != null && bArrDecode.length != 0) {
                                aVar.f83721a = OAuthErrCode.WechatAuth_Err_OK;
                                aVar.f83725e = bArrDecode;
                                aVar.f83722b = jSONObject.getString(k1.f24950p);
                                String string2 = jSONObject.getString("appname");
                                aVar.f83723c = string2;
                                Log.d("MicroMsg.SDK.GetQRCodeResult", String.format("parse succ, save in memory, uuid = %s, appname = %s, imgBufLength = %d", aVar.f83722b, string2, Integer.valueOf(aVar.f83725e.length)));
                                return aVar;
                            }
                            Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBuf is null");
                            aVar.f83721a = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                            return aVar;
                        }
                        Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBase64 is null");
                        aVar.f83721a = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                        return aVar;
                    } catch (Exception e10) {
                        str = String.format("parse json fail, ex = %s", e10.getMessage());
                        Log.e("MicroMsg.SDK.GetQRCodeResult", str);
                        oAuthErrCode = OAuthErrCode.WechatAuth_Err_NormalErr;
                        aVar.f83721a = oAuthErrCode;
                        return aVar;
                    }
                } catch (Exception e11) {
                    str = String.format("parse fail, build String fail, ex = %s", e11.getMessage());
                }
            }
            aVar.f83721a = oAuthErrCode;
            return aVar;
        }
    }

    public b(String str, String str2, String str3, String str4, String str5, OAuthListener oAuthListener) {
        this.f83714a = str;
        this.f83715b = str2;
        this.f83716c = str3;
        this.f83717d = str4;
        this.f83718e = str5;
        this.f83719f = oAuthListener;
    }

    public boolean a() {
        Log.i("MicroMsg.SDK.GetQRCodeTask", "cancelTask");
        c cVar = this.f83720g;
        return cVar == null ? cancel(true) : cVar.cancel(true);
    }

    @Override // android.os.AsyncTask
    protected a doInBackground(Void[] voidArr) throws Throwable {
        Thread.currentThread().setName("OpenSdkGetQRCodeTask");
        Log.i("MicroMsg.SDK.GetQRCodeTask", "doInBackground");
        String str = String.format("https://open.weixin.qq.com/connect/sdk/qrconnect?appid=%s&noncestr=%s&timestamp=%s&scope=%s&signature=%s", this.f83714a, this.f83716c, this.f83717d, this.f83715b, this.f83718e);
        long jCurrentTimeMillis = System.currentTimeMillis();
        byte[] bArrA = com.tencent.mm.opensdk.channel.a.a.a(str, 60000);
        Log.d("MicroMsg.SDK.GetQRCodeTask", String.format("doInBackground, url = %s, time consumed = %d(ms)", str, Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
        return a.a(bArrA);
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(a aVar) {
        a aVar2 = aVar;
        OAuthErrCode oAuthErrCode = aVar2.f83721a;
        if (oAuthErrCode != OAuthErrCode.WechatAuth_Err_OK) {
            Log.e("MicroMsg.SDK.GetQRCodeTask", String.format("onPostExecute, get qrcode fail, OAuthErrCode = %s", oAuthErrCode));
            this.f83719f.onAuthFinish(aVar2.f83721a, null);
            return;
        }
        Log.d("MicroMsg.SDK.GetQRCodeTask", "onPostExecute, get qrcode success imgBufSize = " + aVar2.f83725e.length);
        this.f83719f.onAuthGotQrcode(aVar2.f83724d, aVar2.f83725e);
        c cVar = new c(aVar2.f83722b, this.f83719f);
        this.f83720g = cVar;
        cVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
