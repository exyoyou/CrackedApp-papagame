package cn.fly.commons.b;

import android.content.Context;
import android.text.TextUtils;
import cn.fly.commons.ac;
import cn.fly.commons.ae;
import cn.fly.commons.c;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.g;
import cn.fly.tools.utils.h;
import cn.fly.tools.utils.i;
import com.baidu.mobads.sdk.internal.bn;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f1100a;

    public a(Context context) {
        this.f1100a = context;
    }

    private void b(String str, String str2) {
        ae.b().a(str, str2);
    }

    private String c(String str, String str2) {
        return g.a().b(str, str2);
    }

    private boolean d(String str) {
        return new File(str).exists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        FlyLog.getInstance().d("[3GTH] " + str, new Object[0]);
    }

    private boolean b(String str) {
        boolean zD;
        try {
            zD = d(c(str));
        } catch (Throwable th) {
            a(th);
            zD = false;
        }
        e("ck tgt: " + str + " ext: " + zD);
        return zD;
    }

    private String c(String str) {
        return this.f1100a.getApplicationInfo().dataDir + "/shared_prefs/" + str + ".xml";
    }

    public void a() {
        ac.f1042a.execute(new i() { // from class: cn.fly.commons.b.a.1
            @Override // cn.fly.tools.utils.i
            protected void a() throws Throwable {
                a.this.e("=====>");
                try {
                    Map mapB = a.this.b();
                    if (mapB != null && !mapB.isEmpty()) {
                        for (Map.Entry entry : mapB.entrySet()) {
                            List list = (List) entry.getKey();
                            if (((Boolean) entry.getValue()).booleanValue()) {
                                a.this.a((List<String>) list);
                            } else {
                                a.this.e("ign: " + list);
                            }
                        }
                    }
                } catch (Throwable th) {
                    a.this.a(th);
                }
                a.this.e("<=====");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<String> list) {
        e("=> " + list);
        if (list != null && list.size() == 4) {
            try {
                String str = list.get(0);
                String str2 = list.get(1);
                String str3 = list.get(2);
                String str4 = list.get(3);
                int iA = a(str3);
                if (a(str3, iA) && !a(a(str3, str4, iA, (String) null), (Object) null)) {
                    String strA = a(str, str2, (String) null);
                    if (!TextUtils.isEmpty(strA) && !a(a(str3, str4, iA, (String) null), (Object) null)) {
                        a(str3, str4, strA, iA);
                    }
                }
            } catch (Throwable th) {
                a(th);
            }
        } else {
            e("oops");
        }
        e("<= " + list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<List<String>, Boolean> b() {
        String[] strArrSplit;
        String[] strArrSplit2;
        HashMap map = new HashMap();
        try {
            String str = (String) c.a("spcfg", "");
            e("ori-cfg: " + str);
            if (str != null && !TextUtils.isEmpty(str.trim()) && (strArrSplit = str.split(";")) != null && strArrSplit.length > 0) {
                for (String str2 : strArrSplit) {
                    if (!TextUtils.isEmpty(str2) && (strArrSplit2 = str2.split(",")) != null && strArrSplit2.length > 0) {
                        ArrayList arrayList = new ArrayList();
                        boolean z10 = true;
                        for (String str3 : strArrSplit2) {
                            if (TextUtils.isEmpty(str3)) {
                                z10 = false;
                            }
                            arrayList.add(str3);
                        }
                        if (arrayList.size() != 4) {
                            z10 = false;
                        }
                        map.put(arrayList, Boolean.valueOf(z10));
                    }
                }
            }
        } catch (Throwable th) {
            a(th);
        }
        e("ana-cfg: " + map);
        return map;
    }

    private boolean a(Object obj, Object obj2) {
        boolean z10 = (a(obj) || Objects.equals(obj, obj2)) ? false : true;
        e("val: " + obj + ", def: " + obj2 + ", val ext: " + z10);
        return z10;
    }

    private boolean a(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() == -1) {
                return true;
            }
        } else if (obj instanceof Long) {
            if (((Long) obj).longValue() == -1) {
                return true;
            }
        } else {
            if (obj instanceof Map) {
                return ((Map) obj).isEmpty();
            }
            if (obj instanceof Collection) {
                return ((Collection) obj).isEmpty();
            }
        }
        return false;
    }

    private int a(String str) {
        if (ae.a().equals(str)) {
            return 1;
        }
        if (g.b().equals(str)) {
            return 2;
        }
        e("unsupported: " + str);
        return 0;
    }

    private boolean a(String str, int i10) {
        boolean zC;
        boolean z10 = false;
        try {
            if (i10 == 1) {
                zC = ae.c();
            } else {
                if (i10 == 2) {
                    zC = g.c();
                } else {
                    e("unsupported: " + str + ", tp: " + i10);
                }
                e("ck slf: " + str + ", t: " + i10 + ", ext: " + z10);
                return z10;
            }
            z10 = zC;
        } catch (Throwable th) {
            a(th);
        }
        e("ck slf: " + str + ", t: " + i10 + ", ext: " + z10);
        return z10;
    }

    private String a(String str, String str2, int i10, String str3) {
        if (i10 == 1) {
            return a(str2, str3);
        }
        if (i10 == 2) {
            return c(str2, str3);
        }
        e("unsupported: " + str + ", tp: " + i10);
        return str3;
    }

    private void a(String str, String str2, String str3, int i10) {
        e("w2s f: " + str + ", k: " + str2 + ", v: " + str3 + "t: " + i10);
        if (i10 == 1) {
            b(str2, str3);
            return;
        }
        if (i10 == 2) {
            a(str2, str3, System.currentTimeMillis() + bn.f7592d);
            return;
        }
        e("unsupported: " + str + ", tp: " + i10);
    }

    private String a(String str, String str2, String str3) {
        try {
            return b(str) ? new h(this.f1100a, str).b(str2, str3) : str3;
        } catch (Throwable th) {
            a(th);
            return str3;
        }
    }

    private String a(String str, String str2) {
        return ae.b().b(str, str2);
    }

    private void a(String str, String str2, long j10) {
        g.a().a(str, str2, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Throwable th) {
        FlyLog.getInstance().e(th, "[3GTH]", new Object[0]);
    }
}
