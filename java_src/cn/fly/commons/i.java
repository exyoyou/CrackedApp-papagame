package cn.fly.commons;

import android.os.Message;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.network.NetCommunicator;
import cn.fly.tools.utils.ResHelper;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f1343a = cn.fly.commons.a.m.a("004IemedfdLh");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i f1344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NetCommunicator f1345c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1348f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SimpleDateFormat f1346d = new SimpleDateFormat(cn.fly.commons.a.m.a("025:fdfdfdfdilididilededjgglglSl+egegLl2gjgjemfmfmfmjghe"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap<String, Object> f1347e = new HashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1349g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Runnable f1350h = new cn.fly.tools.utils.i() { // from class: cn.fly.commons.i.1
        @Override // cn.fly.tools.utils.i
        protected void a() {
            if (c.d()) {
                i.this.c();
            }
        }
    };

    private i() {
        this.f1348f = null;
        this.f1348f = UUID.randomUUID().toString();
    }

    private synchronized int b() {
        return this.f1349g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        boolean zA;
        File[] fileArrListFiles;
        if (this.f1347e.size() > 0) {
            zA = a(this.f1347e);
            if (!zA) {
                c(this.f1347e);
            }
            this.f1347e.clear();
        } else {
            zA = true;
        }
        if (zA) {
            File fileE = e();
            if (!fileE.exists() || !fileE.isDirectory() || (fileArrListFiles = fileE.listFiles()) == null || fileArrListFiles.length <= 0) {
                return;
            }
            for (File file : fileArrListFiles) {
                if (a((HashMap<String, Object>) ResHelper.readObjectFromFile(file.getAbsolutePath())) && !file.delete()) {
                    file.delete();
                }
            }
        }
    }

    private void d() {
        if (this.f1345c == null) {
            this.f1345c = new NetCommunicator(1024, "ab0a0a6473d1891d388773574764b239d4ad80cb2fd3a83d81d03901c1548c13fee7c9692c326e6682b239d4c5d0021d1b607642c47ec29f10b0602908c3e6c9", "23c3c8cb41c47dd288cc7f4c218fbc7c839a34e0a0d1b2130e87b7914936b120a2d6570ee7ac66282328d50f2acfd82f2259957c89baea32547758db05de9cd7c6822304c8e45742f24bbbe41c1e12f09e18c6fab4d078065f2e5aaed94c900c66e8bbf8a120eefa7bd1fb52114d529250084f5f6f369ed4ce9645978dd30c51");
        }
    }

    private File e() {
        return new File(ResHelper.getDataCache(FlySDK.getContext()), f1343a);
    }

    private boolean b(HashMap<String, Object> map) throws Throwable {
        if (map == null || map.isEmpty()) {
            return true;
        }
        HashMap<String, Object> mapE = q.e();
        mapE.put(cn.fly.commons.a.m.a("006gDekekelekgj"), map);
        d();
        HashMap map2 = (HashMap) this.f1345c.requestWithoutEncode(false, NetCommunicator.getCommonDefaultHeaders(), mapE, j.a().a("dtc") + "/v2/drl", true);
        return map2 == null || map2.isEmpty();
    }

    public static synchronized i a() {
        if (f1344b == null) {
            f1344b = new i();
        }
        return f1344b;
    }

    public synchronized void a(int i10) {
        this.f1349g = i10;
        if (i10 != 1 && i10 != 4 && i10 != 17 && i10 != 18 && i10 != 19 && i10 != 20) {
        }
    }

    public synchronized void a(int i10, Throwable th) {
        a(i10, b(), th, null, "-99");
    }

    private synchronized void a(int i10, int i11, Throwable th, String str, String str2) {
        Object obj;
        try {
            if (th == null) {
                FlyLog.getInstance().d(str, new Object[0]);
            } else {
                FlyLog.getInstance().d(th);
            }
            if (f.a()) {
                return;
            }
            final Message message = new Message();
            message.what = 1;
            Object[] objArr = new Object[5];
            objArr[0] = Long.valueOf(System.currentTimeMillis());
            if (th == null) {
                obj = th;
                obj = str;
            }
            obj = th;
            objArr[1] = obj;
            objArr[2] = Integer.valueOf(i10);
            objArr[3] = Integer.valueOf(i11);
            objArr[4] = str2;
            message.obj = objArr;
            ac.f1043b.execute(new cn.fly.tools.utils.i() { // from class: cn.fly.commons.i.2
                @Override // cn.fly.tools.utils.i
                protected void a() {
                    i.this.a(message);
                }
            });
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void c(HashMap<String, Object> map) {
        File[] fileArrListFiles;
        try {
            File fileE = e();
            if (!fileE.exists() || !fileE.isDirectory()) {
                fileE.delete();
                fileE.mkdirs();
            }
            StringBuilder sb2 = new StringBuilder();
            String str = f1343a;
            sb2.append(str);
            sb2.append("_");
            int i10 = 0;
            sb2.append(0);
            File file = new File(fileE, sb2.toString());
            if (file.exists() && (fileArrListFiles = fileE.listFiles()) != null && fileArrListFiles.length > 0) {
                file = new File(fileE, str + "_0");
                while (file.exists()) {
                    i10++;
                    file = new File(fileE, f1343a + "_" + i10);
                }
            }
            ResHelper.saveObjectToFile(file.getPath(), map);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        String strValueOf;
        if (this.f1347e.size() > 10) {
            c(this.f1347e);
            this.f1347e.clear();
        }
        Object[] objArr = (Object[]) message.obj;
        this.f1347e.put(cn.fly.commons.a.m.a("0027gjed"), this.f1348f);
        ArrayList arrayList = (ArrayList) this.f1347e.get(cn.fly.commons.a.m.a("004h,ejgj8j"));
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        HashMap map = new HashMap();
        map.put(cn.fly.commons.a.m.a("002dj"), objArr[0]);
        Object obj = objArr[1];
        if (obj instanceof Throwable) {
            strValueOf = a((Throwable) obj);
        } else {
            strValueOf = String.valueOf(obj);
        }
        if (!TextUtils.isEmpty(strValueOf)) {
            strValueOf = strValueOf.replaceAll("\r\n\t", " ").replaceAll("\n\t", " ").replaceAll("\n", " ");
        }
        map.put(cn.fly.commons.a.m.a("002$egfk"), "[" + this.f1346d.format(objArr[0]) + "][" + objArr[2] + "][" + objArr[3] + "][" + objArr[4] + "] " + strValueOf);
        map.put(cn.fly.commons.a.m.a("002gj"), objArr[2]);
        map.put(cn.fly.commons.a.m.a("002k<el"), objArr[3]);
        arrayList.add(map);
        this.f1347e.put(cn.fly.commons.a.m.a("004hTejgjTj"), arrayList);
        if (f.a()) {
            return;
        }
        ac.f1043b.execute(this.f1350h);
    }

    private boolean a(HashMap<String, Object> map) {
        try {
            return b(map);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            try {
                return b(map);
            } catch (Throwable th2) {
                FlyLog.getInstance().d(th2);
                return false;
            }
        }
    }

    private String a(Throwable th) {
        if (th == null) {
            return "";
        }
        Throwable cause = th;
        while (true) {
            StringWriter stringWriter = null;
            if (cause != null) {
                try {
                    if (cause instanceof UnknownHostException) {
                        C1293r.a(null);
                        return "";
                    }
                    cause = cause.getCause();
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                StringWriter stringWriter2 = new StringWriter();
                try {
                    PrintWriter printWriter = new PrintWriter(stringWriter2);
                    th.printStackTrace(printWriter);
                    printWriter.flush();
                    String string = stringWriter2.toString();
                    C1293r.a(stringWriter2);
                    return string;
                } catch (Throwable th3) {
                    th = th3;
                    stringWriter = stringWriter2;
                }
            }
            th = th2;
            try {
                if (th instanceof OutOfMemoryError) {
                    String strA = cn.fly.commons.a.m.a("023ZfkMgj!fm:jed=figdek>edg6fm8j7ekejXf<fkjgeleleg");
                    C1293r.a(stringWriter);
                    return strA;
                }
                String message = th.getMessage();
                C1293r.a(stringWriter);
                return message;
            } catch (Throwable th4) {
                C1293r.a(stringWriter);
                throw th4;
            }
        }
    }
}
