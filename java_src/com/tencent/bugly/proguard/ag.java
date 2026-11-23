package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.sigmob.sdk.base.mta.PointType;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SimpleDateFormat f83222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ad f83223b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final ag f83226a = new ag(0);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f83227a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f83228b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f83229c;

        public final String toString() {
            return "SLAData{uuid='" + this.f83227a + "', time=" + this.f83228b + ", data='" + this.f83229c + "'}";
        }
    }

    /* synthetic */ ag(byte b10) {
        this();
    }

    static void c(List<b> list) {
        if (list == null || list.isEmpty()) {
            al.c("sla batch report data is empty", new Object[0]);
            return;
        }
        al.c("sla batch report list size:%s", Integer.valueOf(list.size()));
        if (list.size() > 30) {
            list = list.subList(0, 29);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().f83229c);
        }
        Pair<Integer, String> pairA = ad.a(arrayList);
        al.c("sla batch report result, rspCode:%s rspMsg:%s", pairA.first, pairA.second);
        if (((Integer) pairA.first).intValue() == 200) {
            d(list);
        }
    }

    public static void d(List<b> list) {
        if (list == null || list.isEmpty()) {
            al.c("sla batch delete list is null", new Object[0]);
            return;
        }
        al.c("sla batch delete list size:%s", Integer.valueOf(list.size()));
        try {
            String str = "_id in (" + a(",", list) + ")";
            al.c("sla batch delete where:%s", str);
            w.a().a("t_sla", str);
        } catch (Throwable th) {
            al.b(th);
        }
    }

    private static void e(List<b> list) {
        for (b bVar : list) {
            al.c("sla save id:%s time:%s msg:%s", bVar.f83227a, Long.valueOf(bVar.f83228b), bVar.f83229c);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", bVar.f83227a);
                contentValues.put("_tm", Long.valueOf(bVar.f83228b));
                contentValues.put("_dt", bVar.f83229c);
                w.a().a("t_sla", contentValues, (v) null);
            } catch (Throwable th) {
                al.b(th);
            }
        }
    }

    public final void a(List<c> list) {
        if (list == null || list.isEmpty()) {
            al.d("sla batch report event is null", new Object[0]);
            return;
        }
        al.c("sla batch report event size:%s", Integer.valueOf(list.size()));
        ArrayList arrayList = new ArrayList();
        Iterator<c> it2 = list.iterator();
        while (it2.hasNext()) {
            b bVarB = b(it2.next());
            if (bVarB != null) {
                arrayList.add(bVarB);
            }
        }
        e(arrayList);
        b(arrayList);
    }

    public final void b(final List<b> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            ak.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.ag.1
                @Override // java.lang.Runnable
                public final void run() {
                    ag.c(list);
                }
            });
        } else {
            c(list);
        }
    }

    private ag() {
        this.f83222a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS", Locale.US);
        this.f83223b = new ad();
    }

    private b b(c cVar) {
        if (cVar != null && !TextUtils.isEmpty(cVar.f83231b)) {
            aa aaVarB = aa.b();
            if (aaVarB == null) {
                al.d("sla convert failed because ComInfoManager is null", new Object[0]);
                return null;
            }
            StringBuilder sb2 = new StringBuilder("&app_version=");
            sb2.append(aaVarB.f83195p);
            sb2.append("&app_name=");
            sb2.append(aaVarB.f83197r);
            sb2.append("&app_bundle_id=");
            sb2.append(aaVarB.f83184d);
            sb2.append("&client_type=android&user_id=");
            sb2.append(aaVarB.g());
            sb2.append("&sdk_version=");
            sb2.append(aaVarB.f83189i);
            sb2.append("&event_code=");
            sb2.append(cVar.f83231b);
            sb2.append("&event_result=");
            sb2.append(cVar.f83233d ? 1 : 0);
            sb2.append("&event_time=");
            sb2.append(this.f83222a.format(new Date(cVar.f83232c)));
            sb2.append("&event_cost=");
            sb2.append(cVar.f83234e);
            sb2.append("&device_id=");
            sb2.append(aaVarB.j());
            sb2.append("&debug=");
            sb2.append(aaVarB.E ? 1 : 0);
            sb2.append("&param_0=");
            sb2.append(cVar.f83235f);
            sb2.append("&param_1=");
            sb2.append(cVar.f83230a);
            sb2.append("&param_2=");
            sb2.append(aaVarB.N ? "rqd" : "ext");
            sb2.append("&param_4=");
            sb2.append(aaVarB.f());
            String string = sb2.toString();
            if (!TextUtils.isEmpty(cVar.f83236g)) {
                string = string + "&param_3=" + cVar.f83236g;
            }
            al.c("sla convert eventId:%s eventType:%s, eventTime:%s success:%s cost:%s from:%s uploadMsg:", cVar.f83230a, cVar.f83231b, Long.valueOf(cVar.f83232c), Boolean.valueOf(cVar.f83233d), Long.valueOf(cVar.f83234e), cVar.f83235f, cVar.f83236g);
            String str = cVar.f83230a + "-" + cVar.f83231b;
            b bVar = new b();
            bVar.f83227a = str;
            bVar.f83228b = cVar.f83232c;
            bVar.f83229c = string;
            return bVar;
        }
        al.d("sla convert event is null", new Object[0]);
        return null;
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f83230a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f83231b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f83232c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f83233d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f83234e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f83235f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f83236g;

        public c(String str, String str2, long j10, boolean z10, long j11, String str3, String str4) {
            this.f83230a = str;
            this.f83231b = str2;
            this.f83232c = j10;
            this.f83233d = z10;
            this.f83234e = j11;
            this.f83235f = str3;
            this.f83236g = str4;
        }

        public c() {
        }
    }

    private static String a(String str, Iterable<b> iterable) {
        Iterator<b> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("'");
        sb2.append(it2.next().f83227a);
        sb2.append("'");
        while (it2.hasNext()) {
            sb2.append(str);
            sb2.append("'");
            sb2.append(it2.next().f83227a);
            sb2.append("'");
        }
        return sb2.toString();
    }

    public static List<b> a() {
        Cursor cursorA = w.a().a("t_sla", new String[]{"_id", "_tm", "_dt"}, (String) null, "_tm", PointType.DOWNLOAD_TRACKING);
        if (cursorA == null) {
            return null;
        }
        if (cursorA.getCount() <= 0) {
            cursorA.close();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (cursorA.moveToNext()) {
            try {
                b bVar = new b();
                bVar.f83227a = cursorA.getString(cursorA.getColumnIndex("_id"));
                bVar.f83228b = cursorA.getLong(cursorA.getColumnIndex("_tm"));
                bVar.f83229c = cursorA.getString(cursorA.getColumnIndex("_dt"));
                al.c(bVar.toString(), new Object[0]);
                arrayList.add(bVar);
            } catch (Throwable th) {
                try {
                    al.b(th);
                } finally {
                    cursorA.close();
                }
            }
        }
        return arrayList;
    }

    public final void a(c cVar) {
        if (TextUtils.isEmpty(cVar.f83231b)) {
            al.d("sla report event is null", new Object[0]);
        } else {
            al.c("sla report single event", new Object[0]);
            a(Collections.singletonList(cVar));
        }
    }
}
