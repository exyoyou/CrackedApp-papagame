package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.sigmob.sdk.base.mta.PointType;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class as {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f83325a;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Map<Integer, Pair<String, String>> f83326h = new HashMap<Integer, Pair<String, String>>() { // from class: com.tencent.bugly.proguard.as.1
        {
            put(3, new Pair("203", "103"));
            put(7, new Pair("208", "108"));
            put(0, new Pair(ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS, Constants.ERRORCODE_SDK_PREFIX));
            put(1, new Pair("201", PointType.ANTI_SPAM));
            put(2, new Pair("202", PointType.ANTI_SPAM_TOUCH));
            put(4, new Pair("204", "104"));
            put(6, new Pair("206", "106"));
            put(5, new Pair("207", PointType.WIND_ACTIVE));
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final ArrayList<a> f83327i = new ArrayList<a>() { // from class: com.tencent.bugly.proguard.as.2
        {
            byte b10 = 0;
            add(new b(b10));
            add(new c(b10));
            add(new d(b10));
            add(new e(b10));
            add(new h(b10));
            add(new i(b10));
            add(new f(b10));
            add(new g(b10));
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Map<Integer, Integer> f83328j = new HashMap<Integer, Integer>() { // from class: com.tencent.bugly.proguard.as.3
        {
            put(3, 4);
            put(7, 7);
            put(2, 1);
            put(0, 0);
            put(1, 2);
            put(4, 3);
            put(5, 5);
            put(6, 6);
        }
    };

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Map<Integer, String> f83329k = new HashMap<Integer, String>() { // from class: com.tencent.bugly.proguard.as.4
        {
            put(3, "BuglyAnrCrash");
            put(0, "BuglyJavaCrash");
            put(1, "BuglyNativeCrash");
        }
    };

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Map<Integer, String> f83330l = new HashMap<Integer, String>() { // from class: com.tencent.bugly.proguard.as.5
        {
            put(3, "BuglyAnrCrashReport");
            put(0, "BuglyJavaCrashReport");
            put(1, "BuglyNativeCrashReport");
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Context f83331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final ai f83332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final w f83333d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final ac f83334e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected aw f83335f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected BuglyStrategy.a f83336g;

    static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f83341a;

        /* synthetic */ a(int i10, byte b10) {
            this(i10);
        }

        abstract boolean a();

        private a(int i10) {
            this.f83341a = i10;
        }
    }

    static class b extends a {
        /* synthetic */ b(byte b10) {
            this();
        }

        @Override // com.tencent.bugly.proguard.as.a
        final boolean a() {
            return at.a().k();
        }

        private b() {
            super(3, (byte) 0);
        }
    }

    static class c extends a {
        /* synthetic */ c(byte b10) {
            this();
        }

        @Override // com.tencent.bugly.proguard.as.a
        final boolean a() {
            return true;
        }

        private c() {
            super(7, (byte) 0);
        }
    }

    static class d extends a {
        /* synthetic */ d(byte b10) {
            this();
        }

        @Override // com.tencent.bugly.proguard.as.a
        final boolean a() {
            return true;
        }

        private d() {
            super(2, (byte) 0);
        }
    }

    static class e extends a {
        /* synthetic */ e(byte b10) {
            this();
        }

        @Override // com.tencent.bugly.proguard.as.a
        final boolean a() {
            return at.a().j();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private e() {
            byte b10 = 0;
            super(b10, b10);
        }
    }

    static class f extends a {
        /* synthetic */ f(byte b10) {
            this();
        }

        @Override // com.tencent.bugly.proguard.as.a
        final boolean a() {
            return (at.a().B & 2) > 0;
        }

        private f() {
            super(5, (byte) 0);
        }
    }

    static class g extends a {
        /* synthetic */ g(byte b10) {
            this();
        }

        @Override // com.tencent.bugly.proguard.as.a
        final boolean a() {
            return (at.a().B & 1) > 0;
        }

        private g() {
            super(6, (byte) 0);
        }
    }

    static class h extends a {
        /* synthetic */ h(byte b10) {
            this();
        }

        @Override // com.tencent.bugly.proguard.as.a
        final boolean a() {
            return at.a().j();
        }

        private h() {
            super(1, (byte) 0);
        }
    }

    static class i extends a {
        /* synthetic */ i(byte b10) {
            this();
        }

        @Override // com.tencent.bugly.proguard.as.a
        final boolean a() {
            return (at.a().B & 4) > 0;
        }

        private i() {
            super(4, (byte) 0);
        }
    }

    public as(Context context, ai aiVar, w wVar, ac acVar, BuglyStrategy.a aVar) {
        f83325a = 1004;
        this.f83331b = context;
        this.f83332c = aiVar;
        this.f83333d = wVar;
        this.f83334e = acVar;
        this.f83336g = aVar;
        this.f83335f = null;
    }

    private static List<ar> a(List<ar> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (ar arVar : list) {
            if (arVar.f83322d && arVar.f83320b <= jCurrentTimeMillis - 86400000) {
                arrayList.add(arVar);
            }
        }
        return arrayList;
    }

    private static void b(CrashDetailBean crashDetailBean, List<ar> list) {
        StringBuilder sb2 = new StringBuilder(64);
        for (ar arVar : list) {
            if (!arVar.f83323e && !arVar.f83322d) {
                String str = crashDetailBean.f83138s;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(arVar.f83320b);
                if (!str.contains(sb3.toString())) {
                    crashDetailBean.f83139t++;
                    sb2.append(arVar.f83320b);
                    sb2.append("\n");
                }
            }
        }
        crashDetailBean.f83138s += sb2.toString();
    }

    private static ContentValues c(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j10 = crashDetailBean.f83119a;
            if (j10 > 0) {
                contentValues.put("_id", Long.valueOf(j10));
            }
            contentValues.put("_tm", Long.valueOf(crashDetailBean.f83137r));
            contentValues.put("_s1", crashDetailBean.f83140u);
            int i10 = 1;
            contentValues.put("_up", Integer.valueOf(crashDetailBean.f83123d ? 1 : 0));
            if (!crashDetailBean.f83129j) {
                i10 = 0;
            }
            contentValues.put("_me", Integer.valueOf(i10));
            contentValues.put("_uc", Integer.valueOf(crashDetailBean.f83131l));
            contentValues.put("_dt", ap.a(crashDetailBean));
            return contentValues;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static void d(List<ar> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("_id in (");
        Iterator<ar> it2 = list.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().f83319a);
            sb2.append(",");
        }
        StringBuilder sb3 = new StringBuilder(sb2.substring(0, sb2.lastIndexOf(",")));
        sb3.append(")");
        String string = sb3.toString();
        sb3.setLength(0);
        try {
            al.c("deleted %s data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", string)));
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static void e(List<CrashDetailBean> list) {
        try {
            if (list.size() == 0) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            for (CrashDetailBean crashDetailBean : list) {
                sb2.append(" or _id = ");
                sb2.append(crashDetailBean.f83119a);
            }
            String string = sb2.toString();
            if (string.length() > 0) {
                string = string.substring(4);
            }
            sb2.setLength(0);
            al.c("deleted %s data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", string)));
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static void b(List<ar> list) {
        List<CrashDetailBean> listC = c(list);
        if (listC == null || listC.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (CrashDetailBean crashDetailBean : listC) {
            String str = f83330l.get(Integer.valueOf(crashDetailBean.f83121b));
            if (!TextUtils.isEmpty(str)) {
                al.c("find expired data,crashId:%s eventType:%s", crashDetailBean.f83122c, str);
                arrayList.add(new ag.c(crashDetailBean.f83122c, str, crashDetailBean.f83137r, false, 0L, "expired", null));
            }
        }
        ag.a.f83226a.a(arrayList);
    }

    private static CrashDetailBean a(List<ar> list, CrashDetailBean crashDetailBean) {
        CrashDetailBean crashDetailBean2;
        List<CrashDetailBean> listC;
        if (list.isEmpty()) {
            return crashDetailBean;
        }
        ArrayList arrayList = new ArrayList(10);
        for (ar arVar : list) {
            if (arVar.f83323e) {
                arrayList.add(arVar);
            }
        }
        if (arrayList.isEmpty() || (listC = c(arrayList)) == null || listC.isEmpty()) {
            crashDetailBean2 = null;
        } else {
            Collections.sort(listC);
            crashDetailBean2 = listC.get(0);
            a(crashDetailBean2, listC);
        }
        if (crashDetailBean2 == null) {
            crashDetailBean.f83129j = true;
            crashDetailBean.f83139t = 0;
            crashDetailBean.f83138s = "";
            crashDetailBean2 = crashDetailBean;
        }
        b(crashDetailBean2, list);
        if (crashDetailBean2.f83137r != crashDetailBean.f83137r) {
            String str = crashDetailBean2.f83138s;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.f83137r);
            if (!str.contains(sb2.toString())) {
                crashDetailBean2.f83139t++;
                crashDetailBean2.f83138s += crashDetailBean.f83137r + "\n";
            }
        }
        return crashDetailBean2;
    }

    private static List<CrashDetailBean> c(List<ar> list) {
        Cursor cursorA;
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("_id in (");
        Iterator<ar> it2 = list.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().f83319a);
            sb2.append(",");
        }
        if (sb2.toString().contains(",")) {
            sb2 = new StringBuilder(sb2.substring(0, sb2.lastIndexOf(",")));
        }
        sb2.append(")");
        String string = sb2.toString();
        sb2.setLength(0);
        try {
            cursorA = w.a().a("t_cr", (String[]) null, string);
            if (cursorA == null) {
                if (cursorA != null) {
                    cursorA.close();
                }
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList();
                sb2.append("_id in (");
                int i10 = 0;
                while (cursorA.moveToNext()) {
                    CrashDetailBean crashDetailBeanA = a(cursorA);
                    if (crashDetailBeanA != null) {
                        arrayList.add(crashDetailBeanA);
                    } else {
                        try {
                            sb2.append(cursorA.getLong(cursorA.getColumnIndex("_id")));
                            sb2.append(",");
                            i10++;
                        } catch (Throwable unused) {
                            al.d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (sb2.toString().contains(",")) {
                    sb2 = new StringBuilder(sb2.substring(0, sb2.lastIndexOf(",")));
                }
                sb2.append(")");
                String string2 = sb2.toString();
                if (i10 > 0) {
                    al.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", string2)));
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

    private static String e(CrashDetailBean crashDetailBean) {
        try {
            Pair<String, String> pair = f83326h.get(Integer.valueOf(crashDetailBean.f83121b));
            if (pair == null) {
                al.e("crash type error! %d", Integer.valueOf(crashDetailBean.f83121b));
                return "";
            }
            if (crashDetailBean.f83129j) {
                return (String) pair.first;
            }
            return (String) pair.second;
        } catch (Exception e10) {
            al.a(e10);
            return "";
        }
    }

    private boolean d(CrashDetailBean crashDetailBean) {
        String absolutePath;
        try {
            al.c("save eup logs", new Object[0]);
            aa aaVarB = aa.b();
            String str = "#--------\npackage:" + aaVarB.f() + "\nversion:" + aaVarB.f83195p + "\nsdk:" + aaVarB.f83189i + "\nprocess:" + crashDetailBean.A + "\ndate:" + ap.a(new Date(crashDetailBean.f83137r)) + "\ntype:" + crashDetailBean.f83133n + "\nmessage:" + crashDetailBean.f83134o + "\nstack:\n" + crashDetailBean.f83136q + "\neupID:" + crashDetailBean.f83122c + "\n";
            if (at.f83353m == null) {
                if (Environment.getExternalStorageState().equals("mounted")) {
                    absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Tencent/" + this.f83331b.getPackageName();
                } else {
                    absolutePath = null;
                }
            } else {
                File file = new File(at.f83353m);
                if (file.isFile()) {
                    file = file.getParentFile();
                }
                absolutePath = file.getAbsolutePath();
            }
            am.a(absolutePath + "/euplog.txt", str, at.f83354n);
            return true;
        } catch (Throwable th) {
            al.d("rqdp{  save error} %s", th.toString());
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }

    public final void b(CrashDetailBean crashDetailBean, boolean z10) {
        if (at.f83355o) {
            al.a("try to upload right now", new Object[0]);
            ArrayList arrayList = new ArrayList();
            arrayList.add(crashDetailBean);
            a(arrayList, BaseCloudFileManager.ACK_TIMEOUT, z10, crashDetailBean.f83121b == 7, z10);
            return;
        }
        al.a("do not upload spot crash right now, crash would be uploaded when app next start", new Object[0]);
    }

    public final void b(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return;
        }
        ContentValues contentValuesC = c(crashDetailBean);
        if (contentValuesC != null) {
            long jA = w.a().a("t_cr", contentValuesC, (v) null);
            if (jA >= 0) {
                al.c("insert %s success!", "t_cr");
                crashDetailBean.f83119a = jA;
            }
        }
        if (at.f83352l) {
            d(crashDetailBean);
        }
    }

    private static void a(CrashDetailBean crashDetailBean, List<CrashDetailBean> list) {
        String[] strArrSplit;
        StringBuilder sb2 = new StringBuilder(128);
        for (int i10 = 1; i10 < list.size(); i10++) {
            String str = list.get(i10).f83138s;
            if (str != null && (strArrSplit = str.split("\n")) != null) {
                for (String str2 : strArrSplit) {
                    if (!crashDetailBean.f83138s.contains(str2)) {
                        crashDetailBean.f83139t++;
                        sb2.append(str2);
                        sb2.append("\n");
                    }
                }
            }
        }
        crashDetailBean.f83138s += sb2.toString();
    }

    private static ar b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            ar arVar = new ar();
            arVar.f83319a = cursor.getLong(cursor.getColumnIndex("_id"));
            arVar.f83320b = cursor.getLong(cursor.getColumnIndex("_tm"));
            arVar.f83321c = cursor.getString(cursor.getColumnIndex("_s1"));
            arVar.f83322d = cursor.getInt(cursor.getColumnIndex("_up")) == 1;
            arVar.f83323e = cursor.getInt(cursor.getColumnIndex("_me")) == 1;
            arVar.f83324f = cursor.getInt(cursor.getColumnIndex("_uc"));
            return arVar;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:69:0x019e  */
    public final boolean a(CrashDetailBean crashDetailBean, boolean z10) {
        boolean z11;
        boolean zA;
        Map<String, String> mapOnCrashHandleStart;
        if (crashDetailBean == null) {
            al.d("CrashBean is null, won't handle.", new Object[0]);
            return true;
        }
        b(crashDetailBean);
        if (z10 && (this.f83336g != null || this.f83335f != null)) {
            Iterator<a> it2 = f83327i.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    zA = false;
                    break;
                }
                a next = it2.next();
                if (next.f83341a == crashDetailBean.f83121b) {
                    zA = next.a();
                    break;
                }
            }
            if (!zA) {
                al.c("Should not call back.", new Object[0]);
            } else {
                try {
                    Map<Integer, Integer> map = f83328j;
                    if (!map.containsKey(Integer.valueOf(crashDetailBean.f83121b))) {
                        al.d("Cannot get crash type for crashBean type:" + crashDetailBean.f83121b, new Object[0]);
                    } else {
                        int iIntValue = map.get(Integer.valueOf(crashDetailBean.f83121b)).intValue();
                        byte[] bArrOnCrashHandleStart2GetExtraDatas = null;
                        if (this.f83335f != null) {
                            al.c("Calling 'onCrashHandleStart' of RQD crash listener.", new Object[0]);
                            al.c("Calling 'getCrashExtraMessage' of RQD crash listener.", new Object[0]);
                            String strB = this.f83335f.b();
                            if (strB != null) {
                                mapOnCrashHandleStart = new HashMap<>(1);
                                mapOnCrashHandleStart.put("userData", strB);
                            } else {
                                mapOnCrashHandleStart = null;
                            }
                        } else if (this.f83336g != null) {
                            al.c("Calling 'onCrashHandleStart' of Bugly crash listener.", new Object[0]);
                            mapOnCrashHandleStart = this.f83336g.onCrashHandleStart(iIntValue, crashDetailBean.f83133n, crashDetailBean.f83134o, crashDetailBean.f83136q);
                        } else {
                            mapOnCrashHandleStart = null;
                        }
                        a(crashDetailBean, mapOnCrashHandleStart);
                        al.a("[crash callback] start user's callback:onCrashHandleStart2GetExtraDatas()", new Object[0]);
                        if (this.f83335f != null) {
                            al.c("Calling 'getCrashExtraData' of RQD crash listener.", new Object[0]);
                            bArrOnCrashHandleStart2GetExtraDatas = this.f83335f.a();
                        } else if (this.f83336g != null) {
                            al.c("Calling 'onCrashHandleStart2GetExtraDatas' of Bugly crash listener.", new Object[0]);
                            bArrOnCrashHandleStart2GetExtraDatas = this.f83336g.onCrashHandleStart2GetExtraDatas(iIntValue, crashDetailBean.f83133n, crashDetailBean.f83134o, crashDetailBean.f83136q);
                        }
                        if (bArrOnCrashHandleStart2GetExtraDatas == null) {
                            al.d("extra user byte is null. CrashBean won't have userExtraByteDatas.", new Object[0]);
                        } else {
                            if (bArrOnCrashHandleStart2GetExtraDatas.length <= 100000) {
                                crashDetailBean.Y = bArrOnCrashHandleStart2GetExtraDatas;
                            } else {
                                al.d("extra bytes size %d is over limit %d will drop over part", Integer.valueOf(bArrOnCrashHandleStart2GetExtraDatas.length), 100000);
                                crashDetailBean.Y = Arrays.copyOf(bArrOnCrashHandleStart2GetExtraDatas, 100000);
                            }
                            al.a("add extra bytes %d ", Integer.valueOf(bArrOnCrashHandleStart2GetExtraDatas.length));
                        }
                        if (this.f83335f != null) {
                            al.c("Calling 'onCrashSaving' of RQD crash listener.", new Object[0]);
                            if (!this.f83335f.c()) {
                                al.d("Crash listener 'onCrashSaving' return 'false' thus will not handle this crash.", new Object[0]);
                            }
                        }
                    }
                } catch (Throwable th) {
                    al.d("crash handle callback something wrong! %s", th.getClass().getName());
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                }
            }
        }
        if (!ab.r()) {
            crashDetailBean.f83142w = ap.a(at.f83346f, at.f83351k);
        }
        String str = crashDetailBean.f83136q;
        String str2 = at.f83357q;
        if (str2 == null || str2.isEmpty()) {
            z11 = false;
        } else {
            al.c("Crash filter for crash stack is: %s", at.f83357q);
            if (str.contains(at.f83357q)) {
                al.d("This crash contains the filter string set. It will not be record and upload.", new Object[0]);
                z11 = true;
            } else {
                z11 = false;
            }
        }
        if (z11 || a(crashDetailBean.f83136q)) {
            return true;
        }
        if (crashDetailBean.f83121b != 2) {
            y yVar = new y();
            yVar.f83694b = 1;
            yVar.f83695c = crashDetailBean.A;
            yVar.f83696d = crashDetailBean.B;
            yVar.f83697e = crashDetailBean.f83137r;
            w.a().b(1);
            w.a().a(yVar);
            al.b("[crash] a crash occur, handling...", new Object[0]);
        } else {
            al.b("[crash] a caught exception occur, handling...", new Object[0]);
        }
        List<ar> listB = b();
        List<ar> arrayList = new ArrayList<>(10);
        if (listB != null && listB.size() > 0) {
            arrayList.addAll(a(listB));
            listB.removeAll(arrayList);
            if (listB.size() > 20) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("_id in (");
                sb2.append("SELECT _id FROM t_cr order by _id limit 5");
                sb2.append(")");
                String string = sb2.toString();
                sb2.setLength(0);
                try {
                    al.c("deleted first record %s data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", string)));
                } catch (Throwable th2) {
                    if (!al.a(th2)) {
                        th2.printStackTrace();
                    }
                }
            }
            if (b(crashDetailBean, listB, arrayList)) {
                return true;
            }
        }
        b(crashDetailBean);
        String str3 = f83329k.get(Integer.valueOf(crashDetailBean.f83121b));
        if (!TextUtils.isEmpty(str3)) {
            ag.a.f83226a.a(new ag.c(crashDetailBean.f83122c, str3, crashDetailBean.f83137r, true, 0L, "realtime", null));
        }
        d(arrayList);
        al.b("[crash] save crash success", new Object[0]);
        return false;
    }

    private static List<ar> b() {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor cursorA = w.a().a("t_cr", new String[]{"_id", "_tm", "_s1", "_up", "_me", "_uc"}, (String) null);
            if (cursorA == null) {
                if (cursorA != null) {
                    cursorA.close();
                }
                return null;
            }
            try {
                if (cursorA.getCount() <= 0) {
                    cursorA.close();
                    return arrayList;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("_id in (");
                int i10 = 0;
                while (cursorA.moveToNext()) {
                    ar arVarB = b(cursorA);
                    if (arVarB != null) {
                        arrayList.add(arVarB);
                    } else {
                        try {
                            sb2.append(cursorA.getLong(cursorA.getColumnIndex("_id")));
                            sb2.append(",");
                            i10++;
                        } catch (Throwable unused) {
                            al.d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (sb2.toString().contains(",")) {
                    sb2 = new StringBuilder(sb2.substring(0, sb2.lastIndexOf(",")));
                }
                sb2.append(")");
                String string = sb2.toString();
                sb2.setLength(0);
                if (i10 > 0) {
                    al.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", string)));
                }
                cursorA.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursor = cursorA;
                try {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                    return arrayList;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void c(ArrayList<bn> arrayList, String str) {
        if (ap.b(str)) {
            return;
        }
        try {
            bn bnVar = new bn((byte) 1, "crashInfos.txt", str.getBytes("utf-8"));
            al.c("attach crash infos", new Object[0]);
            arrayList.add(bnVar);
        } catch (Exception e10) {
            e10.printStackTrace();
            al.a(e10);
        }
    }

    private static void b(ArrayList<bn> arrayList, String str) {
        if (str != null) {
            try {
                arrayList.add(new bn((byte) 1, "jniLog.txt", str.getBytes("utf-8")));
            } catch (Exception e10) {
                e10.printStackTrace();
                al.a(e10);
            }
        }
    }

    private static void b(ArrayList<bn> arrayList, CrashDetailBean crashDetailBean, Context context) {
        String str;
        if (crashDetailBean.f83121b == 1 && (str = crashDetailBean.f83141v) != null) {
            try {
                bn bnVarA = a("tomb.zip", context, str);
                if (bnVarA != null) {
                    al.c("attach tombs", new Object[0]);
                    arrayList.add(bnVarA);
                }
            } catch (Exception e10) {
                al.a(e10);
            }
        }
    }

    private static void b(ArrayList<bn> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            arrayList.add(new bn((byte) 1, "userExtraByteData", bArr));
            al.c("attach extraData", new Object[0]);
        } catch (Exception e10) {
            al.a(e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
    
        if (r0.size() >= com.tencent.bugly.proguard.at.f83344d) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(com.tencent.bugly.crashreport.crash.CrashDetailBean r9, java.util.List<com.tencent.bugly.proguard.ar> r10, java.util.List<com.tencent.bugly.proguard.ar> r11) {
        /*
            r8 = this;
            int r0 = r9.f83121b
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lb
            if (r0 != r1) goto L9
            goto Lb
        L9:
            r3 = 0
            goto Lc
        Lb:
            r3 = 1
        Lc:
            r4 = 3
            if (r0 != r4) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            boolean r4 = com.tencent.bugly.proguard.p.f83617c
            if (r4 != 0) goto L1f
            if (r0 != 0) goto L1c
            if (r3 != 0) goto L1c
            r0 = 1
            goto L20
        L1c:
            boolean r0 = com.tencent.bugly.proguard.at.f83345e
            goto L20
        L1f:
            r0 = 0
        L20:
            if (r0 != 0) goto L23
            return r2
        L23:
            java.util.ArrayList r0 = new java.util.ArrayList
            r3 = 10
            r0.<init>(r3)
            boolean r10 = a(r9, r10, r0)
            if (r10 != 0) goto L38
            int r10 = r0.size()     // Catch: java.lang.Exception -> L6d
            int r3 = com.tencent.bugly.proguard.at.f83344d     // Catch: java.lang.Exception -> L6d
            if (r10 < r3) goto L78
        L38:
            java.lang.String r10 = "same crash occur too much do merged!"
            java.lang.Object[] r3 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L6d
            com.tencent.bugly.proguard.al.a(r10, r3)     // Catch: java.lang.Exception -> L6d
            com.tencent.bugly.crashreport.crash.CrashDetailBean r9 = a(r0, r9)     // Catch: java.lang.Exception -> L6d
            java.util.Iterator r10 = r0.iterator()     // Catch: java.lang.Exception -> L6d
        L47:
            boolean r0 = r10.hasNext()     // Catch: java.lang.Exception -> L6d
            if (r0 == 0) goto L5f
            java.lang.Object r0 = r10.next()     // Catch: java.lang.Exception -> L6d
            com.tencent.bugly.proguard.ar r0 = (com.tencent.bugly.proguard.ar) r0     // Catch: java.lang.Exception -> L6d
            long r3 = r0.f83319a     // Catch: java.lang.Exception -> L6d
            long r5 = r9.f83119a     // Catch: java.lang.Exception -> L6d
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L47
            r11.add(r0)     // Catch: java.lang.Exception -> L6d
            goto L47
        L5f:
            r8.b(r9)     // Catch: java.lang.Exception -> L6d
            d(r11)     // Catch: java.lang.Exception -> L6d
            java.lang.String r9 = "[crash] save crash success. For this device crash many times, it will not upload crashes immediately"
            java.lang.Object[] r10 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L6d
            com.tencent.bugly.proguard.al.b(r9, r10)     // Catch: java.lang.Exception -> L6d
            return r1
        L6d:
            r9 = move-exception
            com.tencent.bugly.proguard.al.a(r9)
            java.lang.String r9 = "Failed to merge crash."
            java.lang.Object[] r10 = new java.lang.Object[r2]
            com.tencent.bugly.proguard.al.d(r9, r10)
        L78:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.as.b(com.tencent.bugly.crashreport.crash.CrashDetailBean, java.util.List, java.util.List):boolean");
    }

    private static boolean a(String str) {
        String str2 = at.f83358r;
        if (str2 != null && !str2.isEmpty()) {
            try {
                al.c("Crash regular filter for crash stack is: %s", at.f83358r);
                if (Pattern.compile(at.f83358r).matcher(str).find()) {
                    al.d("This crash matches the regular filter string set. It will not be record and upload.", new Object[0]);
                    return true;
                }
            } catch (Exception e10) {
                al.a(e10);
                al.d("Failed to compile " + at.f83358r, new Object[0]);
            }
        }
        return false;
    }

    private static boolean a(CrashDetailBean crashDetailBean, List<ar> list, List<ar> list2) {
        boolean z10 = false;
        for (ar arVar : list) {
            if (crashDetailBean.f83140u.equals(arVar.f83321c)) {
                if (arVar.f83323e) {
                    z10 = true;
                }
                list2.add(arVar);
            }
        }
        return z10;
    }

    public static List<CrashDetailBean> a() {
        StrategyBean strategyBeanC = ac.a().c();
        if (strategyBeanC == null) {
            al.d("have not synced remote!", new Object[0]);
            return null;
        }
        if (!strategyBeanC.f83101f) {
            al.d("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            al.b("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jB = ap.b();
        List<ar> listB = b();
        al.c("Size of crash list loaded from DB: %s", Integer.valueOf(listB.size()));
        if (listB.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.addAll(a(listB));
        listB.removeAll(arrayList);
        Iterator<ar> it2 = listB.iterator();
        while (it2.hasNext()) {
            ar next = it2.next();
            long j10 = next.f83320b;
            if (j10 < jB - at.f83350j) {
                arrayList2.add(next);
                it2.remove();
                arrayList.add(next);
            } else if (next.f83322d) {
                if (j10 >= jCurrentTimeMillis - 86400000) {
                    it2.remove();
                } else if (!next.f83323e) {
                    it2.remove();
                    arrayList.add(next);
                }
            } else if (next.f83324f >= 3 && j10 < jCurrentTimeMillis - 86400000) {
                it2.remove();
                arrayList.add(next);
            }
        }
        b(arrayList2);
        if (arrayList.size() > 0) {
            d(arrayList);
        }
        ArrayList arrayList3 = new ArrayList();
        List<CrashDetailBean> listC = c(listB);
        if (listC != null && listC.size() > 0) {
            String str = aa.b().f83195p;
            Iterator<CrashDetailBean> it3 = listC.iterator();
            while (it3.hasNext()) {
                CrashDetailBean next2 = it3.next();
                if (!str.equals(next2.f83125f)) {
                    it3.remove();
                    arrayList3.add(next2);
                }
            }
        }
        if (arrayList3.size() > 0) {
            e(arrayList3);
        }
        return listC;
    }

    public final void a(CrashDetailBean crashDetailBean) {
        int i10 = crashDetailBean.f83121b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 3 && !at.a().k()) {
                    return;
                }
            } else if (!at.a().j()) {
                return;
            }
        } else if (!at.a().j()) {
            return;
        }
        if (this.f83335f != null) {
            al.c("Calling 'onCrashHandleEnd' of RQD crash listener.", new Object[0]);
        }
    }

    public final void a(final List<CrashDetailBean> list, long j10, final boolean z10, boolean z11, boolean z12) {
        if (!aa.a(this.f83331b).f83187g) {
            al.d("warn: not upload process", new Object[0]);
            return;
        }
        ai aiVar = this.f83332c;
        if (aiVar == null) {
            al.d("warn: upload manager is null", new Object[0]);
            return;
        }
        if (!z12 && !aiVar.b(at.f83342a)) {
            al.d("warn: not crashHappen or not should upload", new Object[0]);
            return;
        }
        StrategyBean strategyBeanC = this.f83334e.c();
        if (!strategyBeanC.f83101f) {
            al.d("remote report is disable!", new Object[0]);
            al.b("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new Object[0]);
            return;
        }
        if (list != null && list.size() != 0) {
            try {
                String str = strategyBeanC.f83113r;
                String str2 = StrategyBean.f83097b;
                bp bpVarA = a(this.f83331b, list, aa.b());
                if (bpVarA == null) {
                    al.d("create eupPkg fail!", new Object[0]);
                    return;
                }
                byte[] bArrA = ae.a((m) bpVarA);
                if (bArrA == null) {
                    al.d("send encode fail!", new Object[0]);
                    return;
                }
                bq bqVarA = ae.a(AVMDLDataLoader.KeyIsGetVersionInfo, bArrA);
                if (bqVarA == null) {
                    al.d("request package is null.", new Object[0]);
                    return;
                }
                final long jCurrentTimeMillis = System.currentTimeMillis();
                ah ahVar = new ah() { // from class: com.tencent.bugly.proguard.as.6
                    @Override // com.tencent.bugly.proguard.ah
                    public final void a(boolean z13, String str3) {
                        as.a(list, z13, System.currentTimeMillis() - jCurrentTimeMillis, z10 ? "realtime" : "cache", str3);
                        as.a(z13, (List<CrashDetailBean>) list);
                    }
                };
                if (z10) {
                    this.f83332c.a(f83325a, bqVarA, str, str2, ahVar, j10, z11);
                    return;
                } else {
                    this.f83332c.a(f83325a, bqVarA, str, str2, ahVar, false);
                    return;
                }
            } catch (Throwable th) {
                al.e("req cr error %s", th.toString());
                if (al.b(th)) {
                    return;
                }
                th.printStackTrace();
                return;
            }
        }
        al.d("warn: crashList is null or crashList num is 0", new Object[0]);
    }

    public static void a(boolean z10, List<CrashDetailBean> list) {
        if (list != null && list.size() > 0) {
            al.c("up finish update state %b", Boolean.valueOf(z10));
            for (CrashDetailBean crashDetailBean : list) {
                al.c("pre uid:%s uc:%d re:%b me:%b", crashDetailBean.f83122c, Integer.valueOf(crashDetailBean.f83131l), Boolean.valueOf(crashDetailBean.f83123d), Boolean.valueOf(crashDetailBean.f83129j));
                int i10 = crashDetailBean.f83131l + 1;
                crashDetailBean.f83131l = i10;
                crashDetailBean.f83123d = z10;
                al.c("set uid:%s uc:%d re:%b me:%b", crashDetailBean.f83122c, Integer.valueOf(i10), Boolean.valueOf(crashDetailBean.f83123d), Boolean.valueOf(crashDetailBean.f83129j));
            }
            Iterator<CrashDetailBean> it2 = list.iterator();
            while (it2.hasNext()) {
                at.a().a(it2.next());
            }
            al.c("update state size %d", Integer.valueOf(list.size()));
        }
        if (z10) {
            return;
        }
        al.b("[crash] upload fail.", new Object[0]);
    }

    private static CrashDetailBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j10 = cursor.getLong(cursor.getColumnIndex("_id"));
            CrashDetailBean crashDetailBean = (CrashDetailBean) ap.a(blob, CrashDetailBean.CREATOR);
            if (crashDetailBean != null) {
                crashDetailBean.f83119a = j10;
            }
            return crashDetailBean;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static bo a(Context context, CrashDetailBean crashDetailBean, aa aaVar) {
        ArrayList<bl> arrayList = null;
        if (context != null && crashDetailBean != null && aaVar != null) {
            bo boVar = new bo();
            boVar.f83485a = e(crashDetailBean);
            boVar.f83486b = crashDetailBean.f83137r;
            boVar.f83487c = crashDetailBean.f83133n;
            boVar.f83488d = crashDetailBean.f83134o;
            boVar.f83489e = crashDetailBean.f83135p;
            boVar.f83491g = crashDetailBean.f83136q;
            boVar.f83492h = crashDetailBean.f83145z;
            boVar.f83493i = crashDetailBean.f83122c;
            boVar.f83494j = null;
            boVar.f83496l = crashDetailBean.f83132m;
            boVar.f83497m = crashDetailBean.f83124e;
            boVar.f83490f = crashDetailBean.B;
            boVar.f83498n = null;
            Map<String, PlugInBean> map = crashDetailBean.f83127h;
            if (map != null && !map.isEmpty()) {
                arrayList = new ArrayList<>(crashDetailBean.f83127h.size());
                for (Map.Entry<String, PlugInBean> entry : crashDetailBean.f83127h.entrySet()) {
                    bl blVar = new bl();
                    blVar.f83468a = entry.getValue().f83093a;
                    blVar.f83470c = entry.getValue().f83095c;
                    blVar.f83472e = entry.getValue().f83094b;
                    arrayList.add(blVar);
                }
            }
            boVar.f83500p = arrayList;
            al.c("libInfo %s", boVar.f83499o);
            ArrayList<bn> arrayList2 = new ArrayList<>(20);
            a(arrayList2, crashDetailBean);
            a(arrayList2, crashDetailBean.f83142w);
            b(arrayList2, crashDetailBean.f83143x);
            c(arrayList2, crashDetailBean.Z);
            a(arrayList2, crashDetailBean.f83120aa, context);
            a(arrayList2, crashDetailBean.f83144y);
            a(arrayList2, crashDetailBean, context);
            b(arrayList2, crashDetailBean, context);
            a(arrayList2, aaVar.M);
            b(arrayList2, crashDetailBean.Y);
            boVar.f83501q = arrayList2;
            if (crashDetailBean.f83129j) {
                boVar.f83495k = crashDetailBean.f83139t;
            }
            boVar.f83502r = a(crashDetailBean, aaVar);
            boVar.f83503s = new HashMap();
            Map<String, String> map2 = crashDetailBean.S;
            if (map2 != null && map2.size() > 0) {
                boVar.f83503s.putAll(crashDetailBean.S);
                al.a("setted message size %d", Integer.valueOf(boVar.f83503s.size()));
            }
            Map<String, String> map3 = boVar.f83503s;
            al.c("pss:" + crashDetailBean.I + " vss:" + crashDetailBean.J + " javaHeap:" + crashDetailBean.K, new Object[0]);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.I);
            map3.put("SDK_UPLOAD_U1", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.J);
            map3.put("SDK_UPLOAD_U2", sb3.toString());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(crashDetailBean.K);
            map3.put("SDK_UPLOAD_U3", sb4.toString());
            Object[] objArr = new Object[12];
            objArr[0] = crashDetailBean.f83133n;
            objArr[1] = crashDetailBean.f83122c;
            objArr[2] = aaVar.e();
            objArr[3] = Long.valueOf((crashDetailBean.f83137r - crashDetailBean.Q) / 1000);
            objArr[4] = Boolean.valueOf(crashDetailBean.f83130k);
            objArr[5] = Boolean.valueOf(crashDetailBean.R);
            objArr[6] = Boolean.valueOf(crashDetailBean.f83129j);
            objArr[7] = Boolean.valueOf(crashDetailBean.f83121b == 1);
            objArr[8] = Integer.valueOf(crashDetailBean.f83139t);
            objArr[9] = crashDetailBean.f83138s;
            objArr[10] = Boolean.valueOf(crashDetailBean.f83123d);
            objArr[11] = Integer.valueOf(boVar.f83502r.size());
            al.c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", objArr);
            return boVar;
        }
        al.d("enExp args == null", new Object[0]);
        return null;
    }

    private static bp a(Context context, List<CrashDetailBean> list, aa aaVar) {
        if (context != null && list != null && list.size() != 0 && aaVar != null) {
            bp bpVar = new bp();
            bpVar.f83507a = new ArrayList<>();
            Iterator<CrashDetailBean> it2 = list.iterator();
            while (it2.hasNext()) {
                bpVar.f83507a.add(a(context, it2.next(), aaVar));
            }
            return bpVar;
        }
        al.d("enEXPPkg args == null!", new Object[0]);
        return null;
    }

    private static bn a(String str, Context context, String str2) {
        FileInputStream fileInputStream;
        if (str2 != null && context != null) {
            al.c("zip %s", str2);
            File file = new File(str2);
            File file2 = new File(context.getCacheDir(), str);
            if (!ap.a(file, file2)) {
                al.d("zip fail!", new Object[0]);
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                fileInputStream = new FileInputStream(file2);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i10 = fileInputStream.read(bArr);
                        if (i10 <= 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i10);
                        byteArrayOutputStream.flush();
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    al.c("read bytes :%d", Integer.valueOf(byteArray.length));
                    bn bnVar = new bn((byte) 2, file2.getName(), byteArray);
                    try {
                        fileInputStream.close();
                    } catch (IOException e10) {
                        if (!al.a(e10)) {
                            e10.printStackTrace();
                        }
                    }
                    if (file2.exists()) {
                        al.c("del tmp", new Object[0]);
                        file2.delete();
                    }
                    return bnVar;
                } catch (Throwable th) {
                    th = th;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e11) {
                                if (!al.a(e11)) {
                                    e11.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            al.c("del tmp", new Object[0]);
                        }
                        return null;
                    } finally {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e12) {
                                if (!al.a(e12)) {
                                    e12.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            al.c("del tmp", new Object[0]);
                            file2.delete();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
        } else {
            al.d("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new Object[0]);
            return null;
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5, CrashDetailBean crashDetailBean) {
        String str6;
        aa aaVarB = aa.b();
        if (aaVarB == null) {
            return;
        }
        al.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
        al.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
        al.e("# PKG NAME: %s", aaVarB.f83184d);
        al.e("# APP VER: %s", aaVarB.f83195p);
        al.e("# SDK VER: %s", aaVarB.f83189i);
        al.e("# LAUNCH TIME: %s", ap.a(new Date(aa.b().f83182b)));
        al.e("# CRASH TYPE: %s", str);
        al.e("# CRASH TIME: %s", str2);
        al.e("# CRASH PROCESS: %s", str3);
        al.e("# CRASH FOREGROUND: %s", Boolean.valueOf(aaVarB.a()));
        al.e("# CRASH THREAD: %s", str4);
        if (crashDetailBean != null) {
            al.e("# REPORT ID: %s", crashDetailBean.f83122c);
            Object[] objArr = new Object[2];
            objArr[0] = aaVarB.k();
            objArr[1] = aaVarB.u().booleanValue() ? "ROOTED" : "UNROOT";
            al.e("# CRASH DEVICE: %s %s", objArr);
            al.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.C), Long.valueOf(crashDetailBean.D), Long.valueOf(crashDetailBean.E));
            al.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.F), Long.valueOf(crashDetailBean.G), Long.valueOf(crashDetailBean.H));
            if (!ap.b(crashDetailBean.O)) {
                al.e("# EXCEPTION FIRED BY %s %s", crashDetailBean.O, crashDetailBean.N);
            } else if (crashDetailBean.f83121b == 3) {
                Object[] objArr2 = new Object[1];
                if (crashDetailBean.T == null) {
                    str6 = "null";
                } else {
                    str6 = crashDetailBean.T.get("BUGLY_CR_01");
                }
                objArr2[0] = str6;
                al.e("# EXCEPTION ANR MESSAGE:\n %s", objArr2);
            }
        }
        if (!ap.b(str5)) {
            al.e("# CRASH STACK: ", new Object[0]);
            al.e(str5, new Object[0]);
        }
        al.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
    }

    private static void a(CrashDetailBean crashDetailBean, Map<String, String> map) {
        String value;
        if (map != null && !map.isEmpty()) {
            crashDetailBean.S = new LinkedHashMap(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!ap.b(entry.getKey())) {
                    String key = entry.getKey();
                    if (key.length() > 100) {
                        key = key.substring(0, 100);
                        al.d("setted key length is over limit %d substring to %s", 100, key);
                    }
                    if (!ap.b(entry.getValue()) && entry.getValue().length() > 100000) {
                        value = entry.getValue().substring(entry.getValue().length() - 100000);
                        al.d("setted %s value length is over limit %d substring", key, 100000);
                    } else {
                        value = entry.getValue();
                    }
                    crashDetailBean.S.put(key, value);
                    al.a("add setted key %s value size:%d", key, Integer.valueOf(value.length()));
                }
            }
            return;
        }
        al.d("extra map is empty. CrashBean won't have userDatas.", new Object[0]);
    }

    private static void a(ArrayList<bn> arrayList, CrashDetailBean crashDetailBean) {
        String str;
        if (crashDetailBean.f83129j && (str = crashDetailBean.f83138s) != null && str.length() > 0) {
            try {
                arrayList.add(new bn((byte) 1, "alltimes.txt", crashDetailBean.f83138s.getBytes("utf-8")));
            } catch (Exception e10) {
                e10.printStackTrace();
                al.a(e10);
            }
        }
    }

    private static void a(ArrayList<bn> arrayList, String str) {
        if (str != null) {
            try {
                arrayList.add(new bn((byte) 1, "log.txt", str.getBytes("utf-8")));
            } catch (Exception e10) {
                e10.printStackTrace();
                al.a(e10);
            }
        }
    }

    private static void a(ArrayList<bn> arrayList, String str, Context context) {
        if (str != null) {
            try {
                bn bnVarA = a("backupRecord.zip", context, str);
                if (bnVarA != null) {
                    al.c("attach backup record", new Object[0]);
                    arrayList.add(bnVarA);
                }
            } catch (Exception e10) {
                al.a(e10);
            }
        }
    }

    private static void a(ArrayList<bn> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            bn bnVar = new bn((byte) 2, "buglylog.zip", bArr);
            al.c("attach user log", new Object[0]);
            arrayList.add(bnVar);
        } catch (Exception e10) {
            al.a(e10);
        }
    }

    private static void a(ArrayList<bn> arrayList, CrashDetailBean crashDetailBean, Context context) {
        bn bnVarA;
        if (crashDetailBean.f83121b != 3) {
            return;
        }
        al.c("crashBean.anrMessages:%s", crashDetailBean.T);
        try {
            Map<String, String> map = crashDetailBean.T;
            if (map != null && map.containsKey("BUGLY_CR_01")) {
                if (!TextUtils.isEmpty(crashDetailBean.T.get("BUGLY_CR_01"))) {
                    arrayList.add(new bn((byte) 1, "anrMessage.txt", crashDetailBean.T.get("BUGLY_CR_01").getBytes("utf-8")));
                    al.c("attach anr message", new Object[0]);
                }
                crashDetailBean.T.remove("BUGLY_CR_01");
            }
            String str = crashDetailBean.f83141v;
            if (str == null || (bnVarA = a("trace.zip", context, str)) == null) {
                return;
            }
            al.c("attach traces", new Object[0]);
            arrayList.add(bnVarA);
        } catch (Exception e10) {
            e10.printStackTrace();
            al.a(e10);
        }
    }

    private static void a(ArrayList<bn> arrayList, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next());
        }
        try {
            arrayList.add(new bn((byte) 1, "martianlog.txt", sb2.toString().getBytes("utf-8")));
            al.c("attach pageTracingList", new Object[0]);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static Map<String, String> a(CrashDetailBean crashDetailBean, aa aaVar) {
        HashMap map = new HashMap(30);
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.C);
            map.put("A9", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.D);
            map.put("A11", sb3.toString());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(crashDetailBean.E);
            map.put("A10", sb4.toString());
            map.put("A23", crashDetailBean.f83125f);
            StringBuilder sb5 = new StringBuilder();
            aaVar.getClass();
            map.put("A7", sb5.toString());
            map.put("A6", aa.q());
            map.put("A5", aaVar.p());
            map.put("A22", aaVar.j());
            StringBuilder sb6 = new StringBuilder();
            sb6.append(crashDetailBean.G);
            map.put("A2", sb6.toString());
            StringBuilder sb7 = new StringBuilder();
            sb7.append(crashDetailBean.F);
            map.put("A1", sb7.toString());
            map.put("A24", aaVar.c());
            StringBuilder sb8 = new StringBuilder();
            sb8.append(crashDetailBean.H);
            map.put("A17", sb8.toString());
            map.put("A25", aaVar.j());
            map.put("A15", aaVar.t());
            StringBuilder sb9 = new StringBuilder();
            sb9.append(aaVar.u());
            map.put("A13", sb9.toString());
            map.put("A34", crashDetailBean.A);
            if (aaVar.H != null) {
                map.put("productIdentify", aaVar.H);
            }
            map.put("A26", URLEncoder.encode(crashDetailBean.L, "utf-8"));
            boolean z10 = true;
            if (crashDetailBean.f83121b == 1) {
                map.put("A27", crashDetailBean.O);
                map.put("A28", crashDetailBean.N);
                StringBuilder sb10 = new StringBuilder();
                sb10.append(crashDetailBean.f83130k);
                map.put("A29", sb10.toString());
            }
            map.put("A30", crashDetailBean.P);
            StringBuilder sb11 = new StringBuilder();
            sb11.append(crashDetailBean.Q);
            map.put("A18", sb11.toString());
            StringBuilder sb12 = new StringBuilder();
            if (crashDetailBean.R) {
                z10 = false;
            }
            sb12.append(z10);
            map.put("A36", sb12.toString());
            StringBuilder sb13 = new StringBuilder();
            sb13.append(aaVar.A);
            map.put("F02", sb13.toString());
            StringBuilder sb14 = new StringBuilder();
            sb14.append(aaVar.B);
            map.put("F03", sb14.toString());
            map.put("F04", aaVar.e());
            StringBuilder sb15 = new StringBuilder();
            sb15.append(aaVar.C);
            map.put("F05", sb15.toString());
            map.put("F06", aaVar.f83205z);
            map.put("F08", aaVar.F);
            map.put("F09", aaVar.G);
            StringBuilder sb16 = new StringBuilder();
            sb16.append(aaVar.D);
            map.put("F10", sb16.toString());
            a(map, crashDetailBean);
        } catch (Exception e10) {
            e10.printStackTrace();
            al.a(e10);
        }
        return map;
    }

    private static void a(Map<String, String> map, CrashDetailBean crashDetailBean) {
        if (crashDetailBean.U >= 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.U);
            map.put("C01", sb2.toString());
        }
        if (crashDetailBean.V >= 0) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.V);
            map.put("C02", sb3.toString());
        }
        Map<String, String> map2 = crashDetailBean.W;
        if (map2 != null && map2.size() > 0) {
            for (Map.Entry<String, String> entry : crashDetailBean.W.entrySet()) {
                map.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map3 = crashDetailBean.X;
        if (map3 == null || map3.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry2 : crashDetailBean.X.entrySet()) {
            map.put("C04_" + entry2.getKey(), entry2.getValue());
        }
    }

    static /* synthetic */ void a(List list, boolean z10, long j10, String str, String str2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            CrashDetailBean crashDetailBean = (CrashDetailBean) it2.next();
            String str3 = f83330l.get(Integer.valueOf(crashDetailBean.f83121b));
            if (!TextUtils.isEmpty(str3)) {
                arrayList.add(new ag.c(crashDetailBean.f83122c, str3, crashDetailBean.f83137r, z10, j10, str, str2));
            }
        }
        ag.a.f83226a.a(arrayList);
    }
}
