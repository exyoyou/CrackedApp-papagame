package com.papa.sim.statistic;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.ax;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.v0;
import com.papa.sim.statistic.db.BossTable;
import com.papa.sim.statistic.db.StatisticTable;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.point.PointType;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

/* JADX INFO: loaded from: classes2.dex */
public class s {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static s f77323q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private y7.a f77329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f77330d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f77332f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static Map<String, String> f77318l = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f77319m = "http://datainterface.wufan88.com";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f77320n = "http://cjapi.wufan88.com";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f77321o = "http://anv9.ctapi.wufan88.com";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static String f77322p = "http://anv9.ctapi.wufan88.com";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static String f77324r = "";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static String f77325s = "";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static String f77326t = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f77327a = "StatCore";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f77328b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f77331e = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f77333g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long f77334h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f77335i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f77336j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f77337k = false;

    class a implements com.papa.sim.statistic.http.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f77338a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ StatisticTable f77339b;

        a(Context context, StatisticTable statisticTable) {
            this.f77338a = context;
            this.f77339b = statisticTable;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            exc.printStackTrace();
            if (this.f77339b.getIsdirect() == 0) {
                String unused = s.this.f77327a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("method [onFailure]:send failed. statisticTable.id= ");
                sb2.append(this.f77339b.getId());
                sb2.append(";time=");
                sb2.append(this.f77339b.getTime());
                s.this.f77329c.v(this.f77339b.getType(), this.f77339b.getTime());
                return;
            }
            String unused2 = s.this.f77327a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("method [onFailure]:send failed. statisticTable.id= ");
            sb3.append(this.f77339b.getId());
            sb3.append(";time=");
            sb3.append(this.f77339b.getTime());
            s.this.f77329c.r(this.f77339b);
        }

