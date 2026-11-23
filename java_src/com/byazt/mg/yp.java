package com.byazt.mg;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.join.mgps.Util.o0;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 215})
public final class yp {

    @com.byazt.zqa.c(c = {0, 1, 170, 435})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PrintWriter f16912c;

        public c(PrintWriter printWriter) {
            this.f16912c = printWriter;
        }

        public Object c() {
            return this.f16912c;
        }

        public void c(Object obj) {
            this.f16912c.println(obj);
        }
    }

    public static String c(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb2 = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            c(stackTraceElement, sb2);
        }
        return sb2.toString();
    }

    private static boolean tt(String str) {
        Set<String> setC = n.c();
        if (setC.contains(str)) {
            return true;
        }
        for (String str2 : setC) {
            if (!TextUtils.isEmpty(str) && str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean ve(Throwable th) {
        int i10 = 0;
        while (th != null) {
            if (th instanceof StackOverflowError) {
                return true;
            }
            if (i10 > 20) {
                return false;
            }
            th = th.getCause();
            i10++;
        }
        return false;
    }

    public static StringBuilder c(StackTraceElement stackTraceElement, StringBuilder sb2) {
        String className = stackTraceElement.getClassName();
        sb2.append("  at ");
        sb2.append(className);
        sb2.append(o0.f49827a);
        sb2.append(stackTraceElement.getMethodName());
        sb2.append("(");
        sb2.append(stackTraceElement.getFileName());
        sb2.append(":");
        sb2.append(stackTraceElement.getLineNumber());
        sb2.append(")\n");
        return sb2;
    }

    public static boolean tt(Throwable th) {
        if (th == null) {
            return false;
        }
        int i10 = 0;
        while (th != null) {
            if (th instanceof OutOfMemoryError) {
                return true;
            }
            if (i10 > 20) {
                return false;
            }
            i10++;
            try {
                th = th.getCause();
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @NonNull
    public static String c(@NonNull Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            if (ve(th)) {
                c(th, printWriter);
            } else {
                th.printStackTrace(printWriter);
            }
            return stringWriter.toString();
        } catch (Exception unused) {
            return "";
        } finally {
            printWriter.close();
        }
    }

    @Nullable
    public static JSONObject c(String str) {
        boolean z10;
        try {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            JSONObject jSONObject = new JSONObject();
            if (allStackTraces == null) {
                return null;
            }
            jSONObject.put("thread_all_count", allStackTraces.size());
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                JSONObject jSONObject2 = new JSONObject();
                Thread key = entry.getKey();
                String name = key.getName();
                if (!tt(name) && (str == null || (!str.equals(name) && !name.startsWith(str) && !name.endsWith(str)))) {
                    jSONObject2.put("thread_name", key.getName() + "(" + key.getId() + ")");
                    StackTraceElement[] value = entry.getValue();
                    if (value != null) {
                        JSONArray jSONArray2 = new JSONArray();
                        for (StackTraceElement stackTraceElement : value) {
                            jSONArray2.put(stackTraceElement.getClassName() + o0.f49827a + stackTraceElement.getMethodName() + "(" + stackTraceElement.getLineNumber() + ")");
                        }
                        jSONObject2.put("thread_stack", jSONArray2);
                        z10 = jSONArray2.length() > 0;
                    }
                    if (z10) {
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            jSONObject.put("thread_stacks", jSONArray);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void c(Throwable th, PrintWriter printWriter) {
        if (th == null || printWriter == null) {
            return;
        }
        c cVar = new c(printWriter);
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        setNewSetFromMap.add(th);
        synchronized (cVar.c()) {
            cVar.c(th);
            StackTraceElement[] stackTrace = th.getStackTrace();
            int i10 = 0;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (i10 > 256) {
                    cVar.c("\t... skip " + (stackTrace.length - i10) + " lines");
                    break;
                }
                cVar.c("\tat " + stackTraceElement);
                i10++;
            }
            for (Throwable th2 : th.getSuppressed()) {
                c(th2, cVar, stackTrace, "Suppressed: ", "\t", setNewSetFromMap);
            }
            Throwable cause = th.getCause();
            if (cause != null) {
                c(cause, cVar, stackTrace, "Caused by: ", "", setNewSetFromMap);
            }
        }
    }

    private static void c(Throwable th, c cVar, StackTraceElement[] stackTraceElementArr, String str, String str2, Set<Throwable> set) {
        if (set.contains(th)) {
            cVar.c("\t[CIRCULAR REFERENCE:" + th + "]");
            return;
        }
        set.add(th);
        StackTraceElement[] stackTrace = th.getStackTrace();
        int iMin = Math.min(stackTrace.length, 256);
        int i10 = iMin - 1;
        int i11 = i10;
        for (int iMin2 = Math.min(stackTraceElementArr.length, 256) - 1; i11 >= 0 && iMin2 >= 0 && stackTrace[i11].equals(stackTraceElementArr[iMin2]); iMin2--) {
            i11--;
        }
        int i12 = i10 - i11;
        cVar.c(str2 + str + th);
        for (int i13 = 0; i13 <= i11; i13++) {
            cVar.c(str2 + "\tat " + stackTrace[i13]);
        }
        if (iMin < stackTrace.length) {
            cVar.c("\t... skip " + (stackTrace.length - iMin) + " lines");
        }
        if (i12 != 0) {
            cVar.c(str2 + "\t... " + i12 + " more");
        }
        for (Throwable th2 : th.getSuppressed()) {
            c(th2, cVar, stackTrace, "Suppressed: ", str2 + "\t", set);
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            c(cause, cVar, stackTrace, "Caused by: ", str2, set);
        }
    }
}
