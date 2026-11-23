package com.sdk.x;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.sdk.base.api.CallBack;
import com.sdk.base.api.CallBackTimeOut;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.framework.utils.log.MobileLogManager;
import com.sdk.base.module.manager.SDKManager;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f78620h = "com.sdk.x.a";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static ConnectivityManager.NetworkCallback f78622j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static long f78623k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CallBack<T> f78625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f78626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a<T>.d f78627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a<T>.d f78628d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.sdk.a.c f78629e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ConnectivityManager f78630f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Handler f78631g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Boolean f78621i = Boolean.valueOf(com.sdk.f.d.f78521a);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f78624l = "\n";

    /* JADX INFO: renamed from: com.sdk.x.a$a, reason: collision with other inner class name */
    public class HandlerC1019a extends Handler {
        public HandlerC1019a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            a.this.getClass();
            if (100 == message.what) {
                a aVar = a.this;
                if (aVar.f78629e != null) {
                    String str = a.f78620h;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("finish 超时，已取消请求结束时间: ");
                    sb2.append(System.currentTimeMillis());
                    LogUtils.w(str, "超时，已取消请求", a.f78621i);
                    aVar.f78629e.a();
                    aVar.a(1, 101005, "超时");
                }
            }
        }
    }

    public class b implements CallBackTimeOut<T> {
        public b() {
        }

        @Override // com.sdk.base.api.CallBackTimeOut
        public void timeout(int i10, int i11, String str) {
            if (a.this.f78629e != null) {
                LogUtils.w(a.f78620h, "超时，已取消请求", a.f78621i);
                a.this.f78629e.a();
                a.this.a(1, 101005, "超时");
            }
            a<T>.d dVar = a.this.f78627c;
            dVar.f78637a.removeCallbacks(dVar);
        }
    }

    public class c extends ConnectivityManager.NetworkCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f78634a;

        /* JADX INFO: renamed from: com.sdk.x.a$c$a, reason: collision with other inner class name */
        public class C1020a implements com.sdk.e.a<T> {
            public C1020a() {
            }

            @Override // com.sdk.e.a
            public void a(int i10, int i11, String str) {
                LogUtils.d_yl(a.f78620h, "public void getAuthoriseCode onFailure", 0);
                a.this.a(i10, i11, str);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onFailure: ");
                sb2.append(i10);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.sdk.e.a
            public void onSuccess(int i10, String str, int i11, T t10, String str2) {
                Object string;
                String str3 = a.f78620h;
                LogUtils.d_yl(str3, "public void getAuthoriseCode onSuccess", 0);
                com.sdk.p.b.b(a.this.f78626b);
                if (i10 == 0) {
                    try {
                        String string2 = t10.toString();
                        Context context = a.this.f78626b;
                        String strA = com.sdk.s.a.a(String.valueOf(t10));
                        LogUtils.d_yl(str3, "public void getAuthoriseCode ToolsUtils.decryptResponse 后", 0);
                        if (strA == null) {
                            a.this.a(1, 302001, "SDK解密异常");
                            return;
                        }
                        if (SDKManager.useCache()) {
                            c cVar = c.this;
                            Context context2 = a.this.f78626b;
                            int i12 = cVar.f78634a;
                            String strA2 = com.sdk.b.a.a(str, string2, str2, com.sdk.t.a.f78590g);
                            if (com.sdk.r.a.b(strA2).booleanValue()) {
                                String strA3 = com.sdk.b.a.a(i12, "CUCC");
                                if (com.sdk.r.a.b(strA3).booleanValue()) {
                                    com.sdk.j.a.b(context2, strA3, strA2);
                                }
                            }
                        }
                        JSONObject jSONObject = new JSONObject(strA);
                        if (com.sdk.r.a.a(jSONObject.get("accessCode").toString()).booleanValue()) {
                            a.this.a(1, 302001, "SDK解密异常");
                        }
                        if (c.this.f78634a == 1) {
                            jSONObject.remove("fakeMobile");
                            string = jSONObject.toString();
                        } else {
                            if (com.sdk.r.a.a(jSONObject.get("fakeMobile").toString()).booleanValue()) {
                                a.this.a(1, 302001, "SDK解密异常");
                            }
                            string = strA;
                        }
                    } catch (Exception unused) {
                        a.this.a(1, 302001, "SDK解密异常");
                        return;
                    }
                } else {
                    string = t10;
                }
                LogUtils.d_yl(str3, "public void getAuthoriseCode toSucceed 前", 0);
                a.this.a(i10, str, i11, string, str2);
            }
        }

        public c(int i10) {
            this.f78634a = i10;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            ConnectivityManager.NetworkCallback networkCallback;
            String str = a.f78620h;
            LogUtils.d_yl(str, "NetworkCallback onAvailable ", 0);
            super.onAvailable(network);
            if (network != null) {
                try {
                    LogUtils.d_yl(str, "获取网络 onAvailable getUrl", 0);
                    URL urlA = a.a(a.this);
                    a aVar = a.this;
                    aVar.getClass();
                    a<T>.d dVar = a.this.f78628d;
                    dVar.f78637a.removeCallbacks(dVar);
                    a.f78623k = System.currentTimeMillis() - a.f78623k;
                    LogUtils.d_yl(str, "获取网络 onAvailable time= " + a.f78623k, 0);
                } catch (Exception e10) {
                    String str2 = a.f78620h;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onAvailable: ");
                    sb2.append(e10);
                }
            }
            List<String> listA = a.this.a();
            com.sdk.w.a aVar2 = new com.sdk.w.a();
            a aVar3 = a.this;
            aVar3.f78629e = aVar2.a(aVar3.f78626b, this.f78634a, listA, new C1020a());
            ConnectivityManager connectivityManager = a.this.f78630f;
            if (connectivityManager == null || (networkCallback = a.f78622j) == null) {
                return;
            }
            connectivityManager.unregisterNetworkCallback(networkCallback);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            ConnectivityManager.NetworkCallback networkCallback;
            super.onLost(network);
            ConnectivityManager connectivityManager = a.this.f78630f;
            if (connectivityManager != null && (networkCallback = a.f78622j) != null) {
                connectivityManager.unregisterNetworkCallback(networkCallback);
            }
            LogUtils.d_yl(a.f78620h, "NetworkCallback onLost", 0);
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Handler f78637a = new Handler(Looper.getMainLooper());

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f78638b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f78639c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public CallBackTimeOut<T> f78640d;

        public d(a aVar, long j10, int i10, CallBackTimeOut<T> callBackTimeOut) {
            this.f78638b = j10;
            this.f78639c = i10;
            this.f78640d = callBackTimeOut;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f78640d.timeout(1, this.f78639c, "");
        }
    }

    public a(Context context, int i10, CallBack<T> callBack) {
        a(context, i10, callBack);
    }

    public List<String> a() {
        Enumeration<InetAddress> inetAddresses;
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces != null) {
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    if (!networkInterfaceNextElement.isVirtual() && networkInterfaceNextElement.isUp() && (inetAddresses = networkInterfaceNextElement.getInetAddresses()) != null) {
                        while (inetAddresses.hasMoreElements()) {
                            InetAddress inetAddressNextElement = inetAddresses.nextElement();
                            if (!inetAddressNextElement.isLoopbackAddress() && !inetAddressNextElement.isLinkLocalAddress() && !inetAddressNextElement.isMulticastAddress() && !inetAddressNextElement.isAnyLocalAddress() && ((inetAddressNextElement instanceof Inet4Address) || (inetAddressNextElement instanceof Inet6Address))) {
                                arrayList.add(inetAddressNextElement.getHostAddress());
                            }
                        }
                    }
                }
            }
        } catch (SocketException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }

    public static URL a(a aVar) {
        StringBuilder sb2;
        String str;
        aVar.getClass();
        String strA = com.sdk.f.d.b.f78525b.a();
        if (com.sdk.f.d.f78523c) {
            strA = com.sdk.f.d.b.f78526c.a();
        }
        if (com.sdk.t.a.f78589f) {
            sb2 = new StringBuilder();
            sb2.append(strA);
            str = "/dro/netm/v2.0/qc";
        } else {
            sb2 = new StringBuilder();
            sb2.append(strA);
            str = "/dro/netm/v1.0/qc";
        }
        sb2.append(str);
        try {
            return new URL(sb2.toString());
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @SuppressLint({"NewApi", "WrongConstant"})
    public void a(int i10) {
        ConnectivityManager.NetworkCallback networkCallback;
        String str = f78620h;
        LogUtils.d_yl(str, "public void getAuthoriseCode", 0);
        try {
            if (SDKManager.useCache()) {
                String strA = com.sdk.b.a.a(this.f78626b, i10, "CUCC");
                if (com.sdk.r.a.b(strA).booleanValue()) {
                    a(0, OauthResult.RESULT_MSG_SUCCESS, 100, com.sdk.b.a.a(strA), com.sdk.b.a.b(strA));
                    return;
                }
            }
            if (!com.sdk.p.b.a(this.f78626b)) {
                a(1, 201001, "操作频繁,请稍后再试");
                return;
            }
            f78622j = new c(i10);
            f78623k = System.currentTimeMillis();
            LogUtils.d_yl(str, "public void getAuthoriseCode 强开前", 0);
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f78626b.getApplicationContext().getSystemService("connectivity");
            this.f78630f = connectivityManager;
            if (connectivityManager != null && (networkCallback = f78622j) != null) {
                com.sdk.a.a.a(connectivityManager, networkCallback);
            }
            a<T>.d dVar = new d(this, 2000L, 1, new com.sdk.x.b(this));
            this.f78628d = dVar;
            dVar.f78637a.postDelayed(dVar, dVar.f78638b);
        } catch (Exception unused) {
            if (SDKManager.useCache()) {
                String strA2 = com.sdk.b.a.a(this.f78626b, 0, "CUCC");
                if (com.sdk.r.a.b(strA2).booleanValue()) {
                    a(0, OauthResult.RESULT_MSG_SUCCESS, 100, com.sdk.b.a.a(strA2), com.sdk.b.a.b(strA2));
                    return;
                }
            }
            if (com.sdk.p.b.a(this.f78626b)) {
                this.f78629e = new com.sdk.w.a().a(this.f78626b, 0, a(), new com.sdk.x.c(this, 0));
            } else {
                a(1, 201001, "操作频繁,请稍后再试");
            }
        }
    }

    @SuppressLint({"NewApi", "WrongConstant"})
    public final void a(Context context, int i10, CallBack<T> callBack) {
        this.f78625a = callBack;
        this.f78626b = context;
        if (i10 <= 0) {
            i10 = 30;
        }
        Handler handler = this.f78631g;
        if (handler == null) {
            this.f78631g = new HandlerC1019a(Looper.getMainLooper());
        } else {
            handler.removeMessages(100);
        }
        this.f78631g.sendEmptyMessageDelayed(100, ((long) i10) * 1000);
        a<T>.d dVar = new d(this, i10 * 1000, 2, new b());
        this.f78627c = dVar;
        dVar.f78637a.postDelayed(dVar, dVar.f78638b);
        MobileLogManager.init();
        System.currentTimeMillis();
    }

    public final void a(int i10, int i11, String str) {
        String strA;
        try {
            if (com.sdk.r.a.a(MobileLogManager.getMobileLog().f78516c).booleanValue()) {
                strA = "seqAndroidEmpty";
            } else {
                strA = com.sdk.j.a.a(SDKManager.getContext(), RtspHeaders.Values.SEQ, "");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("toFailed seq: ");
                sb2.append(strA);
            }
            String str2 = f78620h;
            LogUtils.d_yl(str2, "toFailed 函数 去掉超时回调 ", 0);
            a<T>.d dVar = this.f78627c;
            if (dVar != null) {
                dVar.f78637a.removeCallbacks(dVar);
            }
            com.sdk.a.c cVar = this.f78629e;
            if (cVar != null) {
                cVar.a();
                this.f78629e = null;
            }
            CallBack<T> callBack = this.f78625a;
            if (callBack != null) {
                callBack.onFailed(i10, i11, str, strA);
                this.f78625a = null;
            }
            SDKManager.releaseConnect(this.f78626b);
            LogUtils.d_yl(str2, "toFailed 函数 releaseConnect 完成", 0);
        } catch (Exception unused) {
            String str3 = MobileLogManager.getMobileLog().f78516c;
            String str4 = com.sdk.r.a.a(str3).booleanValue() ? "seqAndroidEmpty" : str3;
            a<T>.d dVar2 = this.f78627c;
            if (dVar2 != null) {
                dVar2.f78637a.removeCallbacks(dVar2);
            }
            CallBack<T> callBack2 = this.f78625a;
            if (callBack2 != null) {
                callBack2.onFailed(i10, i11, str, str4);
                this.f78625a = null;
            }
            SDKManager.releaseConnect(this.f78626b);
        }
    }

    public final void a(int i10, String str, int i11, T t10, String str2) {
        try {
            if (com.sdk.r.a.a(str2).booleanValue()) {
                str2 = com.sdk.j.a.a(SDKManager.getContext(), RtspHeaders.Values.SEQ, "");
                if (com.sdk.r.a.a(str2).booleanValue()) {
                    str2 = "seqAndroidEmpty";
                }
            }
            String str3 = f78620h;
            LogUtils.d_yl(str3, "去掉超时回调", 0);
            a<T>.d dVar = this.f78627c;
            if (dVar != null) {
                dVar.f78637a.removeCallbacks(dVar);
            }
            com.sdk.a.c cVar = this.f78629e;
            if (cVar != null) {
                cVar.a();
                this.f78629e = null;
            }
            CallBack<T> callBack = this.f78625a;
            if (callBack != null) {
                callBack.onSuccess(i10, str, i11, t10, str2);
                this.f78625a = null;
            }
            SDKManager.releaseConnect(this.f78626b);
            LogUtils.d_yl(str3, "toSucceed 函数 releaseConnect 完成", 0);
        } catch (Exception unused) {
            String str4 = com.sdk.r.a.a(str2).booleanValue() ? "seqAndroidEmpty" : str2;
            a<T>.d dVar2 = this.f78627c;
            if (dVar2 != null) {
                dVar2.f78637a.removeCallbacks(dVar2);
            }
            CallBack<T> callBack2 = this.f78625a;
            if (callBack2 != null) {
                callBack2.onSuccess(i10, str, i11, t10, str4);
                this.f78625a = null;
            }
            SDKManager.releaseConnect(this.f78626b);
            LogUtils.d_yl(f78620h, "toSucceed 异常函数 releaseConnect 完成", 0);
        }
    }
}
