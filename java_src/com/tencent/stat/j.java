package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f83942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Integer> f83943b;

    public j(Context context, Map<String, Integer> map) {
        this.f83943b = null;
        this.f83942a = context;
        if (map != null) {
            this.f83943b = map;
        }
    }

    private NetworkMonitor a(String str, int i10) {
        int i11;
        NetworkMonitor networkMonitor = new NetworkMonitor();
        Socket socket = new Socket();
        try {
            try {
                networkMonitor.setDomain(str);
                networkMonitor.setPort(i10);
                long jCurrentTimeMillis = System.currentTimeMillis();
                InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i10);
                socket.connect(inetSocketAddress, 30000);
                networkMonitor.setMillisecondsConsume(System.currentTimeMillis() - jCurrentTimeMillis);
                networkMonitor.setRemoteIp(inetSocketAddress.getAddress().getHostAddress());
                socket.close();
                try {
                    socket.close();
                } catch (Throwable th) {
                    StatService.f83814i.e(th);
                }
                i11 = 0;
            } catch (IOException e10) {
                StatService.f83814i.e((Exception) e10);
                try {
                    socket.close();
                } catch (Throwable th2) {
                    StatService.f83814i.e(th2);
                }
                i11 = -1;
            }
            networkMonitor.setStatusCode(i11);
            return networkMonitor;
        } catch (Throwable th3) {
            try {
                socket.close();
            } catch (Throwable th4) {
                StatService.f83814i.e(th4);
            }
            throw th3;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        StatLogger statLogger;
        String str;
        try {
            if (com.tencent.stat.common.k.h(this.f83942a)) {
                if (this.f83943b == null) {
                    this.f83943b = a();
                }
                Map<String, Integer> map = this.f83943b;
                if (map != null && map.size() != 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry<String, Integer> entry : this.f83943b.entrySet()) {
                        String key = entry.getKey();
                        if (key == null || key.length() == 0) {
                            statLogger = StatService.f83814i;
                            str = "empty domain name.";
                        } else if (entry.getValue() == null) {
                            statLogger = StatService.f83814i;
                            str = "port is null for " + key;
                        } else {
                            jSONArray.put(a(entry.getKey(), entry.getValue().intValue()).toJSONObject());
                        }
                        statLogger.w(str);
                    }
                    if (jSONArray.length() == 0) {
                        return;
                    }
                    Context context = this.f83942a;
                    com.tencent.stat.a.i iVar = new com.tencent.stat.a.i(context, StatService.a(context, false));
                    iVar.a(jSONArray.toString());
                    if (StatService.c(this.f83942a) != null) {
                        StatService.c(this.f83942a).post(new k(iVar));
                        return;
                    }
                    return;
                }
                StatService.f83814i.w("empty domain list.");
            }
        } catch (Throwable th) {
            StatService.f83814i.e(th);
        }
    }

    private Map<String, Integer> a() {
        String str;
        HashMap map = new HashMap();
        String strA = StatConfig.a("__MTA_TEST_SPEED__", (String) null);
        if (strA != null && strA.trim().length() != 0) {
            for (String str2 : strA.split(";")) {
                String[] strArrSplit = str2.split(",");
                if (strArrSplit != null && strArrSplit.length == 2 && (str = strArrSplit[0]) != null && str.trim().length() != 0) {
                    try {
                        map.put(str, Integer.valueOf(Integer.valueOf(strArrSplit[1]).intValue()));
                    } catch (NumberFormatException e10) {
                        StatService.f83814i.e((Exception) e10);
                    }
                }
            }
        }
        return map;
    }
}
