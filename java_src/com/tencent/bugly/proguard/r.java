package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.io.BufferedReader;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f83620e = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f83621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f83622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f83623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f83624d;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f83630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private UserInfoBean f83631c;

        public a(UserInfoBean userInfoBean, boolean z10) {
            this.f83631c = userInfoBean;
            this.f83630b = z10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (r.this.f83624d) {
                try {
                    UserInfoBean userInfoBean = this.f83631c;
                    if (userInfoBean != null) {
                        r.a(userInfoBean);
                        al.c("[UserInfo] Record user info.", new Object[0]);
                        r.this.a(this.f83631c, false);
                    }
                    if (this.f83630b) {
                        r.this.b();
                    }
                } catch (Throwable th) {
                    if (al.a(th)) {
                        return;
                    }
                    th.printStackTrace();
                }
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis < r.this.f83622b) {
                ak.a().a(r.this.new b(), (r.this.f83622b - jCurrentTimeMillis) + 5000);
            } else {
                r.this.a(3, false);
                r.this.a();
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f83634b;

        public c(long j10) {
            this.f83634b = j10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            r.this.b();
            r.this.a(this.f83634b);
        }
    }

    public r(Context context, boolean z10) {
        this.f83621a = context;
        this.f83624d = z10;
    }

    private static void b(List<UserInfoBean> list, List<UserInfoBean> list2) {
        Iterator<UserInfoBean> it2 = list.iterator();
        while (it2.hasNext()) {
            UserInfoBean next = it2.next();
            if (next.f83079f != -1) {
                it2.remove();
                if (next.f83078e < ap.b()) {
                    list2.add(next);
                }
            }
        }
    }

    public final void a(int i10, boolean z10) {
        ac acVarA = ac.a();
        if (acVarA != null && !acVarA.c().f83102g && i10 != 1 && i10 != 3) {
            al.e("UserInfo is disable", new Object[0]);
            return;
        }
        if (i10 == 1 || i10 == 3) {
            this.f83623c++;
        }
        aa aaVarA = aa.a(this.f83621a);
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.f83075b = i10;
        userInfoBean.f83076c = aaVarA.f83185e;
        userInfoBean.f83077d = aaVarA.g();
        userInfoBean.f83078e = System.currentTimeMillis();
        userInfoBean.f83079f = -1L;
        userInfoBean.f83087n = aaVarA.f83195p;
        userInfoBean.f83088o = i10 == 1 ? 1 : 0;
        userInfoBean.f83085l = aaVarA.a();
        userInfoBean.f83086m = aaVarA.f83205z;
        userInfoBean.f83080g = aaVarA.A;
        userInfoBean.f83081h = aaVarA.B;
        userInfoBean.f83082i = aaVarA.C;
        userInfoBean.f83084k = aaVarA.D;
        userInfoBean.f83091r = aaVarA.w();
        userInfoBean.f83092s = aaVarA.B();
        userInfoBean.f83089p = aaVarA.C();
        userInfoBean.f83090q = aaVarA.f83204y;
        ak.a().a(new a(userInfoBean, z10), 0L);
    }

    public final void b() {
        ak akVarA = ak.a();
        if (akVarA != null) {
            akVarA.a(new Runnable() { // from class: com.tencent.bugly.proguard.r.2

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ boolean f83627a = false;

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        r.this.a(this.f83627a);
                    } catch (Throwable th) {
                        al.a(th);
                    }
                }
            });
        }
    }

    private static void b(List<UserInfoBean> list) {
        if (list.size() == 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size() && i10 < 50; i10++) {
            UserInfoBean userInfoBean = list.get(i10);
            sb2.append(" or _id = ");
            sb2.append(userInfoBean.f83074a);
        }
        String string = sb2.toString();
        if (string.length() > 0) {
            string = string.substring(4);
        }
        sb2.setLength(0);
        try {
            al.c("[Database] deleted %s data %d", "t_ui", Integer.valueOf(w.a().a("t_ui", string)));
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static ContentValues b(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j10 = userInfoBean.f83074a;
            if (j10 > 0) {
                contentValues.put("_id", Long.valueOf(j10));
            }
            contentValues.put("_tm", Long.valueOf(userInfoBean.f83078e));
            contentValues.put("_ut", Long.valueOf(userInfoBean.f83079f));
            contentValues.put(com.umeng.analytics.pro.bq.f84480e, Integer.valueOf(userInfoBean.f83075b));
            contentValues.put("_pc", userInfoBean.f83076c);
            contentValues.put("_dt", ap.a(userInfoBean));
            return contentValues;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public final void a(long j10) {
        ak.a().a(new c(j10), j10);
    }

    public final void a() {
        this.f83622b = ap.b() + 86400000;
        ak.a().a(new b(), (this.f83622b - System.currentTimeMillis()) + 5000);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x008e A[Catch: Exception -> 0x007d, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x007d, blocks: (B:40:0x008e, B:29:0x0079, B:14:0x0038, B:16:0x004c, B:22:0x005b, B:25:0x0066), top: B:44:0x0036, inners: #3 }] */
    private boolean b(boolean z10) {
        boolean z11 = true;
        if (!f83620e) {
            return true;
        }
        File file = new File(this.f83621a.getFilesDir(), "bugly_last_us_up_tm");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z10) {
            am.a(file, String.valueOf(jCurrentTimeMillis), 1024L, false);
            return true;
        }
        if (!file.exists()) {
            am.a(file, String.valueOf(jCurrentTimeMillis), 1024L, false);
        } else {
            BufferedReader bufferedReaderA = ap.a(file);
            try {
                if (bufferedReaderA != null) {
                    try {
                        long jLongValue = Long.valueOf(bufferedReaderA.readLine().trim()).longValue();
                        if (!(jCurrentTimeMillis >= jLongValue && jCurrentTimeMillis - jLongValue <= 86400000) || jCurrentTimeMillis - jLongValue >= e0.a.f90863b) {
                            am.a(file, String.valueOf(jCurrentTimeMillis), 1024L, false);
                        } else {
                            z11 = false;
                        }
                        if (bufferedReaderA != null) {
                            bufferedReaderA.close();
                        }
                    } catch (Throwable th) {
                        try {
                            al.b(th);
                            am.a(file, String.valueOf(jCurrentTimeMillis), 1024L, false);
                            bufferedReaderA.close();
                        } catch (Throwable th2) {
                            try {
                                bufferedReaderA.close();
                            } catch (Exception e10) {
                                al.a(e10);
                            }
                            throw th2;
                        }
                    }
                } else if (bufferedReaderA != null) {
                    bufferedReaderA.close();
                }
            } catch (Exception e11) {
                al.a(e11);
            }
        }
        return z11;
    }

    private static void a(List<UserInfoBean> list, List<UserInfoBean> list2) {
        int size = list.size() - 20;
        if (size > 0) {
            int i10 = 0;
            while (i10 < list.size() - 1) {
                int i11 = i10 + 1;
                for (int i12 = i11; i12 < list.size(); i12++) {
                    if (list.get(i10).f83078e > list.get(i12).f83078e) {
                        UserInfoBean userInfoBean = list.get(i10);
                        list.set(i10, list.get(i12));
                        list.set(i12, userInfoBean);
                    }
                }
                i10 = i11;
            }
            for (int i13 = 0; i13 < size; i13++) {
                list2.add(list.get(i13));
            }
        }
    }

    private static int a(List<UserInfoBean> list) {
        int i10;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i11 = 0;
        for (UserInfoBean userInfoBean : list) {
            if (userInfoBean.f83078e > jCurrentTimeMillis - 600000 && ((i10 = userInfoBean.f83075b) == 1 || i10 == 4 || i10 == 3)) {
                i11++;
            }
        }
        return i11;
    }

    private void a(final List<UserInfoBean> list, boolean z10) {
        aa aaVarB;
        if (!b(z10)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (UserInfoBean userInfoBean : list) {
                userInfoBean.f83079f = jCurrentTimeMillis;
                a(userInfoBean, true);
            }
            al.d("uploadCheck failed", new Object[0]);
            return;
        }
        int i10 = this.f83623c == 1 ? 1 : 2;
        bv bvVar = null;
        if (list != null && list.size() != 0 && (aaVarB = aa.b()) != null) {
            aaVarB.r();
            bv bvVar2 = new bv();
            bvVar2.f83573b = aaVarB.f83185e;
            bvVar2.f83574c = aaVarB.j();
            ArrayList<bu> arrayList = new ArrayList<>();
            Iterator<UserInfoBean> it2 = list.iterator();
            while (it2.hasNext()) {
                bu buVarA = ae.a(it2.next());
                if (buVarA != null) {
                    arrayList.add(buVarA);
                }
            }
            bvVar2.f83575d = arrayList;
            HashMap map = new HashMap();
            bvVar2.f83576e = map;
            map.put("A7", new StringBuilder().toString());
            bvVar2.f83576e.put("A6", aa.q());
            bvVar2.f83576e.put("A5", aaVarB.p());
            Map<String, String> map2 = bvVar2.f83576e;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aaVarB.n());
            map2.put("A2", sb2.toString());
            Map<String, String> map3 = bvVar2.f83576e;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(aaVarB.n());
            map3.put("A1", sb3.toString());
            bvVar2.f83576e.put("A24", aaVarB.c());
            Map<String, String> map4 = bvVar2.f83576e;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(aaVarB.o());
            map4.put("A17", sb4.toString());
            bvVar2.f83576e.put("A15", aaVarB.t());
            Map<String, String> map5 = bvVar2.f83576e;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(aaVarB.u());
            map5.put("A13", sb5.toString());
            bvVar2.f83576e.put("F08", aaVarB.F);
            bvVar2.f83576e.put("F09", aaVarB.G);
            Map<String, String> mapB = aaVarB.B();
            if (mapB != null && mapB.size() > 0) {
                for (Map.Entry<String, String> entry : mapB.entrySet()) {
                    bvVar2.f83576e.put("C04_" + entry.getKey(), entry.getValue());
                }
            }
            if (i10 == 1) {
                bvVar2.f83572a = (byte) 1;
            } else if (i10 != 2) {
                al.e("unknown up type %d ", Integer.valueOf(i10));
            } else {
                bvVar2.f83572a = (byte) 2;
            }
            bvVar = bvVar2;
        }
        if (bvVar == null) {
            al.d("[UserInfo] Failed to create UserInfoPackage.", new Object[0]);
            return;
        }
        byte[] bArrA = ae.a((m) bvVar);
        if (bArrA == null) {
            al.d("[UserInfo] Failed to encode data.", new Object[0]);
            return;
        }
        bq bqVarA = ae.a(840, bArrA);
        if (bqVarA == null) {
            al.d("[UserInfo] Request package is null.", new Object[0]);
            return;
        }
        ai.a().a(1001, bqVarA, ac.a().c().f83112q, StrategyBean.f83096a, new ah() { // from class: com.tencent.bugly.proguard.r.1
            @Override // com.tencent.bugly.proguard.ah
            public final void a(boolean z11, String str) {
                if (z11) {
                    al.c("[UserInfo] Successfully uploaded user info.", new Object[0]);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    for (UserInfoBean userInfoBean2 : list) {
                        userInfoBean2.f83079f = jCurrentTimeMillis2;
                        r.this.a(userInfoBean2, true);
                    }
                }
            }
        }, this.f83623c == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(UserInfoBean userInfoBean, boolean z10) {
        List<UserInfoBean> listA;
        if (userInfoBean == null) {
            return;
        }
        if (!z10 && userInfoBean.f83075b != 1 && (listA = a(aa.a(this.f83621a).f83185e)) != null && listA.size() >= 20) {
            al.a("[UserInfo] There are too many user info in local: %d", Integer.valueOf(listA.size()));
            return;
        }
        long jA = w.a().a("t_ui", b(userInfoBean), (v) null);
        if (jA >= 0) {
            al.c("[Database] insert %s success with ID: %d", "t_ui", Long.valueOf(jA));
            userInfoBean.f83074a = jA;
        }
    }

    public static List<UserInfoBean> a(String str) {
        Cursor cursorA;
        String str2;
        try {
            if (ap.b(str)) {
                str2 = null;
            } else {
                str2 = "_pc = '" + str + "'";
            }
            cursorA = w.a().a("t_ui", (String[]) null, str2);
            if (cursorA == null) {
                if (cursorA != null) {
                    cursorA.close();
                }
                return null;
            }
            try {
                StringBuilder sb2 = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursorA.moveToNext()) {
                    UserInfoBean userInfoBeanA = a(cursorA);
                    if (userInfoBeanA != null) {
                        arrayList.add(userInfoBeanA);
                    } else {
                        try {
                            long j10 = cursorA.getLong(cursorA.getColumnIndex("_id"));
                            sb2.append(" or _id = ");
                            sb2.append(j10);
                        } catch (Throwable unused) {
                            al.d("[Database] unknown id.", new Object[0]);
                        }
                    }
                }
                String string = sb2.toString();
                if (string.length() > 0) {
                    al.d("[Database] deleted %s error data %d", "t_ui", Integer.valueOf(w.a().a("t_ui", string.substring(4))));
                }
                cursorA.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                try {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                    return null;
                } finally {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorA = null;
        }
    }

    private static UserInfoBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j10 = cursor.getLong(cursor.getColumnIndex("_id"));
            UserInfoBean userInfoBean = (UserInfoBean) ap.a(blob, UserInfoBean.CREATOR);
            if (userInfoBean != null) {
                userInfoBean.f83074a = j10;
            }
            return userInfoBean;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x0067 A[Catch: all -> 0x0092, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004c, B:28:0x0061, B:30:0x0067, B:32:0x006c, B:35:0x0073, B:38:0x0089, B:26:0x005b, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:44:0x0001 }] */
    public synchronized void a(boolean z10) {
        ai aiVarA;
        ac acVarA;
        boolean z11;
        if (this.f83624d && (aiVarA = ai.a()) != null && (acVarA = ac.a()) != null && (!acVarA.b() || aiVarA.b(1001))) {
            String str = aa.a(this.f83621a).f83185e;
            ArrayList arrayList = new ArrayList();
            List<UserInfoBean> listA = a(str);
            if (listA != null) {
                a(listA, arrayList);
                b(listA, arrayList);
                int iA = a(listA);
                if (iA > 15) {
                    al.d("[UserInfo] Upload user info too many times in 10 min: %d", Integer.valueOf(iA));
                    z11 = false;
                }
                if (arrayList.size() > 0) {
                    b(arrayList);
                }
                if (z11 && listA.size() != 0) {
                    al.c("[UserInfo] Upload user info(size: %d)", Integer.valueOf(listA.size()));
                    a(listA, z10);
                    return;
                }
                al.c("[UserInfo] There is no user info in local database.", new Object[0]);
            }
            listA = new ArrayList<>();
            z11 = true;
            if (arrayList.size() > 0) {
                b(arrayList);
            }
            if (z11) {
                al.c("[UserInfo] Upload user info(size: %d)", Integer.valueOf(listA.size()));
                a(listA, z10);
                return;
            }
            al.c("[UserInfo] There is no user info in local database.", new Object[0]);
        }
    }

    static /* synthetic */ void a(UserInfoBean userInfoBean) {
        aa aaVarB;
        if (userInfoBean == null || (aaVarB = aa.b()) == null) {
            return;
        }
        userInfoBean.f83083j = aaVarB.e();
    }
}