        @Override // com.papa.sim.statistic.http.a
        public void onSuccess(Object obj) {
            File file = new File(s.this.h(this.f77338a, this.f77339b).getExt().getLogFile());
            if (file.exists()) {
                file.delete();
            }
        }
    }

    class b implements com.papa.sim.statistic.http.a<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StatisticTable f77341a;

        b(StatisticTable statisticTable) {
            this.f77341a = statisticTable;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            exc.printStackTrace();
            if (this.f77341a.getIsdirect() == 0) {
                String unused = s.this.f77327a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("method [onFailure]:send failed. statisticTable.id= ");
                sb2.append(this.f77341a.getId());
                sb2.append(";time=");
                sb2.append(this.f77341a.getTime());
                s.this.f77329c.v(this.f77341a.getType(), this.f77341a.getTime());
                return;
            }
            String unused2 = s.this.f77327a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("method [onFailure]:send failed. statisticTable.id= ");
            sb3.append(this.f77341a.getId());
            sb3.append(";time=");
            sb3.append(this.f77341a.getTime());
            s.this.f77329c.r(this.f77341a);
        }

        @Override // com.papa.sim.statistic.http.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(String str) {
            if (this.f77341a.getIsdirect() == 0) {
                String unused = s.this.f77327a;
                s.this.f77329c.delete(this.f77341a);
            } else {
                String unused2 = s.this.f77327a;
                s.this.f77329c.e(this.f77341a);
            }
        }
    }

    class c implements com.papa.sim.statistic.http.a<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StatisticTable f77343a;

        c(StatisticTable statisticTable) {
            this.f77343a = statisticTable;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            if (this.f77343a.getIsdirect() == 0) {
                String unused = s.this.f77327a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("method [onFailure]:send failed. statisticTable.id= ");
                sb2.append(this.f77343a.getId());
                sb2.append(";time=");
                sb2.append(this.f77343a.getTime());
                s.this.f77329c.v(this.f77343a.getType(), this.f77343a.getTime());
                return;
            }
            String unused2 = s.this.f77327a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("method [onFailure]:send failed. statisticTable.id= ");
            sb3.append(this.f77343a.getId());
            sb3.append(";time=");
            sb3.append(this.f77343a.getTime());
            s.this.f77329c.r(this.f77343a);
        }

        @Override // com.papa.sim.statistic.http.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(String str) {
            if (this.f77343a.getIsdirect() == 0) {
                String unused = s.this.f77327a;
                s.this.f77329c.delete(this.f77343a);
            } else {
                String unused2 = s.this.f77327a;
                s.this.f77329c.e(this.f77343a);
            }
        }
    }

    class d implements com.papa.sim.statistic.http.a<StatResult> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StatisticTable f77345a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f77346b;

        d(StatisticTable statisticTable, Context context) {
            this.f77345a = statisticTable;
            this.f77346b = context;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            exc.printStackTrace();
            if (this.f77345a.getType().equals(Event.appPageVisit) || this.f77345a.getType().equals(Event.appPageClick) || this.f77345a.getType().equals(Event.appPageDownload)) {
                return;
            }
            try {
                if (this.f77345a.getIsdirect() == 0) {
                    String unused = s.this.f77327a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("method [onFailure]:send failed. statisticTable.id= ");
                    sb2.append(this.f77345a.getId());
                    sb2.append(";time=");
                    sb2.append(this.f77345a.getTime());
                    s.this.f77329c.v(this.f77345a.getType(), this.f77345a.getTime());
                } else {
                    String unused2 = s.this.f77327a;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("method [onFailure]:send failed. statisticTable.id= ");
                    sb3.append(this.f77345a.getId());
                    sb3.append(";time=");
                    sb3.append(this.f77345a.getTime());
                    s.this.f77329c.r(this.f77345a);
                }
            } catch (Exception unused3) {
            }
        }

        @Override // com.papa.sim.statistic.http.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(StatResult statResult) {
            if (statResult == null) {
                return;
            }
            String unused = s.this.f77327a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("statResult=");
            sb2.append(JsonMapper.getInstance().toJson(statResult));
            if ("ok".equals(statResult.getStatus())) {
                if (this.f77345a.getType().equals(Event.startApp.name())) {
                    com.papa.sim.statistic.pref.b.k(this.f77346b).K(this.f77345a.getTime());
                } else if (this.f77345a.getType().equals(Event.gameList.name())) {
                    com.papa.sim.statistic.pref.b.k(this.f77346b).C(this.f77345a.getTime());
                }
                if (this.f77345a.getIsdirect() == 0) {
                    String unused2 = s.this.f77327a;
                    s.this.f77329c.delete(this.f77345a);
                    return;
                } else {
                    String unused3 = s.this.f77327a;
                    s.this.f77329c.e(this.f77345a);
                    return;
                }
            }
            if (this.f77345a.getType().equals(Event.appPageVisit) || this.f77345a.getType().equals(Event.appPageClick) || this.f77345a.getType().equals(Event.appPageDownload)) {
                return;
            }
            if (this.f77345a.getIsdirect() == 0) {
                String unused4 = s.this.f77327a;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("method [onSuccess]:send failed. send to 1.statisticTable.id= ");
                sb3.append(this.f77345a.getId());
                sb3.append(";time=");
                sb3.append(this.f77345a.getTime());
                s.this.f77329c.v(this.f77345a.getType(), this.f77345a.getTime());
                return;
            }
            String unused5 = s.this.f77327a;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("method [onSuccess]:send failed.save it to db .statisticTable.id= ");
            sb4.append(this.f77345a.getId());
            sb4.append(";time=");
            sb4.append(this.f77345a.getTime());
            s.this.f77329c.r(this.f77345a);
        }
    }

    class e implements com.papa.sim.statistic.http.a<StatResult> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f77348a;

        e(List list) {
            this.f77348a = list;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            exc.printStackTrace();
            String unused = s.this.f77327a;
            try {
                ArrayList arrayList = new ArrayList();
                for (StatisticTable statisticTable : this.f77348a) {
                    if (!statisticTable.getType().equals(Event.appPageVisit) && !statisticTable.getType().equals(Event.appPageClick) && !statisticTable.getType().equals(Event.appPageDownload)) {
                        if (statisticTable.getIsdirect() == 0) {
                            String unused2 = s.this.f77327a;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("method [onFailure]:send failed. statisticTable.id= ");
                            sb2.append(statisticTable.getId());
                            sb2.append(";time=");
                            sb2.append(statisticTable.getTime());
                            try {
                                s.this.f77329c.v(statisticTable.getType(), statisticTable.getTime());
                            } catch (Exception unused3) {
                            }
                        } else {
                            String unused4 = s.this.f77327a;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("method [onFailure]:send failed. statisticTable.id= ");
                            sb3.append(statisticTable.getId());
                            sb3.append(";time=");
                            sb3.append(statisticTable.getTime());
                            arrayList.add(statisticTable);
                        }
                    }
                    return;
                }
                s.this.f77329c.s(arrayList);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            s.this.f77333g = false;
        }

        @Override // com.papa.sim.statistic.http.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(StatResult statResult) {
            if (statResult != null) {
                try {
                    String unused = s.this.f77327a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("statResult=");
                    sb2.append(JsonMapper.getInstance().toJson(statResult));
                    if (s.this.f77328b) {
                        StringBuffer stringBuffer = new StringBuffer();
                        Iterator it2 = this.f77348a.iterator();
                        while (it2.hasNext()) {
                            stringBuffer.append(((StatisticTable) it2.next()).getType() + "; ");
                        }
                        k.c(s.this.f77327a, stringBuffer.toString(), "send success");
                    }
                    ArrayList arrayList = new ArrayList();
                    for (StatisticTable statisticTable : this.f77348a) {
                        if (!"ok".equals(statResult.getStatus())) {
                            if (!statisticTable.getType().equals(Event.appPageVisit) && !statisticTable.getType().equals(Event.appPageClick) && !statisticTable.getType().equals(Event.appPageDownload)) {
                                if (statisticTable.getIsdirect() == 0) {
                                    String unused2 = s.this.f77327a;
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("method [onSuccess]:send failed. send to 1.statisticTable.id= ");
                                    sb3.append(statisticTable.getId());
                                    sb3.append(";time=");
                                    sb3.append(statisticTable.getTime());
                                    s.this.f77329c.v(statisticTable.getType(), statisticTable.getTime());
                                } else {
                                    String unused3 = s.this.f77327a;
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("method [onSuccess]:send failed.save it to db .statisticTable.id= ");
                                    sb4.append(statisticTable.getId());
                                    sb4.append(";time=");
                                    sb4.append(statisticTable.getTime());
                                    arrayList.add(statisticTable);
                                }
                            }
                            return;
                        }
                        if (statisticTable.getType().equals(Event.startApp.name())) {
                            com.papa.sim.statistic.pref.b.k(s.this.f77330d).K(statisticTable.getTime());
                        } else if (statisticTable.getType().equals(Event.gameList.name())) {
                            com.papa.sim.statistic.pref.b.k(s.this.f77330d).C(statisticTable.getTime());
                        }
                        if (statisticTable.getIsdirect() == 0) {
                            String unused4 = s.this.f77327a;
                            s.this.f77329c.delete(statisticTable);
                        } else {
                            String unused5 = s.this.f77327a;
                            s.this.f77329c.e(statisticTable);
                        }
                    }
                    List<StatisticTable> listK = s.this.f77329c.k();
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(listK.size());
                    sb5.append("");
                    s.this.f77329c.s(arrayList);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            s.this.f77333g = false;
            String unused6 = s.this.f77327a;
        }
    }

    class f implements com.papa.sim.statistic.http.a<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f77350a;

        f(List list) {
            this.f77350a = list;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            ArrayList arrayList = new ArrayList();
            for (StatisticTable statisticTable : this.f77350a) {
                if (statisticTable.getIsdirect() == 0) {
                    String unused = s.this.f77327a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("method [onFailure]:send failed. statisticTable.id= ");
                    sb2.append(statisticTable.getId());
                    sb2.append(";time=");
                    sb2.append(statisticTable.getTime());
                    s.this.f77329c.v(statisticTable.getType(), statisticTable.getTime());
                } else {
                    String unused2 = s.this.f77327a;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("method [onFailure]:send failed. statisticTable.id= ");
                    sb3.append(statisticTable.getId());
                    sb3.append(";time=");
                    sb3.append(statisticTable.getTime());
                    arrayList.add(statisticTable);
                }
            }
            if (arrayList.size() > 0) {
                s.this.f77329c.s(arrayList);
            }
            if (exc != null) {
                exc.printStackTrace();
            }
        }

        @Override // com.papa.sim.statistic.http.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(String str) {
            for (StatisticTable statisticTable : this.f77350a) {
                if (statisticTable.getIsdirect() == 0) {
                    String unused = s.this.f77327a;
                    s.this.f77329c.delete(statisticTable);
                } else {
                    String unused2 = s.this.f77327a;
                    s.this.f77329c.e(statisticTable);
                }
            }
        }
    }

    public interface g {
        int a();

        int b();
    }

    private s(Context context) {
        this.f77330d = context;
        this.f77329c = y7.a.o(context);
    }

    private void Z(List<StatisticTable> list) {
        if (com.papa.sim.statistic.pref.b.k(this.f77330d).s()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (StatisticTable statisticTable : list) {
            if (Event.pluginPlayTime.name().equals(statisticTable.getType())) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("sendAllData: ");
                sb2.append(JsonMapper.toJsonString(statisticTable));
                list.remove(statisticTable);
            } else {
                StatRequest statRequestH = h(this.f77330d, statisticTable);
                if (this.f77331e != null) {
                    statRequestH.getData().setPageVersion(this.f77331e.a());
                }
                if (TextUtils.isEmpty(statRequestH.getExt().getEmuCount())) {
                    statRequestH.getExt().setEmuCount(u.m());
                }
                if (statRequestH.getUid() == 0 || statRequestH.getExt().getUid() == 0) {
                    try {
                        statRequestH.setUid(Integer.parseInt(t.l(this.f77330d).n().a(this.f77330d)));
                        statRequestH.getExt().setUid(Integer.parseInt(t.l(this.f77330d).n().a(this.f77330d)));
                    } catch (Exception unused) {
                    }
                }
                if (this.f77328b) {
                    k.c(this.f77327a, JsonMapper.toJsonString(statRequestH.getExt()), statRequestH.getEvent());
                }
                arrayList.add(statRequestH);
            }
        }
        String json = JsonMapper.getInstance().toJson(arrayList);
        if (this.f77328b) {
            k.c(this.f77327a, json, "all-10");
        }
        try {
            json = com.papa.sim.statistic.a.b(json, "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.papa.sim.statistic.http.c.c().g(f77319m + "/data/batch/v3", json, new e(list));
    }

    private void g() {
        if (this.f77332f) {
            return;
        }
        this.f77332f = com.papa.sim.statistic.http.c.c().f(this.f77330d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:174:0x05d1 A[Catch: Exception -> 0x0f19, TRY_LEAVE, TryCatch #15 {Exception -> 0x0f19, blocks: (B:3:0x0003, B:6:0x0011, B:8:0x0021, B:10:0x0031, B:12:0x0041, B:14:0x0051, B:16:0x0061, B:18:0x0071, B:20:0x0081, B:22:0x0091, B:24:0x00a1, B:26:0x00b1, B:28:0x00c1, B:30:0x00d1, B:32:0x00e1, B:34:0x00f1, B:36:0x0101, B:38:0x0111, B:40:0x0121, B:42:0x0131, B:44:0x0141, B:46:0x0151, B:48:0x0161, B:50:0x0171, B:52:0x0181, B:54:0x0191, B:56:0x01a1, B:58:0x01b1, B:60:0x01c1, B:62:0x01d1, B:64:0x01e1, B:66:0x01f1, B:68:0x0201, B:70:0x0211, B:72:0x0221, B:74:0x0231, B:76:0x0241, B:78:0x0251, B:80:0x0261, B:82:0x0271, B:84:0x0281, B:86:0x0291, B:88:0x02a1, B:90:0x02b1, B:92:0x02c1, B:94:0x02d1, B:96:0x02e1, B:98:0x02f1, B:100:0x0301, B:102:0x0311, B:104:0x0321, B:106:0x0331, B:108:0x0341, B:110:0x0351, B:112:0x0361, B:114:0x0371, B:116:0x0381, B:118:0x0391, B:120:0x03a1, B:122:0x03b1, B:124:0x03c1, B:126:0x03d1, B:128:0x03e1, B:130:0x03f1, B:132:0x0401, B:134:0x0411, B:136:0x0421, B:138:0x0431, B:140:0x0441, B:142:0x0451, B:144:0x0461, B:146:0x0471, B:148:0x0481, B:150:0x0491, B:152:0x04a1, B:154:0x04b1, B:156:0x04c1, B:168:0x0506, B:170:0x056a, B:171:0x0571, B:173:0x058f, B:165:0x04f5, B:174:0x05d1), top: B:476:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x05f3 A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:187:0x0611 A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:195:0x0645 A[Catch: Exception -> 0x0658, TryCatch #5 {Exception -> 0x0658, blocks: (B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654), top: B:458:0x063f, outer: #8 }] */
    /* JADX WARN: Code duplicated, block: B:199:0x0654 A[Catch: Exception -> 0x0658, TRY_LEAVE, TryCatch #5 {Exception -> 0x0658, blocks: (B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654), top: B:458:0x063f, outer: #8 }] */
    /* JADX WARN: Code duplicated, block: B:205:0x0668 A[Catch: Exception -> 0x0679, TryCatch #14 {Exception -> 0x0679, blocks: (B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:474:0x0662, outer: #8 }] */
    /* JADX WARN: Code duplicated, block: B:207:0x066e A[Catch: Exception -> 0x0679, TryCatch #14 {Exception -> 0x0679, blocks: (B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:474:0x0662, outer: #8 }] */
    /* JADX WARN: Code duplicated, block: B:214:0x06e5 A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:218:0x0715 A[Catch: Exception -> 0x0f14, TRY_ENTER, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:219:0x072d A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:221:0x0734 A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:223:0x073e A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:227:0x0754 A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:230:0x077d A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:231:0x07e8 A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:233:0x07f8 A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:234:0x081e A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:236:0x082e A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:241:0x0850 A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:242:0x0859 A[Catch: Exception -> 0x0f14, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:244:0x0869  */
    /* JADX WARN: Code duplicated, block: B:245:0x086b A[Catch: Exception -> 0x0f14, TRY_LEAVE, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:248:0x087d A[Catch: Exception -> 0x0f14, TRY_ENTER, TryCatch #8 {Exception -> 0x0f14, blocks: (B:175:0x05d6, B:177:0x05dc, B:185:0x05f6, B:187:0x0611, B:188:0x0616, B:212:0x0680, B:214:0x06e5, B:215:0x06ec, B:218:0x0715, B:416:0x0ed8, B:419:0x0ee4, B:421:0x0eee, B:422:0x0ef5, B:219:0x072d, B:221:0x0734, B:223:0x073e, B:225:0x074e, B:227:0x0754, B:228:0x0777, B:230:0x077d, B:231:0x07e8, B:233:0x07f8, B:234:0x081e, B:236:0x082e, B:239:0x0840, B:241:0x0850, B:242:0x0859, B:245:0x086b, B:248:0x087d, B:251:0x088f, B:253:0x089f, B:255:0x08af, B:258:0x08c1, B:260:0x08d1, B:263:0x08d8, B:264:0x08ec, B:266:0x08fc, B:269:0x090e, B:271:0x091e, B:273:0x092e, B:275:0x093e, B:277:0x094e, B:280:0x0960, B:284:0x09a1, B:286:0x09b1, B:290:0x09c0, B:291:0x09c8, B:293:0x09d8, B:294:0x09f0, B:296:0x0a00, B:299:0x0a12, B:301:0x0a22, B:304:0x0a48, B:306:0x0a58, B:307:0x0aa4, B:309:0x0ab4, B:310:0x0ac5, B:312:0x0ad5, B:315:0x0ae7, B:319:0x0b1d, B:321:0x0b2d, B:323:0x0b3d, B:325:0x0b4d, B:327:0x0b5d, B:329:0x0b6d, B:332:0x0b7f, B:334:0x0b8f, B:337:0x0ba1, B:339:0x0bb1, B:340:0x0bc5, B:342:0x0bd5, B:344:0x0be5, B:346:0x0bf5, B:348:0x0c05, B:350:0x0c15, B:352:0x0c25, B:354:0x0c35, B:356:0x0c45, B:358:0x0c55, B:360:0x0c65, B:362:0x0c75, B:365:0x0c87, B:367:0x0c97, B:369:0x0ca7, B:371:0x0cb7, B:373:0x0cc7, B:375:0x0cd7, B:377:0x0ce7, B:379:0x0cf7, B:381:0x0d07, B:384:0x0d18, B:386:0x0d28, B:387:0x0d38, B:389:0x0d48, B:390:0x0d4f, B:391:0x0d6b, B:392:0x0d83, B:398:0x0e01, B:399:0x0e08, B:406:0x0e44, B:408:0x0e54, B:409:0x0e5d, B:424:0x0f05, B:211:0x067a, B:202:0x0659, B:192:0x063c, B:183:0x05ec, B:184:0x05f3, B:180:0x05e3, B:193:0x063f, B:195:0x0645, B:198:0x064c, B:199:0x0654, B:287:0x09b6, B:189:0x062f, B:203:0x0662, B:205:0x0668, B:208:0x0671, B:207:0x066e), top: B:463:0x05d6, inners: #2, #5, #11, #12, #14 }] */
    /* JADX WARN: Code duplicated, block: B:413:0x0e88 A[Catch: Exception -> 0x0f04, TryCatch #16 {Exception -> 0x0f04, blocks: (B:411:0x0e6d, B:413:0x0e88, B:415:0x0e99, B:414:0x0e92), top: B:477:0x0e6d }] */
    /* JADX WARN: Code duplicated, block: B:414:0x0e92 A[Catch: Exception -> 0x0f04, TryCatch #16 {Exception -> 0x0f04, blocks: (B:411:0x0e6d, B:413:0x0e88, B:415:0x0e99, B:414:0x0e92), top: B:477:0x0e6d }] */
    /* JADX WARN: Code duplicated, block: B:418:0x0ee2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:477:0x0e6d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public StatRequest h(Context context, StatisticTable statisticTable) {
        StatRequest statRequest;
        String uid;
        Ext ext;
        Data data;
        g gVar;
        StatJsonRawData statJsonRawData;
        StatRequest statRequest2;
        Data data2;
        Ext ext2;
        String countType;
        String ad2;
        StatRequest statRequest3;
        StatRequest statRequest4 = null;
        try {
            if (statisticTable.getNewData() == 1) {
                statRequest = new StatRequest();
                try {
                    uid = statisticTable.getUid();
                    if (uid != null || uid.equals("")) {
                        statRequest.setUid(0);
                    } else {
                        try {
                            statRequest.setUid(Integer.parseInt(uid));
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            statRequest.setUid(0);
                        }
                    }
                    statRequest.setId(statisticTable.getId());
                    statRequest.setDeviceId(u.f(context).b());
                    statRequest.setVersion("0.3");
                    ext = statRequest.getExt();
                    if (ext == null) {
                        ext = new Ext();
                    }
                    ext.setUid(statRequest.getUid());
                    statRequest.setEvent(statisticTable.getType());
                    statRequest.setMac(u.f(context).g());
                    try {
                        statRequest.setTime(Long.parseLong(statisticTable.getTime()));
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    try {
                        ad2 = statisticTable.getAd();
                        if (ad2 != null || ad2.equals("")) {
                            statRequest.setAd(0);
                        } else {
                            statRequest.setAd(Integer.parseInt(ad2));
                        }
                    } catch (Exception e12) {
                        e12.getMessage();
                        e12.printStackTrace();
                        statRequest.setAd(0);
                    }
                    try {
                        countType = statisticTable.getCountType();
                        if (countType != null || countType.equals("")) {
                            statRequest.setCountType(0);
                        }
                        statRequest.setCountType(Integer.parseInt(countType));
                    } catch (Exception e13) {
                        e13.getMessage();
                        statRequest.setCountType(0);
                    }
                    data = new Data();
                    data.setModel(Build.MODEL);
                    data.setBrand(Build.BRAND);
                    data.setSdkInt(Build.VERSION.SDK_INT);
                    data.setAndroidId(u.f(context).a(context));
                    data.setOaid(u.f(context).j());
                    data.setWfuuid(u.f(context).k());
                    data.setImei(u.f(context).d());
                    data.setGdevid(u.f(context).c());
                    data.setUmengid(u.f(context).n(context));
                    data.setMac(u.f(context).g());
                    gVar = this.f77331e;
                    if (gVar != null) {
                        data.setPageVersion(gVar.a());
                    }
                    String[] strArrR = u.f(context).r();
                    data.setAppVersion(strArrR[0] + "_" + strArrR[1]);
                    if (statisticTable.getNewData() == 1) {
                        ext = (Ext) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), Ext.class);
                        ext.setUid(statRequest.getUid());
                    } else if (statisticTable.getNewData() == 2) {
                        if (!"".equals(statisticTable.getArgs1()) && (statRequest2 = (StatRequest) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatRequest.class)) != null) {
                            data2 = statRequest2.getData();
                            if (data2 != null) {
                                data.setWhere(data2.getWhere());
                                data.setArticleId(data2.getArticleId());
                                data.setUid(data2.getUid());
                                data.setGameId(data2.getGameId());
                                data.setWhere(data2.getWhere());
                            }
                            ext2 = statRequest2.getExt();
                            if (ext2 != null) {
                                ext.setFrom(ext2.getFrom());
                                ext.setFromTabId(ext2.getFromTabId());
                                ext.setArticleId(ext2.getArticleId());
                                ext.setGameFlag(ext2.getGameFlag());
                                ext.setLiveTime(ext2.getLiveTime());
                                ext.setReMarks(ext2.getReMarks());
                                ext.setIsJoin(ext2.getIsJoin());
                                ext.setRecPosition(ext2.getRecPosition());
                                ext.setPage(ext2.getPage());
                                ext.setWhere(ext2.getWhere());
                                ext.setGameId(ext2.getGameId());
                                ext.setEndId(ext2.getEndId());
                                ext.setPosition(ext2.getPosition());
                                ext.setScenesCode(ext2.getScenesCode());
                                ext.setResultCode(ext2.getResultCode());
                            }
                        }
                    } else {
                        if (!statisticTable.getType().equals(Event.gameList.name())) {
                            if (!statisticTable.getType().equals(Event.plugEfficiency.name()) && !statisticTable.getType().equals(Event.pluginPlayTime.name())) {
                                if (statisticTable.getType().equals(Event.visitSearchPage.name())) {
                                    data.setWhere(statisticTable.getArgs1());
                                } else if (!statisticTable.getType().equals(Event.installPlugCompleted.name())) {
                                    if (!statisticTable.getType().equals(Event.gameDownload.name()) || statisticTable.getType().equals(Event.gameDownloadCompleted.name())) {
                                        try {
                                            statJsonRawData = (StatJsonRawData) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatJsonRawData.class);
                                            data.setGameId(statJsonRawData.getGameId());
                                            if (statJsonRawData.getWhere() == null) {
                                                data.setWhere(Where.default1.name());
                                            } else {
                                                data.setWhere(statJsonRawData.getWhere());
                                            }
                                            ext.setUid(statJsonRawData.getUid());
                                            ext.setArticleId(statJsonRawData.getArticleId());
                                            ext.setDuration(statJsonRawData.getDuration());
                                            ext.setInterrupt(statJsonRawData.getInterrupt());
                                            ext.setZipCost(statJsonRawData.getZipCost());
                                            ext.setFrom(statJsonRawData.getFrom());
                                            ext.setPosition(statJsonRawData.getPosition());
                                            ext.setGameFlag(statJsonRawData.getGameFlag());
                                            ext.setDataFlag(statJsonRawData.getDataFlag());
                                        } catch (Exception unused) {
                                            return null;
                                        }
                                    } else if (statisticTable.getType().equals(Event.memberClickRegister.name()) || statisticTable.getType().equals(Event.joystickJoinApp.name()) || statisticTable.getType().equals(Event.joystickJoin.name())) {
                                        ext = (Ext) JsonMapper.nonDefaultMapper().fromJson(statisticTable.getArgs1(), Ext.class);
                                    } else if (statisticTable.getType().equals(Event.startApp.name())) {
                                        String args1 = statisticTable.getArgs1();
                                        if (args1 == null) {
                                            args1 = "";
                                        }
                                        data.setLocation(args1);
                                        ext.setOaid(f77324r);
                                        ext.setVaid(f77325s);
                                        ext.setAaid(f77326t);
                                    } else if (statisticTable.getType().equals(Event.articleClickPraise.name()) || statisticTable.getType().equals(Event.articleClickDownload.name())) {
                                        ext = new Ext();
                                        try {
                                            ext.setUid(Integer.parseInt(statisticTable.getUid()));
                                        } catch (Exception unused2) {
                                        }
                                        ext.setArticleId(statisticTable.getArgs1());
                                    } else {
                                        String event = statRequest.getEvent();
                                        Event event2 = Event.gameOut;
                                        try {
                                            if (event.equals(event2.name()) || statRequest.getEvent().equals(Event.startLocalNetBattleSuccessEmu.name()) || statRequest.getEvent().equals(Event.endLocalNetBattleSuccessEmu.name()) || statRequest.getEvent().equals(Event.netBattleMatchFinish.name()) || statRequest.getEvent().equals(Event.netBattleMatchStart.name())) {
                                                data.setGameId(statisticTable.getArgs1());
                                                Ext ext3 = (Ext) JsonMapper.getInstance().fromJson(statisticTable.getArgs2(), Ext.class);
                                                try {
                                                    if (statRequest.getEvent().equals(event2.name())) {
                                                        ext3.setPlugVersion(t.f77353h);
                                                    }
                                                } catch (Exception unused3) {
                                                }
                                                ext = ext3;
                                            } else if (statRequest.getEvent().equals(Event.appUseTime.name())) {
                                                com.papa.sim.statistic.pref.a aVar = (com.papa.sim.statistic.pref.a) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), com.papa.sim.statistic.pref.a.class);
                                                statRequest.getExt().setDuration(aVar.a() - aVar.c());
                                                statRequest.getExt().setUid(Integer.parseInt(aVar.d()));
                                            } else if (statisticTable.getType().equals(Event.worldStart.name())) {
                                                ext = new Ext();
                                                try {
                                                    ext.setUid(statRequest.getUid());
                                                } catch (Exception e14) {
                                                    e14.printStackTrace();
                                                    ext.setUid(0);
                                                }
                                            } else if (statisticTable.getType().equals(Event.appPageVisit.name())) {
                                                ext = (Ext) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), Ext.class);
                                                data.setUid(statisticTable.getArgs2());
                                            } else if (statRequest.getEvent().equals(Event.appPageClick.name()) || statRequest.getEvent().equals(Event.appPageDownload.name())) {
                                                ext = (Ext) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), Ext.class);
                                            } else if (statisticTable.getType().equals(Event.installAndroidCompleted.name())) {
                                                data.setUid(statisticTable.getArgs2());
                                                data.setGameId(statisticTable.getArgs1());
                                                ext.setUid(Integer.parseInt(statisticTable.getUid()));
                                                ext.setGameFlag(Integer.parseInt(statisticTable.getArgs2()));
                                            } else if (statisticTable.getType().equals(Event.netBattleMatchEfficiency.name())) {
                                                StatJsonRawData statJsonRawData2 = (StatJsonRawData) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatJsonRawData.class);
                                                statRequest.setUid(Integer.parseInt(statisticTable.getArgs2()));
                                                ext.setLogFile(statJsonRawData2.getLogfile());
                                                ext.setIp(statJsonRawData2.getIp());
                                                ext.setDelayAvg(statJsonRawData2.getDelay_avg());
                                                ext.setDelayMax(statJsonRawData2.getDelay_max());
                                                ext.setUid(statRequest.getUid());
                                                ext.setRoomID(statJsonRawData2.getRoomid());
                                                data.setGameId(statJsonRawData2.getGameId());
                                            } else if (statisticTable.getType().equals(Event.submitPost.name())) {
                                                statRequest.getExt().setUid(Integer.parseInt(statisticTable.getUid()));
                                            } else if (statisticTable.getType().equals(Event.netMatchBtnClick.name()) || statisticTable.getType().equals(Event.inviteBattleAutoJoinSuccess.name())) {
                                                try {
                                                    data.setGameId(statisticTable.getArgs1());
                                                } catch (Exception unused4) {
                                                }
                                                ext.setPlugVersion(t.f77353h);
                                            } else if (statisticTable.getType().equals(Event.startArchiveManagement.name())) {
                                                data.setGameId(statisticTable.getArgs1());
                                                ext.setGameId(data.getGameId() + "");
                                                ext.setNodeId(statisticTable.getArgs2());
                                            } else if (statisticTable.getType().equals(Event.startMeArchive.name()) || statisticTable.getType().equals(Event.backupLocalArchive.name()) || statisticTable.getType().equals(Event.downloadCloudArchive.name()) || statisticTable.getType().equals(Event.shareArchive.name()) || statisticTable.getType().equals(Event.makeStoreArchive.name()) || statisticTable.getType().equals(Event.startStoreArchive.name())) {
                                                data.setGameId(statisticTable.getArgs1());
                                                ext.setGameId(data.getGameId() + "");
                                            } else if (statisticTable.getType().equals(Event.md5error.name()) || statisticTable.getType().equals(Event.filenumerror.name())) {
                                                Ext ext4 = (Ext) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), Ext.class);
                                                ext.setPlugVersion(ext4.getPlugVersion());
                                                ext.setPlugId(ext4.getPlugId());
                                                ext.setReMarks(ext4.getReMarks());
                                            } else if (statisticTable.getType().equals(Event.visitGamePage.name())) {
                                                data.setGameId(statisticTable.getArgs1());
                                                statRequest.getExt().setFrom(statisticTable.getArgs2());
                                            } else if (statRequest.getEvent().equals(Event.listShowBigPicUPPage.name()) || statRequest.getEvent().equals(Event.listShowIconHotList.name()) || statRequest.getEvent().equals(Event.listClickBigPicStaus.name()) || statRequest.getEvent().equals(Event.listClickIconStatus.name()) || statRequest.getEvent().equals(Event.listClickBigPicSlideUPDown.name()) || statRequest.getEvent().equals(Event.listClickIconSlideUPDown.name()) || statRequest.getEvent().equals(Event.gameClickBigModelGet.name()) || statRequest.getEvent().equals(Event.gameClickBigPicGoDetail.name()) || statRequest.getEvent().equals(Event.gameClickIconModelClick.name()) || statRequest.getEvent().equals(Event.game_strategy_panel.name()) || statRequest.getEvent().equals(Event.gameClickBigPicGoWYDetail.name()) || statRequest.getEvent().equals(Event.gameClickIconModelWYClick.name())) {
                                                Ext ext5 = (Ext) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), Ext.class);
                                                ext.setGameId(ext5.getGameId());
                                                ext.setUid(ext5.getUid());
                                                ext.setFrom(ext5.getFrom());
                                                ext.setPosition(ext5.getPosition());
                                                data.setGameId(statisticTable.getArgs2());
                                            } else if (statRequest.getEvent().equals(Event.expGameAdPage.name()) || statRequest.getEvent().equals(Event.pullDownModelExp.name()) || statRequest.getEvent().equals(Event.expSmallGameAdPage.name()) || statRequest.getEvent().equals(Event.smallGameStartSDK.name()) || statRequest.getEvent().equals(Event.smallRequestAdSDK.name()) || statRequest.getEvent().equals(Event.smallExpAdSDK.name()) || statRequest.getEvent().equals(Event.smallVideoDoneAdSDK.name()) || statRequest.getEvent().equals(Event.expH5GameAdPicPage.name()) || statRequest.getEvent().equals(Event.clickH5AndCollGamePicPage.name())) {
                                                data.setGameId(statisticTable.getArgs2());
                                                ext = (Ext) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), Ext.class);
                                            } else if (statisticTable.getType().equals(Event.clickSearchButton.name())) {
                                                data.setWhere(statisticTable.getArgs1());
                                                ext.setPage(statisticTable.getArgs2());
                                            } else {
                                                if (!statisticTable.getType().equals(Event.startApp.name())) {
                                                    data.setGameId(statisticTable.getArgs1());
                                                }
                                                statRequest.getExt().setUid(Integer.parseInt(statisticTable.getUid()));
                                                ext.setUid(Integer.parseInt(statisticTable.getUid()));
                                            }
                                        } catch (Exception unused5) {
                                        }
                                    }
                                }
                            }
                            return (StatRequest) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatRequest.class);
                        }
                        StatRequest statRequest5 = (StatRequest) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatRequest.class);
                        ext.setGameList(statRequest5.getExt().getGameList());
                        ext.setUid(statRequest5.getExt().getUid());
                    }
                    if (TextUtils.isEmpty(data.getGameId()) && ext != null && !TextUtils.isEmpty(ext.getGameId())) {
                        data.setGameId(ext.getGameId());
                    }
                    statRequest.setData(data);
                    ext.setIsdirect(statisticTable.getIsdirect());
                    statRequest.setExt(ext);
                    statRequest4 = statRequest;
                } catch (Exception e15) {
                    e = e15;
                    statRequest4 = statRequest;
                    e.printStackTrace();
                }
            } else {
                if (!statisticTable.getType().equals(Event.visitIndexAdEvent.name()) && !statisticTable.getType().equals(Event.clickIndexAdEvent.name()) && !statisticTable.getType().equals(Event.clickFunGameMainBtn.name()) && !statisticTable.getType().equals(Event.clickGameMainBtn.name()) && !statisticTable.getType().equals(Event.visitAppInternalPage.name()) && !statisticTable.getType().equals(Event.gameStart.name()) && !statisticTable.getType().equals(Event.clickLocalNetBattleJoinRoomBtn.name()) && !statisticTable.getType().equals(Event.joinLocalNetBattleRoomSuccess.name()) && !statisticTable.getType().equals(Event.gameRecovery.name()) && !statisticTable.getType().equals(Event.inviteBattleShareSuccess.name()) && !statisticTable.getType().equals(Event.gameRequest.name()) && !statisticTable.getType().equals(Event.gameDownload.name()) && !statisticTable.getType().equals(Event.startDownloadPlug.name()) && !statisticTable.getType().equals(Event.downloadPlugCompleted.name()) && !statisticTable.getType().equals(Event.installPlugCompleted.name()) && !statisticTable.getType().equals(Event.gameOut.name()) && !statisticTable.getType().equals(Event.netBattleMatchFinish.name()) && !statisticTable.getType().equals(Event.netBattleMatchStart.name()) && !statisticTable.getType().equals(Event.startShare.name()) && !statisticTable.getType().equals(Event.shareChannel.name()) && !statisticTable.getType().equals(Event.shareResult.name()) && !statisticTable.getType().equals(Event.f2fRequestCreateQrcode.name()) && !statisticTable.getType().equals(Event.f2fCreateQrcodeSuccess.name()) && !statisticTable.getType().equals(Event.liveResDownloaded.name()) && !statisticTable.getType().equals(Event.clickVsBtn.name()) && !statisticTable.getType().equals(Event.clickVsHallBtn.name()) && !statisticTable.getType().equals(Event.visitVsRoomPage.name()) && !statisticTable.getType().equals(Event.visitVsMainPage.name()) && !statisticTable.getType().equals(Event.VsGameStart.name()) && !statisticTable.getType().equals(Event.clickVsForumBtn.name()) && !statisticTable.getType().equals(Event.clickVsAdvBtn.name()) && !statisticTable.getType().equals(Event.clickVsCreateRoom.name()) && !statisticTable.getType().equals(Event.clickVsQuickJoin.name()) && !statisticTable.getType().equals(Event.VsCreateWaitOver.name()) && !statisticTable.getType().equals(Event.VsGameOverSuccess.name()) && !statisticTable.getType().equals(Event.VsSelectSilentBtn.name()) && !statisticTable.getType().equals(Event.VsCreateSilentRoom.name()) && !statisticTable.getType().equals(Event.VsSilentTransform.name()) && !statisticTable.getType().equals(Event.clickVsLocalBat.name()) && !statisticTable.getType().equals(Event.clickVsNetBattleMatch.name()) && !statisticTable.getType().equals(Event.f2fRequestScanQrcode.name()) && !statisticTable.getType().equals(Event.f2fConnectQrcodeSuccess.name()) && !statisticTable.getType().equals(Event.sharePasteClick.name()) && !statisticTable.getType().equals(Event.f2fRequestTransferGame.name()) && !statisticTable.getType().equals(Event.f2fTransferGameDone.name()) && !statisticTable.getType().equals(Event.f2fInterruptTransferGame.name()) && !statisticTable.getType().equals(Event.arenaGameList.name()) && !statisticTable.getType().equals(Event.arenaGameListBanner.name()) && !statisticTable.getType().equals(Event.arenaGameListItem.name()) && !statisticTable.getType().equals(Event.areaRoomFromInvite.name()) && !statisticTable.getType().equals(Event.onMainPageShow.name()) && !statisticTable.getType().equals(Event.requestEvent.name()) && !statisticTable.getType().equals(Event.clickButtonEvent.name()) && !statisticTable.getType().equals(Event.clickHomePageEvent.name()) && !statisticTable.getType().equals(Event.clickShopHomeEvent.name()) && !statisticTable.getType().equals(Event.findButtonEvent.name()) && !statisticTable.getType().equals(Event.pspMemberADDialog.name()) && !statisticTable.getType().equals(Event.clickGameDetailModel.name()) && !statisticTable.getType().equals(Event.enterUserGameList.name()) && !statisticTable.getType().equals(Event.clickSearchAdPosition.name()) && !statisticTable.getType().equals(Event.downloadFromSearchResult.name())) {
                    String type = statisticTable.getType();
                    Event event3 = Event.gameDownload;
                    if (!type.equals(event3.name()) && !statisticTable.getType().equals(Event.indexGameStart.name()) && !statisticTable.getType().equals(Event.visitGamePage.name()) && !statisticTable.getType().equals(Event.clickDetailFromSearchResult.name()) && !statisticTable.getType().equals(Event.gameUnzip.name()) && !statisticTable.getType().equals(Event.VMGameStart.name()) && !statisticTable.getType().equals(Event.VMGameStartAfterStatus.name()) && !statisticTable.getType().equals(Event.speedDownQkExp.name()) && !statisticTable.getType().equals(Event.clickSpeedDownQkButton.name()) && !statisticTable.getType().equals(Event.installTipsQkExp.name()) && !statisticTable.getType().equals(Event.clickInstallQkButton.name()) && !statisticTable.getType().equals(Event.installSuccessQk.name()) && !statisticTable.getType().equals(Event.clickSpeedDownUpQk.name()) && !statisticTable.getType().equals(Event.installAndroidCompleted.name()) && !statisticTable.getType().equals(event3.name())) {
                        statRequest = new StatRequest();
                        uid = statisticTable.getUid();
                        if (uid != null) {
                            statRequest.setUid(0);
                            statRequest.setId(statisticTable.getId());
                            statRequest.setDeviceId(u.f(context).b());
                            statRequest.setVersion("0.3");
                            ext = statRequest.getExt();
                            if (ext == null) {
                                ext = new Ext();
                            }
                            ext.setUid(statRequest.getUid());
                            statRequest.setEvent(statisticTable.getType());
                            statRequest.setMac(u.f(context).g());
                            statRequest.setTime(Long.parseLong(statisticTable.getTime()));
                            ad2 = statisticTable.getAd();
                            if (ad2 != null) {
                                statRequest.setAd(0);
                            } else {
                                statRequest.setAd(0);
                            }
                            countType = statisticTable.getCountType();
                            if (countType != null) {
                                statRequest.setCountType(0);
                            } else {
                                statRequest.setCountType(0);
                            }
                            statRequest.setCountType(Integer.parseInt(countType));
                            data = new Data();
                            data.setModel(Build.MODEL);
                            data.setBrand(Build.BRAND);
                            data.setSdkInt(Build.VERSION.SDK_INT);
                            data.setAndroidId(u.f(context).a(context));
                            data.setOaid(u.f(context).j());
                            data.setWfuuid(u.f(context).k());
                            data.setImei(u.f(context).d());
                            data.setGdevid(u.f(context).c());
                            data.setUmengid(u.f(context).n(context));
                            data.setMac(u.f(context).g());
                            gVar = this.f77331e;
                            if (gVar != null) {
                                data.setPageVersion(gVar.a());
                            }
                            String[] strArrR2 = u.f(context).r();
                            data.setAppVersion(strArrR2[0] + "_" + strArrR2[1]);
                            if (statisticTable.getNewData() == 1) {
                                ext = (Ext) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), Ext.class);
                                ext.setUid(statRequest.getUid());
                            } else if (statisticTable.getNewData() == 2) {
                                if (!"".equals(statisticTable.getArgs1())) {
                                    data2 = statRequest2.getData();
                                    if (data2 != null) {
                                        data.setWhere(data2.getWhere());
                                        data.setArticleId(data2.getArticleId());
                                        data.setUid(data2.getUid());
                                        data.setGameId(data2.getGameId());
                                        data.setWhere(data2.getWhere());
                                    }
                                    ext2 = statRequest2.getExt();
                                    if (ext2 != null) {
                                        ext.setFrom(ext2.getFrom());
                                        ext.setFromTabId(ext2.getFromTabId());
                                        ext.setArticleId(ext2.getArticleId());
                                        ext.setGameFlag(ext2.getGameFlag());
                                        ext.setLiveTime(ext2.getLiveTime());
                                        ext.setReMarks(ext2.getReMarks());
                                        ext.setIsJoin(ext2.getIsJoin());
                                        ext.setRecPosition(ext2.getRecPosition());
                                        ext.setPage(ext2.getPage());
                                        ext.setWhere(ext2.getWhere());
                                        ext.setGameId(ext2.getGameId());
                                        ext.setEndId(ext2.getEndId());
                                        ext.setPosition(ext2.getPosition());
                                        ext.setScenesCode(ext2.getScenesCode());
                                        ext.setResultCode(ext2.getResultCode());
                                    }
                                }
                            } else {
                                if (!statisticTable.getType().equals(Event.gameList.name())) {
                                    if (!statisticTable.getType().equals(Event.plugEfficiency.name())) {
                                        if (statisticTable.getType().equals(Event.visitSearchPage.name())) {
                                            data.setWhere(statisticTable.getArgs1());
                                        } else if (!statisticTable.getType().equals(Event.installPlugCompleted.name())) {
                                            if (statisticTable.getType().equals(Event.gameDownload.name())) {
                                                statJsonRawData = (StatJsonRawData) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatJsonRawData.class);
                                                data.setGameId(statJsonRawData.getGameId());
                                                if (statJsonRawData.getWhere() == null) {
                                                    data.setWhere(Where.default1.name());
                                                } else {
                                                    data.setWhere(statJsonRawData.getWhere());
                                                }
                                                ext.setUid(statJsonRawData.getUid());
                                                ext.setArticleId(statJsonRawData.getArticleId());
                                                ext.setDuration(statJsonRawData.getDuration());
                                                ext.setInterrupt(statJsonRawData.getInterrupt());
                                                ext.setZipCost(statJsonRawData.getZipCost());
                                                ext.setFrom(statJsonRawData.getFrom());
                                                ext.setPosition(statJsonRawData.getPosition());
                                                ext.setGameFlag(statJsonRawData.getGameFlag());
                                                ext.setDataFlag(statJsonRawData.getDataFlag());
                                            } else {
                                                statJsonRawData = (StatJsonRawData) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatJsonRawData.class);
                                                data.setGameId(statJsonRawData.getGameId());
                                                if (statJsonRawData.getWhere() == null) {
                                                    data.setWhere(Where.default1.name());
                                                } else {
                                                    data.setWhere(statJsonRawData.getWhere());
                                                }
                                                ext.setUid(statJsonRawData.getUid());
                                                ext.setArticleId(statJsonRawData.getArticleId());
                                                ext.setDuration(statJsonRawData.getDuration());
                                                ext.setInterrupt(statJsonRawData.getInterrupt());
                                                ext.setZipCost(statJsonRawData.getZipCost());
                                                ext.setFrom(statJsonRawData.getFrom());
                                                ext.setPosition(statJsonRawData.getPosition());
                                                ext.setGameFlag(statJsonRawData.getGameFlag());
                                                ext.setDataFlag(statJsonRawData.getDataFlag());
                                            }
                                        }
                                    }
                                    return (StatRequest) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatRequest.class);
                                }
                                StatRequest statRequest6 = (StatRequest) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatRequest.class);
                                ext.setGameList(statRequest6.getExt().getGameList());
                                ext.setUid(statRequest6.getExt().getUid());
                            }
                            if (TextUtils.isEmpty(data.getGameId())) {
                                data.setGameId(ext.getGameId());
                            }
                            statRequest.setData(data);
                            ext.setIsdirect(statisticTable.getIsdirect());
                            statRequest.setExt(ext);
                            statRequest4 = statRequest;
                        } else {
                            statRequest.setUid(0);
                            statRequest.setId(statisticTable.getId());
                            statRequest.setDeviceId(u.f(context).b());
                            statRequest.setVersion("0.3");
                            ext = statRequest.getExt();
                            if (ext == null) {
                                ext = new Ext();
                            }
                            ext.setUid(statRequest.getUid());
                            statRequest.setEvent(statisticTable.getType());
                            statRequest.setMac(u.f(context).g());
                            statRequest.setTime(Long.parseLong(statisticTable.getTime()));
                            ad2 = statisticTable.getAd();
                            if (ad2 != null) {
                                statRequest.setAd(0);
                            } else {
                                statRequest.setAd(0);
                            }
                            countType = statisticTable.getCountType();
                            if (countType != null) {
                                statRequest.setCountType(0);
                            } else {
                                statRequest.setCountType(0);
                            }
                            statRequest.setCountType(Integer.parseInt(countType));
                            data = new Data();
                            data.setModel(Build.MODEL);
                            data.setBrand(Build.BRAND);
                            data.setSdkInt(Build.VERSION.SDK_INT);
                            data.setAndroidId(u.f(context).a(context));
                            data.setOaid(u.f(context).j());
                            data.setWfuuid(u.f(context).k());
                            data.setImei(u.f(context).d());
                            data.setGdevid(u.f(context).c());
                            data.setUmengid(u.f(context).n(context));
                            data.setMac(u.f(context).g());
                            gVar = this.f77331e;
                            if (gVar != null) {
                                data.setPageVersion(gVar.a());
                            }
                            String[] strArrR3 = u.f(context).r();
                            data.setAppVersion(strArrR3[0] + "_" + strArrR3[1]);
                            if (statisticTable.getNewData() == 1) {
                                ext = (Ext) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), Ext.class);
                                ext.setUid(statRequest.getUid());
                            } else if (statisticTable.getNewData() == 2) {
                                if (!"".equals(statisticTable.getArgs1())) {
                                    data2 = statRequest2.getData();
                                    if (data2 != null) {
                                        data.setWhere(data2.getWhere());
                                        data.setArticleId(data2.getArticleId());
                                        data.setUid(data2.getUid());
                                        data.setGameId(data2.getGameId());
                                        data.setWhere(data2.getWhere());
                                    }
                                    ext2 = statRequest2.getExt();
                                    if (ext2 != null) {
                                        ext.setFrom(ext2.getFrom());
                                        ext.setFromTabId(ext2.getFromTabId());
                                        ext.setArticleId(ext2.getArticleId());
                                        ext.setGameFlag(ext2.getGameFlag());
                                        ext.setLiveTime(ext2.getLiveTime());
                                        ext.setReMarks(ext2.getReMarks());
                                        ext.setIsJoin(ext2.getIsJoin());
                                        ext.setRecPosition(ext2.getRecPosition());
                                        ext.setPage(ext2.getPage());
                                        ext.setWhere(ext2.getWhere());
                                        ext.setGameId(ext2.getGameId());
                                        ext.setEndId(ext2.getEndId());
                                        ext.setPosition(ext2.getPosition());
                                        ext.setScenesCode(ext2.getScenesCode());
                                        ext.setResultCode(ext2.getResultCode());
                                    }
                                }
                            } else {
                                if (!statisticTable.getType().equals(Event.gameList.name())) {
                                    if (!statisticTable.getType().equals(Event.plugEfficiency.name())) {
                                        if (statisticTable.getType().equals(Event.visitSearchPage.name())) {
                                            data.setWhere(statisticTable.getArgs1());
                                        } else if (!statisticTable.getType().equals(Event.installPlugCompleted.name())) {
                                            if (statisticTable.getType().equals(Event.gameDownload.name())) {
                                                statJsonRawData = (StatJsonRawData) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatJsonRawData.class);
                                                data.setGameId(statJsonRawData.getGameId());
                                                if (statJsonRawData.getWhere() == null) {
                                                    data.setWhere(Where.default1.name());
                                                } else {
                                                    data.setWhere(statJsonRawData.getWhere());
                                                }
                                                ext.setUid(statJsonRawData.getUid());
                                                ext.setArticleId(statJsonRawData.getArticleId());
                                                ext.setDuration(statJsonRawData.getDuration());
                                                ext.setInterrupt(statJsonRawData.getInterrupt());
                                                ext.setZipCost(statJsonRawData.getZipCost());
                                                ext.setFrom(statJsonRawData.getFrom());
                                                ext.setPosition(statJsonRawData.getPosition());
                                                ext.setGameFlag(statJsonRawData.getGameFlag());
                                                ext.setDataFlag(statJsonRawData.getDataFlag());
                                            } else {
                                                statJsonRawData = (StatJsonRawData) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatJsonRawData.class);
                                                data.setGameId(statJsonRawData.getGameId());
                                                if (statJsonRawData.getWhere() == null) {
                                                    data.setWhere(Where.default1.name());
                                                } else {
                                                    data.setWhere(statJsonRawData.getWhere());
                                                }
                                                ext.setUid(statJsonRawData.getUid());
                                                ext.setArticleId(statJsonRawData.getArticleId());
                                                ext.setDuration(statJsonRawData.getDuration());
                                                ext.setInterrupt(statJsonRawData.getInterrupt());
                                                ext.setZipCost(statJsonRawData.getZipCost());
                                                ext.setFrom(statJsonRawData.getFrom());
                                                ext.setPosition(statJsonRawData.getPosition());
                                                ext.setGameFlag(statJsonRawData.getGameFlag());
                                                ext.setDataFlag(statJsonRawData.getDataFlag());
                                            }
                                        }
                                    }
                                    return (StatRequest) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatRequest.class);
                                }
                                StatRequest statRequest7 = (StatRequest) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatRequest.class);
                                ext.setGameList(statRequest7.getExt().getGameList());
                                ext.setUid(statRequest7.getExt().getUid());
                            }
                            if (TextUtils.isEmpty(data.getGameId())) {
                                data.setGameId(ext.getGameId());
                            }
                            statRequest.setData(data);
                            ext.setIsdirect(statisticTable.getIsdirect());
                            statRequest.setExt(ext);
                            statRequest4 = statRequest;
                        }
                    }
                }
                try {
                    statRequest3 = (StatRequest) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatRequest.class);
                    if (statRequest3 == null) {
                        try {
                            StatRequest statRequest8 = new StatRequest();
                            try {
                                statRequest8.getData().setGameId(statisticTable.getArgs1());
                            } catch (Exception unused6) {
                            }
                            statRequest3 = statRequest8;
                        } catch (Exception unused7) {
                            statRequest3 = new StatRequest();
                            try {
                                statRequest3.getData().setGameId(statisticTable.getArgs1());
                            } catch (Exception unused8) {
                            }
                        }
                    }
                } catch (Exception unused9) {
                }
                statRequest4 = statRequest3;
                Data data3 = statRequest4.getData();
                data3.setModel(Build.MODEL);
                data3.setBrand(Build.BRAND);
                data3.setSdkInt(Build.VERSION.SDK_INT);
                data3.setAndroidId(u.f(context).a(context));
                data3.setOaid(u.f(context).j());
                data3.setWfuuid(u.f(context).k());
                data3.setImei(u.f(context).d());
                data3.setGdevid(u.f(context).c());
                data3.setUmengid(u.f(context).n(context));
                data3.setMac(u.f(context).g());
                g gVar2 = this.f77331e;
                if (gVar2 != null) {
                    data3.setPageVersion(gVar2.a());
                }
                String[] strArrR4 = u.f(context).r();
                try {
                    statRequest4.setUid(Integer.parseInt(statisticTable.getUid()));
                    statRequest4.setTime(Long.parseLong(statisticTable.getTime()));
                } catch (Exception unused10) {
                }
                data3.setAppVersion(strArrR4[0] + "_" + strArrR4[1]);
                statRequest4.setVersion("0.3");
                statRequest4.setEvent(statisticTable.getType());
                statRequest4.setId(statisticTable.getId());
                statRequest4.setMac(u.f(context).g());
                statRequest4.setDeviceId(u.f(context).b());
            }
        } catch (Exception e16) {
            e = e16;
        }
        try {
            statRequest4.setAd(Integer.parseInt(m.a(context)));
        } catch (Exception unused11) {
        }
        if (statRequest4.getEvent().equals(Event.unzipFailed.name())) {
            try {
                statRequest4.getExt().setGameFlag(Integer.valueOf(statisticTable.getArgs2()).intValue());
                statRequest4.getExt().setIp(u.i());
                statRequest4.getExt().setKeyWord(l(statRequest4.getData().getGameId() + ""));
            } catch (Exception unused12) {
            }
        }
        statRequest4.getExt().setWebUa(u.f(context).o());
        return statRequest4;
    }

    public static String j(String str, String str2) {
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("http://service.kingnetdc.com/mqs").openConnection();
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setInstanceFollowRedirects(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Accept", "application/json");
                httpURLConnection.setRequestProperty("Content-Type", "application/json");
                httpURLConnection.setRequestProperty(com.alipay.sdk.packet.d.f7183g, "1");
                httpURLConnection.setRequestProperty("Topic", "papa_plat");
                String str3 = "[{\"key\":\"" + str2 + "\",\"message\":" + str + "}]";
                httpURLConnection.setRequestProperty("Authorization", l.a("9c708c7fce87abaa544b221898769baapapa_plat19c708c7fce87abaa544b221898769baa" + str3));
                httpURLConnection.connect();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8");
                outputStreamWriter.append((CharSequence) str3);
                outputStreamWriter.flush();
                outputStreamWriter.close();
                int contentLength = httpURLConnection.getContentLength();
                InputStream inputStream = httpURLConnection.getInputStream();
                if (contentLength == -1) {
                    return WMConstants.TIMER_STAGE_NONE;
                }
                byte[] bArr = new byte[contentLength];
                byte[] bArr2 = new byte[512];
                int i11 = 0;
                while (true) {
                    int i12 = inputStream.read(bArr2);
                    if (i12 <= 0) {
                        return new String(bArr, "UTF-8");
                    }
                    System.arraycopy(bArr2, 0, bArr, i11, i12);
                    i11 += i12;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return WMConstants.TIMER_STAGE_NONE;
    }

    public static String l(String str) {
        return f77318l.get(str);
    }

    public static s m(Context context) {
        if (f77323q == null) {
            f77323q = new s(context);
        }
        return f77323q;
    }

    private String p(int i10) {
        return (i10 & 255) + o0.f49827a + ((i10 >> 8) & 255) + o0.f49827a + ((i10 >> 16) & 255) + o0.f49827a + ((i10 >> 24) & 255);
    }

    public static void q0(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        f77318l.put(str, str2);
    }

    public static void v(String str) {
        if (str != null) {
            f77318l.remove(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:311:0x0c6d  */
    private void w0(StatRequest statRequest) throws Throwable {
        statRequest.setTime(System.currentTimeMillis());
        try {
            Intent intent = new Intent(this.f77330d, (Class<?>) StatService.class);
            if (System.currentTimeMillis() - this.f77334h > BaseCloudFileManager.ACK_TIMEOUT) {
                this.f77330d.startService(intent);
                this.f77334h = System.currentTimeMillis();
            }
        } catch (Exception unused) {
        }
        if (statRequest.getEvent() == null || statRequest.getEvent().equals("")) {
            return;
        }
        String event = statRequest.getEvent();
        Event event2 = Event.joyStickConfigPost;
        if (event.equals(event2.name()) || statRequest.getEvent().equals(Event.joyStickInfoPost.name())) {
            BossTable bossTable = new BossTable();
            bossTable.setType(statRequest.getEvent());
            if (bossTable.getType().equals(event2.name())) {
                this.f77329c.c(event2);
            }
            bossTable.setArgs1(statRequest.getData().getLocation() + "");
            bossTable.setTime(statRequest.getTime() + "");
            bossTable.setAd(m.a(this.f77330d));
            bossTable.setCountType(m.c(this.f77330d));
            this.f77329c.t(bossTable);
            return;
        }
        if (statRequest.getEvent().equals(Event.setpapaerror.name()) || statRequest.getEvent().equals(Event.setemuerror.name())) {
            BossTable bossTable2 = new BossTable();
            bossTable2.setType(statRequest.getEvent());
            bossTable2.setArgs1(statRequest.getData().getWhere());
            bossTable2.setArgs2(statRequest.getData().getLocation());
            bossTable2.setTime(statRequest.getTime() + "");
            bossTable2.setAd(m.a(this.f77330d));
            bossTable2.setCountType(m.c(this.f77330d));
            this.f77329c.t(bossTable2);
            return;
        }
        if (statRequest.getEvent().equals(Event.gameWorldData.name())) {
            new StatisticTable().setType(statRequest.getEvent().toString());
        }
        StatisticTable statisticTable = new StatisticTable();
        statisticTable.setType(statRequest.getEvent().toString());
        String type = statisticTable.getType();
        if (statRequest.isRequest()) {
            statisticTable.setNewData(2);
            statisticTable.setArgs1(JsonMapper.toJsonString(statRequest));
        } else if (statRequest.isNew()) {
            statisticTable.setNewData(1);
            statisticTable.setArgs1(JsonMapper.toJsonString(statRequest.getExt()));
        } else if (type.equals(Event.visitSearchPage.name())) {
            statisticTable.setArgs1(statRequest.getData().getWhere().toString());
        } else if (statRequest.getEvent().equals(Event.gameList.name()) || statRequest.getEvent().equals(Event.plugEfficiency.name()) || statRequest.getEvent().equals(Event.pluginPlayTime.name())) {
            statisticTable.setArgs1(JsonMapper.nonDefaultMapper().toJson(statRequest));
        } else if (statRequest.getEvent().equals(Event.onMainPageShow.name()) || statRequest.getEvent().equals(Event.visitIndexAdEvent.name()) || statRequest.getEvent().equals(Event.clickIndexAdEvent.name()) || statRequest.getEvent().equals(Event.gameRequest.name())) {
            statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
        } else {
            String event3 = statRequest.getEvent();
            Event event4 = Event.gameDownload;
            if (event3.equals(event4.name()) || statRequest.getEvent().equals(Event.startDownloadPlug.name()) || statRequest.getEvent().equals(Event.downloadPlugCompleted.name()) || statRequest.getEvent().equals(Event.installPlugCompleted.name()) || statRequest.getEvent().equals(Event.gameOut.name()) || statRequest.getEvent().equals(Event.netBattleMatchFinish.name()) || statRequest.getEvent().equals(Event.netBattleMatchStart.name()) || statRequest.getEvent().equals(Event.startShare.name()) || statRequest.getEvent().equals(Event.shareChannel.name()) || statRequest.getEvent().equals(Event.shareResult.name()) || statRequest.getEvent().equals(Event.f2fRequestCreateQrcode.name()) || statRequest.getEvent().equals(Event.f2fCreateQrcodeSuccess.name()) || statRequest.getEvent().equals(Event.liveResDownloaded.name()) || statRequest.getEvent().equals(Event.clickVsBtn.name()) || statRequest.getEvent().equals(Event.clickVsHallBtn.name()) || statRequest.getEvent().equals(Event.visitVsRoomPage.name()) || statRequest.getEvent().equals(Event.visitVsMainPage.name()) || statRequest.getEvent().equals(Event.clickVsForumBtn.name()) || statRequest.getEvent().equals(Event.clickVsAdvBtn.name()) || statRequest.getEvent().equals(Event.clickVsCreateRoom.name()) || statRequest.getEvent().equals(Event.clickVsQuickJoin.name()) || statRequest.getEvent().equals(Event.VsCreateWaitOver.name()) || statRequest.getEvent().equals(Event.VsGameOverSuccess.name()) || statRequest.getEvent().equals(Event.VsSelectSilentBtn.name()) || statRequest.getEvent().equals(Event.VsCreateSilentRoom.name()) || statRequest.getEvent().equals(Event.VsSilentTransform.name()) || statRequest.getEvent().equals(Event.clickVsLocalBat.name()) || statRequest.getEvent().equals(Event.clickVsNetBattleMatch.name()) || statRequest.getEvent().equals(Event.f2fRequestScanQrcode.name()) || statRequest.getEvent().equals(Event.f2fConnectQrcodeSuccess.name()) || statRequest.getEvent().equals(Event.sharePasteClick.name()) || statRequest.getEvent().equals(Event.f2fTransferGameDone.name()) || statRequest.getEvent().equals(Event.f2fInterruptTransferGame.name()) || statRequest.getEvent().equals(Event.visitAppInternalPage.name()) || statRequest.getEvent().equals(Event.arenaGameList.name()) || statRequest.getEvent().equals(Event.arenaGameListBanner.name()) || statRequest.getEvent().equals(Event.arenaGameListItem.name()) || statRequest.getEvent().equals(Event.areaRoomFromInvite.name()) || statisticTable.getType().equals(Event.requestEvent.name()) || statisticTable.getType().equals(Event.clickButtonEvent.name()) || statisticTable.getType().equals(Event.clickHomePageEvent.name()) || statisticTable.getType().equals(Event.clickShopHomeEvent.name()) || statisticTable.getType().equals(Event.findButtonEvent.name()) || statisticTable.getType().equals(Event.pspMemberADDialog.name()) || statisticTable.getType().equals(Event.clickGameDetailModel.name()) || statisticTable.getType().equals(Event.enterUserGameList.name()) || statisticTable.getType().equals(Event.clickSearchAdPosition.name()) || statisticTable.getType().equals(Event.downloadFromSearchResult.name()) || statisticTable.getType().equals(event4.name()) || statisticTable.getType().equals(Event.indexGameStart.name())) {
                statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
            } else {
                String type2 = statisticTable.getType();
                Event event5 = Event.visitGamePage;
                if (type2.equals(event5.name()) || statisticTable.getType().equals(Event.clickDetailFromSearchResult.name()) || statisticTable.getType().equals(Event.gameStart.name()) || statisticTable.getType().equals(Event.gameUnzip.name()) || statisticTable.getType().equals(Event.VMGameStart.name()) || statisticTable.getType().equals(Event.VMGameStartAfterStatus.name()) || statisticTable.getType().equals(Event.speedDownQkExp.name()) || statisticTable.getType().equals(Event.clickSpeedDownQkButton.name()) || statisticTable.getType().equals(Event.installTipsQkExp.name()) || statisticTable.getType().equals(Event.clickInstallQkButton.name()) || statisticTable.getType().equals(Event.installSuccessQk.name()) || statisticTable.getType().equals(Event.clickSpeedDownUpQk.name())) {
                    statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
                } else {
                    String type3 = statisticTable.getType();
                    Event event6 = Event.installAndroidCompleted;
                    if (type3.equals(event6.name())) {
                        statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
                    } else {
                        String type4 = statisticTable.getType();
                        Event event7 = Event.gameDownload;
                        if (type4.equals(event7.name())) {
                            statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
                        } else if (type.equals(event7.name()) || type.equals(Event.gameDownloadCompleted.name())) {
                            StatJsonRawData statJsonRawData = new StatJsonRawData();
                            statJsonRawData.setGameId(statRequest.getData().getGameId());
                            statJsonRawData.setInterrupt(statRequest.getExt().getInterrupt());
                            statJsonRawData.setDuration(statRequest.getExt().getDuration());
                            statJsonRawData.setZipCost(statRequest.getExt().getZipCost());
                            statJsonRawData.setUid(statRequest.getExt().getUid());
                            statJsonRawData.setWhere(statRequest.getData().getWhere());
                            statJsonRawData.setArticleId(statRequest.getExt().getArticleId());
                            statJsonRawData.setFrom(statRequest.getExt().getFrom());
                            statJsonRawData.setPosition(statRequest.getExt().getPosition());
                            statJsonRawData.setGameFlag(statRequest.getExt().getGameFlag());
                            statJsonRawData.setDataFlag(statRequest.getExt().getDataFlag());
                            statisticTable.setUid(statRequest.getExt().getUid() + "");
                            statisticTable.setArgs1(JsonMapper.getInstance().toJson(statJsonRawData));
                        } else if (type.equals(Event.gameWorldData.name())) {
                            statisticTable.setArgs1(statRequest.getData().getModel());
                        } else if (type.equals(Event.memberClickRegister.name()) || type.equals(Event.joystickJoinApp.name()) || type.equals(Event.joystickJoin.name())) {
                            Ext ext = statRequest.getExt();
                            String json = JsonMapper.nonDefaultMapper().toJson(ext);
                            statisticTable.setUid(ext.getUid() + "");
                            statisticTable.setArgs1(json);
                        } else if (type.equals(Event.md5error.name()) || type.equals(Event.filenumerror.name())) {
                            Ext ext2 = statRequest.getExt();
                            String json2 = JsonMapper.nonDefaultMapper().toJson(ext2);
                            statisticTable.setUid(ext2.getUid() + "");
                            statisticTable.setArgs1(json2);
                        } else if (type.equals(Event.articleClickPraise.name()) || type.equals(Event.articleClickDownload.name())) {
                            statisticTable.setUid(statRequest.getExt().getUid() + "");
                            statisticTable.setArgs1(statRequest.getExt().getArticleId() + "");
                        } else if (type.equals(Event.startDownloadPlug.name()) || type.equals(Event.downloadPlugCompleted.name()) || type.equals(Event.installPlugCompleted.name())) {
                            statisticTable.setUid(statRequest.getExt().getUid() + "");
                            statisticTable.setArgs1(statRequest.getData().getPlugId() + "");
                        } else if (statRequest.getEvent().equals(Event.gameOut.name()) || statRequest.getEvent().equals(Event.startLocalNetBattleSuccessEmu.name()) || statRequest.getEvent().equals(Event.endLocalNetBattleSuccessEmu.name()) || statRequest.getEvent().equals(Event.netBattleMatchFinish.name()) || statRequest.getEvent().equals(Event.netBattleMatchStart.name())) {
                            statisticTable.setUid(statRequest.getExt().getUid() + "");
                            statisticTable.setArgs1(statRequest.getData().getGameId() + "");
                            try {
                                statisticTable.setArgs2(JsonMapper.getInstance().toJson(statRequest.getExt()));
                            } catch (Exception unused2) {
                            }
                        } else if (statRequest.getEvent().equals(Event.appUseTime.name())) {
                            statisticTable.setArgs1(statRequest.getData().getLocation());
                            statisticTable.setUid(statRequest.getExt().getUid() + "");
                            statisticTable.setArgs2(statRequest.getUid() + "");
                        } else if (statRequest.getEvent().equals(Event.appPageVisit.name())) {
                            statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest.getExt()));
                            statisticTable.setUid(statRequest.getExt().getUid() + "");
                        } else if (statRequest.getEvent().equals(Event.appPageClick.name()) || statRequest.getEvent().equals(Event.appPageDownload.name())) {
                            statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest.getExt()));
                            statisticTable.setUid(statRequest.getExt().getUid() + "");
                        } else if (statRequest.getEvent().equals(Event.netBattleMatchEfficiency.name())) {
                            statisticTable.setArgs1(statRequest.getData().getLocation());
                            statisticTable.setArgs2(statRequest.getUid() + "");
                            statisticTable.setUid(statRequest.getExt().getUid() + "");
                        } else if (statRequest.getEvent().equals(Event.submitPost.name())) {
                            statisticTable.setArgs1(statRequest.getExt().getUid() + "");
                            statisticTable.setUid(statRequest.getExt().getUid() + "");
                        } else if (statRequest.getEvent().equals(event6.name())) {
                            statisticTable.setUid(statRequest.getUid() + "");
                            statisticTable.setArgs1(statRequest.getData().getGameId() + "");
                            statisticTable.setArgs2(statRequest.getExt().getGameFlag() + "");
                        } else if (statRequest.getEvent().equals(Event.startArchiveManagement.name())) {
                            statisticTable.setUid(statRequest.getUid() + "");
                            statisticTable.setArgs1(statRequest.getData().getGameId() + "");
                            statisticTable.setArgs2(statRequest.getExt().getNodeId());
                        } else if (statRequest.getEvent().equals(event5.name())) {
                            statisticTable.setArgs1(statRequest.getData().getGameId() + "");
                            statisticTable.setArgs2(statRequest.getExt().getFrom());
                        } else if (statRequest.getEvent().equals(Event.expGameAdPage.name()) || statRequest.getEvent().equals(Event.pullDownModelExp.name()) || statRequest.getEvent().equals(Event.expSmallGameAdPage.name()) || statRequest.getEvent().equals(Event.smallGameStartSDK.name()) || statRequest.getEvent().equals(Event.smallRequestAdSDK.name()) || statRequest.getEvent().equals(Event.smallExpAdSDK.name()) || statRequest.getEvent().equals(Event.smallVideoDoneAdSDK.name()) || statRequest.getEvent().equals(Event.expH5GameAdPicPage.name()) || statRequest.getEvent().equals(Event.clickH5AndCollGamePicPage.name())) {
                            statisticTable.setArgs1(JsonMapper.toJsonString(statRequest.getExt()));
                            statisticTable.setArgs2(String.valueOf(statRequest.getData().getGameId()));
                        } else if (type.equals(Event.clickSearchButton.name())) {
                            statisticTable.setArgs1(statRequest.getData().getWhere().toString());
                            statisticTable.setArgs2(statRequest.getExt().getPage());
                        } else if (statRequest.getEvent().equals(Event.listShowBigPicUPPage.name()) || statRequest.getEvent().equals(Event.listShowIconHotList.name()) || statRequest.getEvent().equals(Event.listClickBigPicStaus.name()) || statRequest.getEvent().equals(Event.listClickIconStatus.name()) || statRequest.getEvent().equals(Event.listClickBigPicSlideUPDown.name()) || statRequest.getEvent().equals(Event.listClickIconSlideUPDown.name()) || statRequest.getEvent().equals(Event.gameClickBigModelGet.name()) || statRequest.getEvent().equals(Event.gameClickBigPicGoDetail.name()) || statRequest.getEvent().equals(Event.gameClickIconModelClick.name()) || statRequest.getEvent().equals(Event.game_strategy_panel.name()) || statRequest.getEvent().equals(Event.gameClickBigPicGoWYDetail.name()) || statRequest.getEvent().equals(Event.gameClickIconModelWYClick.name())) {
                            statisticTable.setArgs1(JsonMapper.toJsonString(statRequest.getExt()));
                            statisticTable.setArgs2(String.valueOf(statRequest.getData().getGameId()));
                        } else {
                            if (statRequest.getEvent().equals(Event.unzipFailed.name())) {
                                statisticTable.setArgs2(statRequest.getExt().getGameFlag() + "");
                            }
                            statisticTable.setArgs1(statRequest.getData().getGameId() + "");
                        }
                    }
                }
            }
        }
        statisticTable.setTime(statRequest.getTime() + "");
        statisticTable.setAd(m.a(this.f77330d));
        statisticTable.setCountType(m.c(this.f77330d));
        statisticTable.setUid(statRequest.getUid() + "");
        if (statisticTable.getUid() == null || statisticTable.getUid().equals("") || statisticTable.getUid().equals("0")) {
            statisticTable.setUid(statRequest.getExt().getUid() + "");
        }
        this.f77329c.r(statisticTable);
        try {
            t(this.f77330d, this.f77329c.n(type, statisticTable.getTime()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void A(Event event, Ext ext, String str) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str != null || !str.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str));
                ext.setUid(Integer.parseInt(str));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        statRequest.setExt(ext);
        w0(statRequest);
    }

    public void B(Event event, StatRequest statRequest) {
        if (!event.name().equals(Event.indexGameStart.name()) && !event.name().equals(Event.clickIndexAdEvent.name()) && !event.name().equals(Event.visitIndexAdEvent.name()) && !event.name().equals(Event.gameRequest.name()) && !event.name().equals(Event.gameDownload.name()) && !event.name().equals(Event.startDownloadPlug.name()) && !event.name().equals(Event.downloadPlugCompleted.name()) && !event.name().equals(Event.installPlugCompleted.name()) && !event.name().equals(Event.gameOut.name()) && !event.name().equals(Event.startLocalNetBattleSuccessEmu.name()) && !event.name().equals(Event.endLocalNetBattleSuccessEmu.name()) && !event.name().equals(Event.netBattleMatchFinish.name()) && !event.name().equals(Event.netBattleMatchStart.name()) && !event.name().equals(Event.startShare.name()) && !event.name().equals(Event.shareChannel.name()) && !event.name().equals(Event.shareResult.name()) && !event.name().equals(Event.f2fRequestCreateQrcode.name()) && !event.name().equals(Event.f2fCreateQrcodeSuccess.name()) && !event.name().equals(Event.liveResDownloaded.name()) && !event.name().equals(Event.clickVsBtn.name()) && !event.name().equals(Event.clickVsHallBtn.name()) && !event.name().equals(Event.visitVsRoomPage.name()) && !event.name().equals(Event.visitVsMainPage.name()) && !event.name().equals(Event.clickVsForumBtn.name()) && !event.name().equals(Event.clickVsAdvBtn.name()) && !event.name().equals(Event.clickVsCreateRoom.name()) && !event.name().equals(Event.clickVsQuickJoin.name()) && !event.name().equals(Event.VsCreateWaitOver.name()) && !event.name().equals(Event.VsGameOverSuccess.name()) && !event.name().equals(Event.VsSelectSilentBtn.name()) && !event.name().equals(Event.VsCreateSilentRoom.name()) && !event.name().equals(Event.VsSilentTransform.name()) && !event.name().equals(Event.clickVsLocalBat.name()) && !event.name().equals(Event.clickVsNetBattleMatch.name()) && !event.name().equals(Event.f2fRequestScanQrcode.name()) && !event.name().equals(Event.f2fConnectQrcodeSuccess.name()) && !event.name().equals(Event.sharePasteClick.name()) && !event.name().equals(Event.f2fRequestTransferGame.name()) && !event.name().equals(Event.f2fTransferGameDone.name()) && !event.name().equals(Event.f2fInterruptTransferGame.name()) && !event.name().equals(Event.visitAppInternalPage.name()) && !event.name().equals(Event.arenaGameList.name()) && !event.name().equals(Event.arenaGameListBanner.name()) && !event.name().equals(Event.arenaGameListItem.name()) && !event.name().equals(Event.areaRoomFromInvite.name()) && !event.name().equals(Event.onMainPageShow.name()) && !event.name().equals(Event.requestEvent.name()) && !event.name().equals(Event.clickButtonEvent.name()) && !event.name().equals(Event.clickHomePageEvent.name()) && !event.name().equals(Event.clickShopHomeEvent.name()) && !event.name().equals(Event.findButtonEvent.name()) && !event.name().equals(Event.startStoreArchive.name()) && !event.name().equals(Event.startMeArchive.name()) && !event.name().equals(Event.makeStoreArchive.name()) && !event.name().equals(Event.downloadCloudArchive.name()) && !event.name().equals(Event.backupLocalArchive.name()) && !event.name().equals(Event.shareArchive.name()) && !event.name().equals(Event.startArchiveManagement.name()) && !event.name().equals(Event.md5error.name()) && !event.name().equals(Event.filenumerror.name()) && !event.name().equals(Event.visitGamePage.name()) && !event.name().equals(Event.clickGameDetailModel.name()) && !event.name().equals(Event.enterUserGameList.name()) && !event.name().equals(Event.clickSearchAdPosition.name()) && !event.name().equals(Event.downloadFromSearchResult.name()) && !event.name().equals(Event.clickDetailFromSearchResult.name()) && !event.name().equals(Event.showCopyright.name()) && !event.name().equals(Event.closeCopyright.name()) && !event.name().equals(Event.downloadCopyright.name()) && !event.name().equals(Event.openSourceUrl.name()) && !event.name().equals(Event.smallGameStartSDK.name()) && !event.name().equals(Event.smallRequestAdSDK.name()) && !event.name().equals(Event.smallExpAdSDK.name()) && !event.name().equals(Event.smallVideoDoneAdSDK.name())) {
            String strName = event.name();
            Event event2 = Event.homeSuccessUpRedBag;
            if (!strName.equals(event2.name())) {
                String strName2 = event.name();
                Event event3 = Event.tabStartSuccessUpRedBag;
                if (!strName2.equals(event3.name())) {
                    String strName3 = event.name();
                    Event event4 = Event.quitSingleSuccessUpRedBag;
                    if (!strName3.equals(event4.name())) {
                        String strName4 = event.name();
                        Event event5 = Event.tabStartViewSuccessTips;
                        if (!strName4.equals(event5.name())) {
                            String strName5 = event.name();
                            Event event6 = Event.clickTabGameTipsUpRedBag;
                            if (!strName5.equals(event6.name())) {
                                String strName6 = event.name();
                                Event event7 = Event.clickOpenPopUpRedBag;
                                if (!strName6.equals(event7.name()) && !event.name().equals(Event.listShowBigPicUPPage.name()) && !event.name().equals(Event.listShowIconHotList.name()) && !event.name().equals(Event.listClickBigPicStaus.name()) && !event.name().equals(Event.listClickIconStatus.name()) && !event.name().equals(Event.listClickBigPicSlideUPDown.name()) && !event.name().equals(Event.listClickIconSlideUPDown.name()) && !event.name().equals(Event.gameClickBigModelGet.name()) && !event.name().equals(Event.gameClickBigPicGoDetail.name()) && !event.name().equals(Event.gameClickIconModelClick.name()) && !event.name().equals(Event.game_strategy_panel.name()) && !event.name().equals(Event.gameClickBigPicGoWYDetail.name()) && !event.name().equals(Event.gameClickIconModelWYClick.name()) && !event.name().equals(event2.name()) && !event.name().equals(event3.name()) && !event.name().equals(event4.name()) && !event.name().equals(event5.name()) && !event.name().equals(event6.name()) && !event.name().equals(event7.name()) && !event.name().equals(Event.speedDownQkExp.name()) && !event.name().equals(Event.clickSpeedDownQkButton.name()) && !event.name().equals(Event.installTipsQkExp.name()) && !event.name().equals(Event.clickInstallQkButton.name()) && !event.name().equals(Event.installSuccessQk.name()) && !event.name().equals(Event.clickSpeedDownUpQk.name()) && !event.name().equals(Event.installAndroidCompleted.name()) && !event.name().equals(Event.gameDownload.name())) {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        w0(statRequest);
    }

    void C(Event event, Where where) throws Throwable {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        data.setWhere(where.name());
        statRequest.setData(data);
        w0(statRequest);
    }

    void D(Event event, Where where, String str) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        data.setWhere(where.name());
        if (str != null && !str.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str));
                statRequest.getExt().setUid(Integer.parseInt(str));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        statRequest.setData(data);
        w0(statRequest);
    }

    void E(Event event, String str) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        String strName = event.name();
        Event event2 = Event.gameWorldData;
        if (strName.equals(event2.name())) {
            statRequest.setData(data);
            w0(statRequest);
            return;
        }
        if (str == null || str.equals("")) {
            str = "0";
        }
        try {
            if (event.name().equals(Event.installPlugCompleted.name())) {
                data.setPlugId(Integer.parseInt(str));
            }
            if (event.name().equals(Event.startApp.name())) {
                data.setLocation(str);
            } else if (event.name().equals(event2.name())) {
                data.setModel(str);
            } else if (event.name().equals(Event.joyStickConfigPost.name()) || event.name().equals(Event.joyStickInfoPost.name())) {
                data.setLocation(str);
            } else if (event.name().equals(Event.submitPost.name())) {
                statRequest.getExt().setUid(Integer.parseInt(str));
            } else if (!str.equals("")) {
                data.setGameId(str);
            }
        } catch (Exception unused) {
            data.setGameId("0");
        }
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void F(Event event, String str, int i10, int i11) {
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.setUid(Integer.parseInt(str));
            statRequest.getExt().setUid(Integer.parseInt(str));
        } catch (Exception unused) {
        }
        statRequest.getExt().setEmuCount(i10 + "");
        statRequest.getExt().setApkCount(i11);
        statRequest.setTime(System.currentTimeMillis());
        StatisticTable statisticTable = new StatisticTable();
        statisticTable.setType(event.name());
        statisticTable.setTime(System.currentTimeMillis() + "");
        statisticTable.setAd(m.a(this.f77330d));
        statisticTable.setCountType(m.c(this.f77330d));
        statisticTable.setUid(statRequest.getUid() + "");
        statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
        this.f77329c.r(statisticTable);
        try {
            t(this.f77330d, this.f77329c.n(event.name(), statisticTable.getTime()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void G(Event event, String str, long j10, int i10, String str2) throws Throwable {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Ext ext = statRequest.getExt();
        Data data = new Data();
        try {
            data.setGameId(str);
            ext.setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        ext.setDuration(j10);
        ext.setInterrupt(i10);
        statRequest.setExt(ext);
        statRequest.setData(data);
        w0(statRequest);
    }

    void H(Event event, String str, long j10, String str2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        try {
            data.setGameId(str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            statRequest.getExt().setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        statRequest.getExt().setDuration(j10);
        data.setUid(str2);
        statRequest.setData(data);
        w0(statRequest);
    }

    void I(Event event, String str, long j10, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.getExt().setArticleId(str3);
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        try {
            data.setGameId(str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            statRequest.getExt().setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        statRequest.getExt().setDuration(j10);
        data.setUid(str2);
        statRequest.setData(data);
        w0(statRequest);
    }

    void J(Event event, String str, String str2) {
        n0(event, str, str2, 0, "", null);
    }

    void K(Event event, String str, String str2, int i10) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        if (str2 != null && !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
                statRequest.getExt().setFrom(i10 + "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        try {
            data.setGameId(str);
        } catch (Exception unused) {
            data.setGameId("0");
        }
        statRequest.setData(data);
        w0(statRequest);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066  */
    public void L(Event event, String str, String str2, int i10, String str3) {
        String str4;
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.getExt().setPlugVersion(str3);
            statRequest.setUid(Integer.parseInt(str2));
            statRequest.getData().setGameId(str);
            statRequest.getExt().setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        if (event.name().equals("clickLocalNetBattleJoinRoomBtn") || event.name().equals("joinLocalNetBattleRoomSuccess")) {
            str4 = i10 == 2 ? "qrcode" : v0.f50057a;
        } else if (event.name().equals("inviteBattleShareSuccess")) {
            str4 = i10 == 1 ? "weixin" : "qq";
        } else if (i10 == 7) {
            str4 = "netMatch";
        } else if (i10 == 2) {
            str4 = "inviteMatch";
        } else if (i10 == 3) {
            str4 = ax.f7484a;
        } else if (i10 == 9) {
            str4 = "multiBattle";
        } else if (i10 == 10) {
            str4 = "fastStart";
        } else {
            str4 = ax.f7484a;
        }
        statRequest.getExt().setMode(str4);
        statRequest.getExt().setUid(statRequest.getUid());
        StatisticTable statisticTable = new StatisticTable();
        statisticTable.setType(event.name());
        statisticTable.setTime(System.currentTimeMillis() + "");
        statisticTable.setAd(m.a(this.f77330d));
        statisticTable.setCountType(m.c(this.f77330d));
        statisticTable.setUid(statRequest.getUid() + "");
        statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
        this.f77329c.r(statisticTable);
        try {
            t(this.f77330d, this.f77329c.n(event.name(), statisticTable.getTime()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void M(Event event, String str, String str2, long j10, int i10, String str3, long j11, int i11, int i12, int i13, String str4) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str3 != null || !str3.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str3));
                statRequest.getExt().setUid(Integer.parseInt(str3));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Ext ext = statRequest.getExt();
        Data data = new Data();
        try {
            data.setGameId(str);
            ext.setUid(Integer.parseInt(str3));
        } catch (Exception unused) {
        }
        ext.setZipCost(j11);
        ext.setDuration(j10);
        ext.setInterrupt(i10);
        ext.setFrom(i11 + "");
        ext.setKeyWord(str2 + "");
        if (i11 == 101) {
            ext.setPosition(i12 + "");
        }
        ext.setGameFlag(i13);
        ext.setDataFlag(str4);
        statRequest.setExt(ext);
        statRequest.setData(data);
        w0(statRequest);
    }

    public void N(Event event, String str, String str2, long j10, int i10, String str3, String str4, long j11, int i11, int i12, int i13, String str5) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str3 != null || !str3.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str3));
                statRequest.getExt().setUid(Integer.parseInt(str3));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Ext ext = statRequest.getExt();
        Data data = new Data();
        try {
            data.setGameId(str);
            ext.setUid(Integer.parseInt(str3));
        } catch (Exception unused) {
        }
        ext.setZipCost(j11);
        ext.setArticleId(str4);
        data.setWhere(str2);
        ext.setDuration(j10);
        ext.setInterrupt(i10);
        ext.setFrom(i11 + "");
        if (i11 == 101) {
            ext.setPosition(i12 + "");
        }
        ext.setGameFlag(i13);
        ext.setDataFlag(str5);
        statRequest.setExt(ext);
        statRequest.setData(data);
        w0(statRequest);
    }

    public void O(Event event, String str, String str2, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setExt(ext);
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Data data = new Data();
        try {
            data.setGameId(str);
            ext.setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        data.setWhere(ext.getKeyWord());
        statRequest.setData(data);
        w0(statRequest);
    }

    void P(Event event, String str, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        try {
            statRequest.setUid(Integer.parseInt(str3));
        } catch (Exception unused) {
        }
        if (event.name().equals(Event.appPageClick.name()) || event.name().equals(Event.appPageDownload.name())) {
            statRequest.getExt().setPage(str);
            try {
                statRequest.getExt().setUid(Integer.parseInt(str3));
            } catch (Exception unused2) {
            }
            statRequest.getExt().setPosition(str2);
        } else if (event.name().equals(Event.plugEfficiency.name()) || event.name().equals(Event.pluginPlayTime.name())) {
            try {
                Data data = new Data();
                try {
                    data.setGameId(str);
                    data.setWhere(str2);
                    statRequest.setUid(Integer.parseInt(str3));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                statRequest.setData(data);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } else {
            Data data2 = new Data();
            if (str2 == null || str2.isEmpty()) {
                str2 = "0";
            }
            try {
                data2.setGameId(str2);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            if (str3 != null && !str3.equals("")) {
                try {
                    statRequest.setUid(Integer.parseInt(str3));
                    statRequest.getExt().setUid(Integer.parseInt(str3));
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
            }
            data2.setWhere(str);
            statRequest.setData(data2);
        }
        w0(statRequest);
    }

    public void Q(Event event, String str, String str2, String str3, long j10, int i10, String str4, long j11, int i11) throws Throwable {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str4 != null || !str4.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str4));
                statRequest.getExt().setUid(Integer.parseInt(str4));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Ext ext = statRequest.getExt();
        Data data = new Data();
        try {
            data.setGameId(str);
            ext.setUid(Integer.parseInt(str4));
        } catch (Exception unused) {
        }
        ext.setZipCost(j11);
        ext.setArticleId(str2);
        data.setWhere(str3);
        ext.setDuration(j10);
        ext.setInterrupt(i10);
        ext.setGameFlag(i11);
        statRequest.setExt(ext);
        statRequest.setData(data);
        w0(statRequest);
    }

    public void R(Event event, String str, String str2, String str3, String str4, String str5) {
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.setUid(Integer.parseInt(str5));
        } catch (Exception unused) {
        }
        statRequest.getExt().setFrom(str);
        statRequest.getExt().setPosition(str2);
        statRequest.getExt().setPage(str3);
        statRequest.getExt().setModule(str4);
        StatisticTable statisticTable = new StatisticTable();
        statisticTable.setType(event.name());
        statisticTable.setTime(System.currentTimeMillis() + "");
        statisticTable.setAd(m.a(this.f77330d));
        statisticTable.setCountType(m.c(this.f77330d));
        statisticTable.setUid(statRequest.getUid() + "");
        statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
        this.f77329c.r(statisticTable);
        try {
            t(this.f77330d, this.f77329c.n(event.name(), statisticTable.getTime()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void S(String str, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setNew(true);
        Data data = new Data();
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void T(String str, Ext ext, Data data) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setRequest(true);
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void U(String str, Ext ext, String str2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setNew(true);
        Data data = new Data();
        data.setWhere(str2);
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void V(String str, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        if (str3 != null || !str3.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str3));
                statRequest.getExt().setUid(Integer.parseInt(str3));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Data data = new Data();
        if (str2 == null || str2.equals("")) {
            str2 = "0";
        }
        try {
            data.setGameId(str2);
        } catch (Exception unused) {
            data.setGameId("0");
        }
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    void W(String str, String str2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Data data = new Data();
        Ext ext = statRequest.getExt();
        ext.setUid(Integer.parseInt(str2));
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    void X(String str, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Data data = new Data();
        Ext ext = statRequest.getExt();
        ext.setUid(Integer.parseInt(str2));
        ext.setBtn(str3);
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    void Y(String str, String str2, String str3, String str4, String str5, String str6) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Data data = new Data();
        Ext ext = statRequest.getExt();
        if (str3 == null || str3.equals("")) {
            str3 = "0";
        }
        ext.setUid(Integer.parseInt(str2));
        ext.setGameId(str3);
        ext.setBtn(str4);
        ext.setPosition(str5);
        ext.setPicName(str6);
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a0(Context context, List<StatisticTable> list) {
        ArrayList arrayList = new ArrayList();
        for (StatisticTable statisticTable : list) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("sendAllPlugPlayData: ");
            sb2.append(JsonMapper.toJsonString(statisticTable));
            StatRequest statRequestH = h(context, statisticTable);
            if (statRequestH.getUid() == 0 || statRequestH.getExt().getUid() == 0) {
                try {
                    statRequestH.setUid(Integer.parseInt(t.l(context).n().a(context)));
                    statRequestH.getExt().setUid(Integer.parseInt(t.l(context).n().a(context)));
                } catch (Exception unused) {
                }
            }
            arrayList.add(statRequestH);
        }
        if (arrayList.size() > 0) {
            com.papa.sim.statistic.http.c.c().h(context, f77322p + "/simulator/simulator_play_game_log", ((StatRequest) arrayList.get(0)).getExt().getArticleId(), new f(list), arrayList);
        }
    }

    public void b0(StatDataCenterReq statDataCenterReq) {
        try {
            statDataCenterReq.setNettype(n(this.f77330d));
            statDataCenterReq.setCarrier(k(this.f77330d) + "");
            String jsonString = JsonMapper.toJsonString(statDataCenterReq);
            if (j(jsonString, statDataCenterReq.getDid()).equals(WMConstants.TIMER_STAGE_NONE)) {
                StatisticTable statisticTable = new StatisticTable();
                statisticTable.setType(statDataCenterReq.getEvent());
                statisticTable.setArgs1(jsonString);
                statisticTable.setTime(statDataCenterReq.getGame_time() + "");
                statisticTable.setIsdirect(1);
                if (this.f77329c.n(statDataCenterReq.getEvent(), statisticTable.getTime()) == null) {
                    this.f77329c.r(statisticTable);
                }
            }
        } catch (Exception unused) {
        }
    }

    public boolean c0(BossTable bossTable) {
        try {
            if (bossTable.getType().equals(Event.setemuerror.name())) {
                EmuErrorDto emuErrorDto = (EmuErrorDto) JsonMapper.getInstance().fromJson(bossTable.getArgs1(), EmuErrorDto.class);
                if (emuErrorDto == null) {
                    return false;
                }
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                HttpPost httpPost = new HttpPost(f77319m + "/add/commitpluginerrorinfo");
                httpPost.addHeader("Content-Type", "application/json");
                u.f(this.f77330d);
                String strB = u.f(this.f77330d).b();
                String strG = u.f(this.f77330d).g();
                WifiInfo connectionInfo = ((WifiManager) this.f77330d.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
                if (strB == null || strB.equals("")) {
                    strB = l.a(strG);
                }
                String str = strB;
                String strA = l.a(str + "gzRN53VWRF9BYUXomg2014");
                String[] strArrR = u.f(this.f77330d).r();
                emuErrorDto.setModel(Build.MODEL);
                emuErrorDto.setMac(strG.replaceAll(":", "_"));
                emuErrorDto.setIp(p(connectionInfo.getIpAddress()));
                emuErrorDto.setTimes((Long.parseLong(bossTable.getTime()) / 1000) + "");
                String json = JsonMapper.getInstance().toJson(new ErrorRequestBean(strArrR[0] + "_" + strArrR[1], str, "add", strA, new ErrorRequestMessage("commitPluginErrorInfo", emuErrorDto)));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("paramsJson=");
                sb2.append(json);
                httpPost.setEntity(new StringEntity(json));
                HttpResponse httpResponseExecute = defaultHttpClient.execute(httpPost);
                if (httpResponseExecute.getStatusLine().getStatusCode() == 200) {
                    ResultMainBean resultMainBean = (ResultMainBean) JsonMapper.getInstance().fromJson(EntityUtils.toString(httpResponseExecute.getEntity()), ResultMainBean.class);
                    if (resultMainBean != null) {
                        resultMainBean.getFlag();
                    }
                }
            }
            return true;
        } catch (UnknownHostException e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(e10.getClass().getName());
            sb3.append(":");
            sb3.append(e10.getMessage());
            return false;
        } catch (Exception e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public void d0(Event event, String str, String str2) throws Throwable {
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.setUid(Integer.parseInt(str2));
            statRequest.getData().setGameId(str);
            statRequest.getExt().setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        statRequest.getExt().setPlugVersion(t.f77353h);
        StatisticTable statisticTable = new StatisticTable();
        statisticTable.setType(event.name());
        statisticTable.setTime(System.currentTimeMillis() + "");
        statisticTable.setAd(m.a(this.f77330d));
        statisticTable.setCountType(m.c(this.f77330d));
        statisticTable.setUid(statRequest.getUid() + "");
        statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
        this.f77329c.r(statisticTable);
        try {
            t(this.f77330d, this.f77329c.n(event.name(), statisticTable.getTime()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void e0(Event event, String str, String str2, String str3, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setTime(System.currentTimeMillis());
        try {
            statRequest.setUid(Integer.parseInt(str2));
            statRequest.getData().setGameId(str);
            statRequest.getExt().setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        statRequest.getExt().setPlugVersion(str3);
        StatisticTable statisticTable = new StatisticTable();
        statisticTable.setType(event.name());
        statisticTable.setTime(System.currentTimeMillis() + "");
        statisticTable.setAd(m.a(this.f77330d));
        statisticTable.setCountType(m.c(this.f77330d));
        statisticTable.setUid(statRequest.getUid() + "");
        if (ext != null) {
            statRequest.getExt().setFrom(ext.getFrom());
        }
        statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
        this.f77329c.r(statisticTable);
        try {
            t(this.f77330d, this.f77329c.n(event.name(), statisticTable.getTime()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void f0(String str, Ext ext, String str2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        if (!TextUtils.isEmpty(str2)) {
            try {
                data.setGameId(str2);
            } catch (Exception unused) {
            }
        }
        statRequest.setExt(ext);
        if (ext != null && !TextUtils.isEmpty(ext.getWhere())) {
            statRequest.getData().setWhere(ext.getWhere());
        }
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void g0(String str, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        Ext ext = new Ext();
        ext.setPage(str3);
        statRequest.setExt(ext);
        Data data = new Data();
        data.setWhere(str2);
        statRequest.setData(data);
        try {
            w0(statRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void h0(String str, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setExt(ext);
        statRequest.setData(new Data());
        try {
            w0(statRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void i(StatRequest statRequest) {
        this.f77329c.delete(statRequest.getId());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("发送成功之后删除数据 deleStat ");
        sb2.append(statRequest.getEvent());
    }

    void i0(String str, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setNew(true);
        statRequest.setExt(ext);
        statRequest.setData(new Data());
        try {
            w0(statRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void j0(StatRequest statRequest) {
        try {
            w0(statRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public int k(Context context) {
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator == null) {
            return 0;
        }
        if (simOperator.equals("46000") || simOperator.equals("46002")) {
            return 2;
        }
        if (simOperator.equals("46001")) {
            return 3;
        }
        return simOperator.equals("46003") ? 1 : 0;
    }

    void k0(Event event, String str, String str2, int i10) {
        n0(event, str, str2, i10, "", null);
    }

    void l0(Event event, String str, String str2, int i10, Ext ext) {
        n0(event, str, str2, i10, "", ext);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x02ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    void m0(Event event, String str, String str2, int i10, StatRequest statRequest) {
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        statRequest.getExt().setGameFlag(i10);
        if (event.name().equals(Event.gameList.name())) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setGameList(str);
            w0(statRequest);
            return;
        }
        Data data = new Data();
        if (event.name().equals(Event.setpapaerror.name()) || event.name().equals(Event.setemuerror.name())) {
            data.setWhere(str);
            data.setLocation(str2);
        } else {
            if (str2 != null && !str2.equals("")) {
                try {
                    statRequest.setUid(Integer.parseInt(str2));
                    statRequest.getExt().setUid(Integer.parseInt(str2));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (event.name().equals(Event.gameStart.name())) {
                data.setGameId(str);
            } else {
                String strName = event.name();
                Event event2 = Event.startLocalNetBattleSuccess;
                if (strName.equals(event2.name()) || event.name().equals(Event.gameDownload.name()) || event.name().equals(Event.clickLocalNetBattleStartBtn.name()) || event.name().equals(Event.createLocalNetBattleRoomSuccess.name()) || event.name().equals(Event.joinLocalNetBattleRoomSuccess.name()) || event.name().equals(Event.clickCreateLocalNetBattleRoomBtn.name()) || event.name().equals(Event.clickLocalNetBattleJoinRoomBtn.name()) || event.name().equals(Event.clickLocalNetBattleRoomStartBtn.name()) || event.name().equals(Event.visitGamePage.name()) || event.name().equals(event2.name()) || event.name().equals(Event.netBattleMatchStart.name()) || event.name().equals(Event.netBattleMatchFinish.name()) || event.name().equals(Event.gameRequest.name()) || event.name().equals(Event.gameRemove.name()) || event.name().equals(Event.downloadStop.name()) || event.name().equals(Event.gameRemove1.name()) || event.name().equals(Event.gameRemove2.name()) || event.name().equals(Event.unzipFailed.name()) || event.name().equals(Event.unzipIndexFailed.name()) || event.name().equals(Event.unzipIOFailed.name()) || event.name().equals(Event.gameUnzip.name()) || event.name().equals(Event.installAndroidCompleted.name()) || event.name().equals(Event.netMatchBtnClick.name()) || event.name().equals(Event.inviteBattleAutoJoinSuccess.name()) || event.name().equals(Event.VMGameStart.name()) || event.name().equals(Event.VMGameStartAfterStatus.name())) {
                    try {
                        data.setGameId(str);
                    } catch (Exception unused2) {
                        data.setGameId("0");
                    }
                } else if (event.name().equals(Event.appUseTime.name()) || event.name().equals(Event.netBattleMatchEfficiency.name()) || event.name().equals(Event.joyStickInfoPost.name()) || event.name().equals(Event.joyStickConfigPost.name())) {
                    data.setLocation(str);
                } else if (event.name().equals(Event.startDownloadPlug.name()) || event.name().equals(Event.downloadPlugCompleted.name())) {
                    try {
                        data.setPlugId(Integer.parseInt(str));
                    } catch (Exception unused3) {
                    }
                } else if (event.name().equals(Event.appPageVisit.name())) {
                    statRequest.getExt().setPage(str);
                }
            }
        }
        statRequest.setData(data);
        w0(statRequest);
    }

    public String n(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.getType() != 1 && activeNetworkInfo.getType() == 0) {
            int subtype = activeNetworkInfo.getSubtype();
            if (subtype == 4 || subtype == 1 || subtype == 2) {
                return NetworkUtil.NETWORK_CLASS_2G;
            }
            if (subtype == 3 || subtype == 8 || subtype == 6 || subtype == 5 || subtype == 12) {
                return NetworkUtil.NETWORK_CLASS_3G;
            }
            if (subtype == 13) {
                return NetworkUtil.NETWORK_CLASS_4G;
            }
        }
        return NetworkUtil.NETWORK_TYPE_WIFI;
    }

    void n0(Event event, String str, String str2, int i10, String str3, Ext ext) {
        o0(event, str, str2, i10, "", "", ext);
    }

    public int o(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            if (activeNetworkInfo.getType() == 1) {
                return 3;
            }
            if (activeNetworkInfo.getType() == 0) {
                return 2;
            }
        }
        return 1;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x02e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    void o0(Event event, String str, String str2, int i10, String str3, String str4, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        statRequest.getExt().setQkPosition(str4);
        statRequest.getExt().setGameFlag(i10);
        statRequest.getExt().setDataFlag(str3);
        if (ext != null) {
            v0(statRequest.getExt(), ext);
        }
        if (event.name().equals(Event.gameList.name())) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setGameList(str);
            w0(statRequest);
            return;
        }
        Data data = new Data();
        if (event.name().equals(Event.setpapaerror.name()) || event.name().equals(Event.setemuerror.name())) {
            data.setWhere(str);
            data.setLocation(str2);
        } else {
            if (str2 != null && !str2.equals("")) {
                try {
                    statRequest.setUid(Integer.parseInt(str2));
                    statRequest.getExt().setUid(Integer.parseInt(str2));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (event.name().equals(Event.gameStart.name())) {
                data.setGameId(str);
            } else {
                String strName = event.name();
                Event event2 = Event.startLocalNetBattleSuccess;
                if (strName.equals(event2.name()) || event.name().equals(Event.gameDownload.name()) || event.name().equals(Event.clickLocalNetBattleStartBtn.name()) || event.name().equals(Event.createLocalNetBattleRoomSuccess.name()) || event.name().equals(Event.joinLocalNetBattleRoomSuccess.name()) || event.name().equals(Event.clickCreateLocalNetBattleRoomBtn.name()) || event.name().equals(Event.clickLocalNetBattleJoinRoomBtn.name()) || event.name().equals(Event.clickLocalNetBattleRoomStartBtn.name()) || event.name().equals(Event.visitGamePage.name()) || event.name().equals(event2.name()) || event.name().equals(Event.netBattleMatchStart.name()) || event.name().equals(Event.netBattleMatchFinish.name()) || event.name().equals(Event.gameRequest.name()) || event.name().equals(Event.gameRemove.name()) || event.name().equals(Event.downloadStop.name()) || event.name().equals(Event.gameRemove1.name()) || event.name().equals(Event.gameRemove2.name()) || event.name().equals(Event.unzipFailed.name()) || event.name().equals(Event.unzipIndexFailed.name()) || event.name().equals(Event.unzipIOFailed.name()) || event.name().equals(Event.gameUnzip.name()) || event.name().equals(Event.installAndroidCompleted.name()) || event.name().equals(Event.netMatchBtnClick.name()) || event.name().equals(Event.inviteBattleAutoJoinSuccess.name()) || event.name().equals(Event.VMGameStart.name()) || event.name().equals(Event.VMGameStartAfterStatus.name())) {
                    try {
                        data.setGameId(str);
                    } catch (Exception unused2) {
                        data.setGameId("0");
                    }
                } else if (event.name().equals(Event.appUseTime.name()) || event.name().equals(Event.netBattleMatchEfficiency.name()) || event.name().equals(Event.joyStickInfoPost.name()) || event.name().equals(Event.joyStickConfigPost.name())) {
                    data.setLocation(str);
                } else if (event.name().equals(Event.startDownloadPlug.name()) || event.name().equals(Event.downloadPlugCompleted.name())) {
                    try {
                        data.setPlugId(Integer.parseInt(str));
                    } catch (Exception unused3) {
                    }
                } else if (event.name().equals(Event.appPageVisit.name())) {
                    statRequest.getExt().setPage(str);
                }
            }
        }
        statRequest.setData(data);
        w0(statRequest);
    }

    public void p0(g gVar) {
        this.f77331e = gVar;
    }

    public boolean q() {
        return this.f77335i;
    }

    public boolean r() {
        return this.f77336j;
    }

    public void r0(boolean z10) {
        this.f77335i = z10;
    }

    public boolean s() {
        return this.f77337k;
    }

    public void s0(boolean z10) {
        this.f77336j = z10;
    }

    public void t(Context context, StatisticTable statisticTable) {
        StatRequest statRequestH;
        g();
        if (com.papa.sim.statistic.pref.b.k(context).s() || statisticTable == null || (statRequestH = h(context, statisticTable)) == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("thread[");
        sb2.append(Thread.currentThread().getId());
        sb2.append("] method offline() statRequest .id=");
        sb2.append(statRequestH.getId());
        sb2.append(";event=");
        sb2.append(statRequestH.getEvent());
        sb2.append(";isdirect=");
        sb2.append(statisticTable.getIsdirect());
        statRequestH.setDebug(this.f77328b);
        if (statRequestH.getExt() == null) {
            statRequestH.setExt(new Ext());
        }
        if (this.f77331e != null) {
            statRequestH.getData().setPageVersion(this.f77331e.a());
        }
        if (TextUtils.isEmpty(statRequestH.getExt().getEmuCount())) {
            statRequestH.getExt().setEmuCount(u.m());
        }
        try {
            if (statisticTable.getType().equals(Event.netBattleMatchEfficiency.name())) {
                String str = f77319m + "/netbattle/performance";
                File file = new File(statRequestH.getExt().getLogFile());
                if (file.exists()) {
                    com.papa.sim.statistic.http.c.c().d(str, file, new a(context, statisticTable));
                    return;
                }
                return;
            }
            if (statisticTable.getType().equals(Event.plugEfficiency.name())) {
                com.papa.sim.statistic.http.c.c().e(context, f77319m + "/plug_data", statRequestH.getData().getGameId(), statRequestH.getData().getWhere(), statRequestH.getUid(), new b(statisticTable));
                return;
            }
            if (statisticTable.getType().equals(Event.pluginPlayTime.name())) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(statRequestH);
                com.papa.sim.statistic.http.c.c().h(context, f77322p + "/simulator/simulator_play_game_log", statRequestH.getExt().getArticleId(), new c(statisticTable), arrayList);
                return;
            }
            if (statRequestH.getUid() == 0 || statRequestH.getExt().getUid() == 0) {
                try {
                    statRequestH.setUid(Integer.parseInt(t.l(context).n().a(context)));
                    statRequestH.getExt().setUid(Integer.parseInt(t.l(context).n().a(context)));
                } catch (Exception unused) {
                }
            }
            if (!this.f77328b && !statRequestH.getEvent().equals(Event.startApp.name()) && !statRequestH.getEvent().equals(Event.gameDownload.name()) && !statRequestH.getEvent().equals(Event.gameRequest.name()) && !statRequestH.getEvent().equals(Event.gameStart.name()) && !statRequestH.getEvent().equals(Event.gameDownloadCompleted.name()) && !statRequestH.getEvent().equals(Event.installAndroidCompleted.name()) && !statRequestH.getEvent().equals(Event.gameUnzip.name()) && !statRequestH.getEvent().equals(Event.gameOut.name()) && !statRequestH.getEvent().equals(Event.visitGamePage.name()) && !statRequestH.getEvent().equals(Event.gameList.name()) && !statRequestH.getEvent().equals(Event.userLogin.name()) && !statRequestH.getEvent().equals(Event.welcomePageShow.name()) && !statRequestH.getEvent().equals(Event.clickFastLoginButton.name()) && !statRequestH.getEvent().equals(Event.quickLoginResult.name()) && !statRequestH.getEvent().equals(Event.clickOtherLogin.name()) && !statRequestH.getEvent().equals(Event.otherLoginPageShow.name()) && !statRequestH.getEvent().equals(Event.tokenLoginResult.name()) && !statRequestH.getEvent().equals(Event.clickThirdpartyLogin.name()) && !statRequestH.getEvent().equals(Event.thirdPartyLoginSuccess.name()) && !statRequestH.getEvent().equals(Event.loginAuthPageShow.name()) && !statRequestH.getEvent().equals(Event.accountLoginSubmit.name()) && !statRequestH.getEvent().equals(Event.accountLoginSuccess.name()) && !statRequestH.getEvent().equals(Event.accountRegisterShow.name()) && !statRequestH.getEvent().equals(Event.accountRegisterSubmit.name()) && !statRequestH.getEvent().equals(Event.accountRegistertSuccess.name()) && !statRequestH.getEvent().equals(Event.VMGameStart.name()) && !statRequestH.getEvent().equals(Event.VMGameStartAfterStatus.name()) && !statRequestH.getEvent().equals(Event.gamePlayTimes.name())) {
                this.f77329c.g();
                List<StatisticTable> listK = this.f77329c.k();
                if (listK == null || listK.size() < 10 || this.f77333g) {
                    return;
                }
                this.f77333g = true;
                Z(listK);
                return;
            }
            try {
                if (statRequestH.getEvent().equals(Event.gameRequest.name())) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("From=");
                    sb3.append(statRequestH.getExt().getFrom());
                    sb3.append("  Position= ");
                    sb3.append(statRequestH.getExt().getPosition());
                }
                if (statRequestH.getEvent().equals(Event.gameStart.name()) && this.f77331e != null) {
                    statRequestH.getExt().setClearStatus(this.f77331e.b());
                }
                if (statRequestH.getEvent().equals(Event.gameDownload.name()) && statRequestH.getExt().getFrom().startsWith(PointType.WIND_ADAPTER)) {
                    statRequestH.getExt().setPage(ExtFrom.home.name());
                }
                if (TextUtils.isEmpty(statRequestH.getExt().getEmuCount())) {
                    statRequestH.getExt().setEmuCount(u.m());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (this.f77331e != null) {
                statRequestH.getData().setPageVersion(this.f77331e.a());
            }
            String json = JsonMapper.getInstance().toJson(statRequestH);
            if (this.f77328b) {
                k.c(this.f77327a, json, statRequestH.getEvent());
            }
            try {
                json = com.papa.sim.statistic.a.b(json, "");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            com.papa.sim.statistic.http.c.c().g(f77319m + "/data/v3", json, new d(statisticTable, context));
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public void t0(boolean z10) {
        this.f77337k = z10;
    }

    public void u(Context context, List<StatisticTable> list) {
        Z(list);
    }

    public void u0(Context context, JoyStickConfig joyStickConfig) {
        n.a(context, joyStickConfig);
    }

    public void v0(Ext ext, Ext ext2) {
        ext.setFrom(ext2.getFrom());
        ext.setFirstModule(ext2.getFirstModule());
        ext.setSecondModule(ext2.getSecondModule());
        ext.setCollectId(ext2.getCollectId());
        ext.setResultCode(ext2.getResultCode());
        ext.setTypeCode(ext2.getTypeCode());
        ext.setRecScene(ext2.getRecScene());
        ext.setPosition(ext2.getPosition());
        ext.setTag_ids(ext2.getTag_ids());
        ext.setGameId(ext2.getGameId());
        ext.setSopName(ext2.getSopName());
        ext.setPapaPage(ext2.getPapaPage());
        ext.setSopNo(ext2.getSopNo());
        ext.setChatId(ext2.getChatId());
        ext.setResourceId(ext2.getResourceId());
        ext.setReMarks(ext2.getReMarks());
        ext.setScenesCode(ext2.getScenesCode());
        ext.setGuideKey(ext2.getGuideKey());
    }

    void w(Event event, int i10) throws Throwable {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        try {
            data.setPlugId(i10);
        } catch (Exception unused) {
            data.setGameId("0");
        }
        statRequest.setData(data);
        w0(statRequest);
    }

    public void x(Event event, Event event2, int i10, String str, int i11) {
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.getData().setGameId(str);
        } catch (Exception unused) {
        }
        Ext ext = statRequest.getExt();
        ext.setUid(i11);
        ext.setNetType(o(this.f77330d));
        ext.setBtn(event2.name() + i10);
        ext.setGameId(str);
        StatisticTable statisticTable = new StatisticTable();
        statisticTable.setType(event.name());
        statisticTable.setTime(System.currentTimeMillis() + "");
        statisticTable.setAd(m.a(this.f77330d));
        statisticTable.setCountType(m.c(this.f77330d));
        statisticTable.setUid(statRequest.getUid() + "");
        statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
        this.f77329c.r(statisticTable);
        try {
            t(this.f77330d, this.f77329c.n(event.name(), statisticTable.getTime()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void y(Event event, Event event2, String str, int i10) {
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.getData().setGameId(str);
        } catch (Exception unused) {
        }
        Ext ext = statRequest.getExt();
        ext.setUid(i10);
        ext.setNetType(o(this.f77330d));
        ext.setBtn(event2.name());
        ext.setMode(event2.name());
        statRequest.setUid(ext.getUid());
        StatisticTable statisticTable = new StatisticTable();
        statisticTable.setType(event.name());
        statisticTable.setTime(System.currentTimeMillis() + "");
        statisticTable.setAd(m.a(this.f77330d));
        statisticTable.setCountType(m.c(this.f77330d));
        statisticTable.setUid(statRequest.getUid() + "");
        statisticTable.setArgs1(JsonMapper.getInstance().toJson(statRequest));
        this.f77329c.r(statisticTable);
        try {
            t(this.f77330d, this.f77329c.n(event.name(), statisticTable.getTime()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void z(Event event, Ext ext) throws Throwable {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setExt(ext);
        w0(statRequest);
    }
}
