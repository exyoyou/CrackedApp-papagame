package cn.com.chinatelecom.account.a;

import android.content.Context;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.Helper;
import cn.com.chinatelecom.account.api.d.g;
import com.baidu.mobads.sdk.internal.cb;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class c extends cn.com.chinatelecom.account.api.c.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f720b = "c";

    private static int b(Context context) {
        try {
            return cn.com.chinatelecom.account.api.d.c.b(context, "key_c_l_l_v", 0);
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x004c A[Catch: all -> 0x0083, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x0021, B:10:0x002f, B:12:0x0035, B:13:0x003c, B:14:0x003f, B:17:0x0046, B:20:0x004c, B:21:0x0050, B:23:0x0056, B:24:0x005c, B:26:0x0069, B:29:0x006e, B:32:0x0077, B:34:0x007d, B:31:0x0074), top: B:43:0x0003, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0056 A[Catch: all -> 0x0083, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x0021, B:10:0x002f, B:12:0x0035, B:13:0x003c, B:14:0x003f, B:17:0x0046, B:20:0x004c, B:21:0x0050, B:23:0x0056, B:24:0x005c, B:26:0x0069, B:29:0x006e, B:32:0x0077, B:34:0x007d, B:31:0x0074), top: B:43:0x0003, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0074 A[Catch: all -> 0x0083, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x0021, B:10:0x002f, B:12:0x0035, B:13:0x003c, B:14:0x003f, B:17:0x0046, B:20:0x004c, B:21:0x0050, B:23:0x0056, B:24:0x005c, B:26:0x0069, B:29:0x006e, B:32:0x0077, B:34:0x007d, B:31:0x0074), top: B:43:0x0003, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x007d A[Catch: all -> 0x0083, LOOP:2: B:32:0x0077->B:34:0x007d, LOOP_END, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x0021, B:10:0x002f, B:12:0x0035, B:13:0x003c, B:14:0x003f, B:17:0x0046, B:20:0x004c, B:21:0x0050, B:23:0x0056, B:24:0x005c, B:26:0x0069, B:29:0x006e, B:32:0x0077, B:34:0x007d, B:31:0x0074), top: B:43:0x0003, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0050 A[SYNTHETIC] */
    public static synchronized Queue<String> c(Context context, List<String> list, int i10) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        concurrentLinkedQueue = new ConcurrentLinkedQueue();
        String strA = b.a(context);
        if (TextUtils.isEmpty(strA)) {
            if (i10 == -1) {
                for (String str : list) {
                    if (new JSONObject(str).getInt("rt") != 0) {
                        concurrentLinkedQueue.add(str);
                    }
                }
            } else if (i10 == 0) {
                concurrentLinkedQueue.addAll(list);
            }
            while (concurrentLinkedQueue.size() > 10) {
                concurrentLinkedQueue.poll();
            }
        } else {
            try {
                JSONArray jSONArray = new JSONArray(new String(Helper.dneulret(cn.com.chinatelecom.account.api.a.c.a(strA))));
                int length = jSONArray.length();
                for (int i11 = 0; i11 < length && i11 <= 10; i11++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i11);
                    if (jSONObject != null) {
                        concurrentLinkedQueue.add(jSONObject.toString());
                    }
                }
                b.a(context, "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (i10 == -1) {
                while (r7.hasNext()) {
                    try {
                        if (new JSONObject(str).getInt("rt") != 0) {
                            concurrentLinkedQueue.add(str);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            } else if (i10 == 0) {
                concurrentLinkedQueue.addAll(list);
            }
            while (concurrentLinkedQueue.size() > 10) {
                concurrentLinkedQueue.poll();
            }
        }
        throw th;
        return concurrentLinkedQueue;
    }

    private static String b(Context context, String str) {
        return a.a(context, g.c(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context) throws Throwable {
        b.a(context, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Context context, Queue<String> queue) {
        JSONArray jSONArray = new JSONArray();
        String string = jSONArray.toString();
        if (!queue.isEmpty()) {
            Iterator<String> it2 = queue.iterator();
            while (it2.hasNext()) {
                try {
                    jSONArray.put(new JSONObject(it2.next()));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        if (jSONArray.length() <= 0) {
            return "";
        }
        String string2 = jSONArray.toString();
        if (!TextUtils.isEmpty(string2)) {
            try {
                string = URLEncoder.encode(Helper.guulam(context, string2), "UTF-8");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return b(context, string);
    }

    private static void a(Context context, int i10) {
        try {
            cn.com.chinatelecom.account.api.d.c.a(context, "key_c_l_l_v", i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static void b(final Context context, final List<String> list, final int i10) {
        cn.com.chinatelecom.account.api.c.a.a(new Runnable() { // from class: cn.com.chinatelecom.account.a.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Queue queueC = c.c(context, list, i10);
                    if (queueC.isEmpty()) {
                        return;
                    }
                    String strB = c.b(context, (Queue<String>) queueC);
                    JSONObject jSONObject = null;
                    int i11 = -1;
                    try {
                        if (!TextUtils.isEmpty(strB)) {
                            JSONObject jSONObject2 = new JSONObject(strB);
                            try {
                                i11 = jSONObject2.getInt("code");
                                jSONObject = jSONObject2;
                            } catch (Exception e10) {
                                e = e10;
                                jSONObject = jSONObject2;
                                e.printStackTrace();
                            }
                        }
                    } catch (Exception e11) {
                        e = e11;
                    }
                    if (jSONObject == null || i11 != 0) {
                        c.b(context, (Queue<String>) queueC, i10);
                    } else {
                        c.c(context);
                        queueC.clear();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    public static void a(Context context, String str) {
        int i10;
        str.hashCode();
        if (str.equals("OFF")) {
            i10 = -2;
        } else {
            i10 = !str.equals(cb.f7690l) ? 0 : -1;
        }
        a(context, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, Queue<String> queue, int i10) throws Throwable {
        String strEneulret;
        JSONArray jSONArray = new JSONArray();
        if (queue != null && !queue.isEmpty()) {
            Iterator<String> it2 = queue.iterator();
            int i11 = 0;
            while (it2.hasNext()) {
                try {
                    JSONObject jSONObject = new JSONObject(it2.next());
                    if (i10 != -1 || jSONObject.getInt("rt") != 0) {
                        jSONArray.put(jSONObject);
                        i11++;
                        if (i11 > 10) {
                            break;
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        if (jSONArray.length() > 0) {
            try {
                strEneulret = Helper.eneulret(jSONArray.toString());
            } catch (Exception e11) {
                e11.printStackTrace();
                strEneulret = null;
            }
        } else {
            strEneulret = "";
        }
        if (TextUtils.isEmpty(strEneulret)) {
            return;
        }
        b.a(context, strEneulret);
    }

    public static void a(Context context, List<String> list) {
        int iB = b(context);
        if (iB == -2) {
            return;
        }
        b(context, list, iB);
    }
}
