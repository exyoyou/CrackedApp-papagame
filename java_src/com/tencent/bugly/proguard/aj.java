package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class aj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f83254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected long f83255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected long f83256c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f83257d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f83258e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f83259f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f83260g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final byte[] f83261h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final aa f83262i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ac f83263j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final af f83264k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ai f83265l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f83266m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ah f83267n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ah f83268o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f83269p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f83270q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Map<String, String> f83271r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f83272s;

    public aj(Context context, int i10, int i11, byte[] bArr, String str, String str2, ah ahVar, boolean z10) {
        this(context, i10, i11, bArr, str, str2, ahVar, 2, 30000, z10);
    }

    private static void a(String str) {
        al.e("[Upload] Failed to upload(%d): %s", 1, str);
    }

    public final void b(long j10) {
        this.f83256c += j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        ac acVar;
        Pair pair;
        boolean zBooleanValue;
        try {
            this.f83254a = 0;
            this.f83255b = 0L;
            this.f83256c = 0L;
            if (ab.c(this.f83259f) == null) {
                str = "network is not available";
            } else {
                byte[] bArr = this.f83261h;
                if (bArr == null || bArr.length == 0) {
                    str = "request package is empty!";
                } else if (this.f83259f == null || this.f83262i == null || (acVar = this.f83263j) == null || this.f83264k == null) {
                    str = "illegal access error";
                } else {
                    str = acVar.c() == null ? "illegal local strategy" : null;
                }
            }
            if (str != null) {
                a(false, 0, str);
                return;
            }
            byte[] bArrA = ap.a(this.f83261h);
            if (bArrA == null) {
                a(false, 0, "failed to zip request body");
                return;
            }
            HashMap map = new HashMap(10);
            map.put(LiveConfigKey.TLS, "1");
            map.put("prodId", this.f83262i.f());
            map.put("bundleId", this.f83262i.f83184d);
            map.put("appVer", this.f83262i.f83195p);
            Map<String, String> map2 = this.f83271r;
            if (map2 != null) {
                map.putAll(map2);
            }
            map.put("cmd", Integer.toString(this.f83260g));
            map.put(ConstantsAPI.Token.WX_TOKEN_PLATFORMID_KEY, Byte.toString((byte) 1));
            map.put("sdkVer", this.f83262i.f83189i);
            map.put("strategylastUpdateTime", Long.toString(this.f83263j.c().f83110o));
            this.f83265l.a(this.f83266m, System.currentTimeMillis());
            String strB = this.f83269p;
            this.f83263j.c();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int i12 = i10 + 1;
                if (i10 >= this.f83257d) {
                    a(false, i11, "failed after many attempts");
                    return;
                }
                if (i12 > 1) {
                    al.d("[Upload] Failed to upload last time, wait and try(%d) again.", Integer.valueOf(i12));
                    ap.b(this.f83258e);
                    if (i12 == this.f83257d) {
                        al.d("[Upload] Use the back-up url at the last time: %s", this.f83270q);
                        strB = this.f83270q;
                    }
                }
                al.c("[Upload] Send %d bytes", Integer.valueOf(bArrA.length));
                strB = b(strB);
                al.c("[Upload] Upload to %s with cmd %d (pid=%d | tid=%d).", strB, Integer.valueOf(this.f83260g), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                byte[] bArrA2 = this.f83264k.a(strB, bArrA, this, map);
                Map<String, String> map3 = this.f83264k.f83221c;
                Pair<Boolean, Boolean> pairA = a(bArrA2, map3);
                if (((Boolean) pairA.first).booleanValue()) {
                    Pair<Boolean, Boolean> pairA2 = a(map3);
                    if (((Boolean) pairA2.first).booleanValue()) {
                        byte[] bArrB = ap.b(bArrA2);
                        if (bArrB != null) {
                            bArrA2 = bArrB;
                        }
                        br brVarA = ae.a(bArrA2);
                        if (brVarA == null) {
                            a(false, 1, "failed to decode response package");
                            Boolean bool = Boolean.FALSE;
                            pair = new Pair(bool, bool);
                        } else {
                            Object[] objArr = new Object[2];
                            objArr[0] = Integer.valueOf(brVarA.f83537b);
                            byte[] bArr2 = brVarA.f83538c;
                            objArr[1] = Integer.valueOf(bArr2 == null ? 0 : bArr2.length);
                            al.c("[Upload] Response cmd is: %d, length of sBuffer is: %d", objArr);
                            if (a(brVarA, this.f83262i, this.f83263j)) {
                                a(true, 2, "successfully uploaded");
                                Boolean bool2 = Boolean.TRUE;
                                pair = new Pair(bool2, bool2);
                            } else {
                                a(false, 2, "failed to process response package");
                                Boolean bool3 = Boolean.FALSE;
                                pair = new Pair(bool3, bool3);
                            }
                        }
                        zBooleanValue = !((Boolean) pair.first).booleanValue() ? ((Boolean) pair.second).booleanValue() : false;
                    } else {
                        zBooleanValue = ((Boolean) pairA2.second).booleanValue();
                    }
                } else {
                    zBooleanValue = ((Boolean) pairA.second).booleanValue();
                }
                if (!zBooleanValue) {
                    return;
                }
                i10 = i12;
                i11 = 1;
            }
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public aj(Context context, int i10, int i11, byte[] bArr, String str, String str2, ah ahVar, int i12, int i13, boolean z10) {
        this.f83257d = 2;
        this.f83258e = 30000;
        this.f83269p = null;
        this.f83254a = 0;
        this.f83255b = 0L;
        this.f83256c = 0L;
        this.f83272s = false;
        this.f83259f = context;
        this.f83262i = aa.a(context);
        this.f83261h = bArr;
        this.f83263j = ac.a();
        if (af.f83219a == null) {
            af.f83219a = new af(context);
        }
        this.f83264k = af.f83219a;
        ai aiVarA = ai.a();
        this.f83265l = aiVarA;
        this.f83266m = i10;
        this.f83269p = str;
        this.f83270q = str2;
        this.f83267n = ahVar;
        this.f83268o = aiVarA.f83238a;
        this.f83260g = i11;
        if (i12 > 0) {
            this.f83257d = i12;
        }
        if (i13 > 0) {
            this.f83258e = i13;
        }
        this.f83272s = z10;
        this.f83271r = null;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0017  */
    /* JADX WARN: Code duplicated, block: B:12:0x001a  */
    private void a(boolean z10, int i10, String str) {
        String strValueOf;
        int i11 = this.f83260g;
        if (i11 == 630) {
            strValueOf = "crash";
        } else if (i11 == 640) {
            strValueOf = "userinfo";
        } else if (i11 == 830) {
            strValueOf = "crash";
        } else if (i11 != 840) {
            strValueOf = String.valueOf(i11);
        } else {
            strValueOf = "userinfo";
        }
        if (z10) {
            al.a("[Upload] Success: %s", strValueOf);
        } else {
            al.e("[Upload] Failed to upload(%d) %s: %s", Integer.valueOf(i10), strValueOf, str);
        }
        if (this.f83255b + this.f83256c > 0) {
            this.f83265l.a(this.f83265l.a(this.f83272s) + this.f83255b + this.f83256c, this.f83272s);
        }
        ah ahVar = this.f83267n;
        if (ahVar != null) {
            ahVar.a(z10, str);
        }
        ah ahVar2 = this.f83268o;
        if (ahVar2 != null) {
            ahVar2.a(z10, str);
        }
    }

    private static String b(String str) {
        if (ap.b(str)) {
            return str;
        }
        try {
            return String.format("%s?aid=%s", str, UUID.randomUUID().toString());
        } catch (Throwable th) {
            al.a(th);
            return str;
        }
    }

    private static boolean a(br brVar, aa aaVar, ac acVar) {
        if (brVar == null) {
            al.d("resp == null!", new Object[0]);
            return false;
        }
        byte b10 = brVar.f83536a;
        if (b10 != 0) {
            al.e("resp result error %d", Byte.valueOf(b10));
            return false;
        }
        try {
            if (!ap.b(brVar.f83542g) && !aa.b().l().equals(brVar.f83542g)) {
                w.a().a(ac.f83209a, "device", brVar.f83542g.getBytes("UTF-8"), true);
                aaVar.d(brVar.f83542g);
            }
        } catch (Throwable th) {
            al.a(th);
        }
        aaVar.f83193m = brVar.f83540e;
        int i10 = brVar.f83537b;
        if (i10 == 510) {
            byte[] bArr = brVar.f83538c;
            if (bArr == null) {
                al.e("[Upload] Strategy data is null. Response cmd: %d", Integer.valueOf(i10));
                return false;
            }
            bt btVar = (bt) ae.a(bArr, bt.class);
            if (btVar == null) {
                al.e("[Upload] Failed to decode strategy from server. Response cmd: %d", Integer.valueOf(brVar.f83537b));
                return false;
            }
            acVar.a(btVar);
        }
        return true;
    }

    private Pair<Boolean, Boolean> a(byte[] bArr, Map<String, String> map) {
        if (bArr == null) {
            a("Failed to upload for no response!");
            return new Pair<>(Boolean.FALSE, Boolean.TRUE);
        }
        al.c("[Upload] Received %d bytes", Integer.valueOf(bArr.length));
        if (bArr.length == 0) {
            a(false, 1, "response data from server is empty");
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    al.c("[Upload] HTTP headers from server: key = %s, value = %s", entry.getKey(), entry.getValue());
                }
            }
            Boolean bool = Boolean.FALSE;
            return new Pair<>(bool, bool);
        }
        Boolean bool2 = Boolean.TRUE;
        return new Pair<>(bool2, bool2);
    }

    public final void a(long j10) {
        this.f83254a++;
        this.f83255b += j10;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005b  */
    /* JADX WARN: Code duplicated, block: B:23:0x007d  */
    /* JADX WARN: Code duplicated, block: B:26:0x008b A[LOOP:0: B:24:0x0085->B:26:0x008b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private Pair<Boolean, Boolean> a(Map<String, String> map) {
        boolean z10;
        int i10;
        if (map != null && map.size() != 0) {
            if (!map.containsKey("status")) {
                al.d("[Upload] Headers does not contain %s", "status");
            } else if (!map.containsKey("Bugly-Version")) {
                al.d("[Upload] Headers does not contain %s", "Bugly-Version");
            } else {
                String str = map.get("Bugly-Version");
                if (!str.contains("bugly")) {
                    al.d("[Upload] Bugly version is not valid: %s", str);
                } else {
                    al.c("[Upload] Bugly version from headers is: %s", str);
                    z10 = true;
                }
                if (!z10) {
                    al.c("[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d).", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                    a("[Upload] Failed to upload for no status header.");
                    if (map != null) {
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            al.c(String.format("[key]: %s, [value]: %s", entry.getKey(), entry.getValue()), new Object[0]);
                        }
                    }
                    al.c("[Upload] Failed to upload for no status header.", new Object[0]);
                    return new Pair<>(Boolean.FALSE, Boolean.TRUE);
                }
                try {
                    i10 = Integer.parseInt(map.get("status"));
                    try {
                        al.c("[Upload] Status from server is %d (pid=%d | tid=%d).", Integer.valueOf(i10), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                        if (i10 != 0) {
                            a(false, 1, "status of server is ".concat(String.valueOf(i10)));
                            Boolean bool = Boolean.FALSE;
                            return new Pair<>(bool, bool);
                        }
                        Boolean bool2 = Boolean.TRUE;
                        return new Pair<>(bool2, bool2);
                    } catch (Throwable unused) {
                        a("[Upload] Failed to upload for format of status header is invalid: " + Integer.toString(i10));
                        return new Pair<>(Boolean.FALSE, Boolean.TRUE);
                    }
                } catch (Throwable unused2) {
                    i10 = -1;
                }
            }
        } else {
            al.d("[Upload] Headers is empty.", new Object[0]);
        }
        z10 = false;
        if (!z10) {
            al.c("[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d).", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            a("[Upload] Failed to upload for no status header.");
            if (map != null) {
                while (r8.hasNext()) {
                    al.c(String.format("[key]: %s, [value]: %s", entry.getKey(), entry.getValue()), new Object[0]);
                }
            }
            al.c("[Upload] Failed to upload for no status header.", new Object[0]);
            return new Pair<>(Boolean.FALSE, Boolean.TRUE);
        }
        i10 = Integer.parseInt(map.get("status"));
        al.c("[Upload] Status from server is %d (pid=%d | tid=%d).", Integer.valueOf(i10), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        if (i10 != 0) {
            a(false, 1, "status of server is ".concat(String.valueOf(i10)));
            Boolean bool3 = Boolean.FALSE;
            return new Pair<>(bool3, bool3);
        }
        Boolean bool4 = Boolean.TRUE;
        return new Pair<>(bool4, bool4);
    }
}
