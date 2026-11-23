package com.join.mgps.joystick.map;

import com.join.mgps.Util.y;
import com.join.mgps.Util.z;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static y f71738e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f71739f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f71741b = d.class.getSimpleName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f71742c = "blacklist_config.ini";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String[] f71743d = {"BT_BLACK_LIST"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f71740a = z.f50164c + "/wufan91/config";

    public a() {
        g();
    }

    private void a() {
        g();
        y yVar = f71738e;
        if (yVar != null) {
            yVar.i(this.f71743d[0]);
            j();
        }
    }

    public static a b() {
        if (f71739f == null) {
            f71739f = new a();
        }
        return f71739f;
    }

    private Map c(String sectionTitle) {
        HashMap map = new HashMap();
        g();
        y.c cVarB = f71738e.b(sectionTitle);
        for (String str : cVarB.d()) {
            map.put(str, cVarB.c(str));
        }
        return map;
    }

    private File d() {
        return new File(this.f71740a + e.F0 + "blacklist_config.ini");
    }

    private boolean e(String str) {
        return str == null || str.equals("");
    }

    private synchronized void g() {
        File fileD = d();
        if (fileD == null) {
            return;
        }
        String absolutePath = fileD.getAbsolutePath();
        try {
            if (!fileD.getParentFile().exists()) {
                fileD.getParentFile().mkdirs();
            }
            if (fileD.exists() && fileD.isDirectory()) {
                fileD.delete();
            }
            if (!fileD.exists()) {
                fileD.setReadable(true);
                fileD.setWritable(true);
                fileD.createNewFile();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (f71738e == null) {
            f71738e = new y(absolutePath);
        }
        f71738e.h();
    }

    private static synchronized void h(int gamer, String sectionTitle, String parameter, String value) {
        y yVar = f71738e;
        yVar.g(sectionTitle, parameter, value);
        yVar.j();
    }

    private void i() {
        y yVar = f71738e;
        int i10 = 0;
        while (true) {
            String[] strArr = this.f71743d;
            if (i10 >= strArr.length) {
                return;
            }
            String str = strArr[i10];
            if (yVar.b(str) == null) {
                yVar.f(new y.c(str));
            }
            i10++;
        }
    }

    private synchronized void j() {
        try {
            y yVar = f71738e;
            if (yVar != null) {
                yVar.j();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void m(String sectionTitle, Map<String, String> data) {
        g();
        Iterator<Map.Entry<String, String>> it2 = data.entrySet().iterator();
        while (it2.hasNext()) {
            String key = it2.next().getKey();
            String str = data.get(key);
            y yVar = f71738e;
            if (yVar != null) {
                yVar.g(sectionTitle, str, key);
            }
        }
        j();
    }

    public boolean f(String device) {
        y.c cVarB;
        if (e(device)) {
            return false;
        }
        g();
        y yVar = f71738e;
        if (yVar == null || (cVarB = yVar.b(this.f71743d[0])) == null) {
            return false;
        }
        for (String str : cVarB.d()) {
            if (!e(str)) {
                if (device.toLowerCase().contains(cVarB.c(str).toLowerCase())) {
                    return true;
                }
            }
        }
        return false;
    }

    public void k(List<String> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        g();
        if (f71738e == null) {
            return;
        }
        a();
        for (int i10 = 0; i10 < list.size(); i10++) {
            f71738e.g(this.f71743d[0], list.get(i10), "");
        }
    }

    public void l(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        g();
        if (f71738e == null) {
            return;
        }
        a();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!e(value)) {
                f71738e.g(this.f71743d[0], key, value);
                j();
            }
        }
    }
}
