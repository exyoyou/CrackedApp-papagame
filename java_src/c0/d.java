package c0;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f508a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f509b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f510c = "";

    public static synchronized void a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        d(arrayList);
    }

    public static synchronized void b(String str, String str2, String str3) {
        f508a = str;
        f509b = str2;
        f510c = str3;
    }

    public static synchronized void c(Throwable th) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(e(th));
        d(arrayList);
    }

    private static synchronized void d(List<String> list) {
        if (!a.b(f509b) && !a.b(f510c)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(f510c);
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                stringBuffer.append(", " + it2.next());
            }
            stringBuffer.append("\n");
            try {
                File file = new File(f508a);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(f508a, f509b);
                if (!file2.exists()) {
                    file2.createNewFile();
                }
                FileWriter fileWriter = ((long) stringBuffer.length()) + file2.length() <= 51200 ? new FileWriter(file2, true) : new FileWriter(file2);
                fileWriter.write(stringBuffer.toString());
                fileWriter.flush();
                fileWriter.close();
            } catch (Exception e10) {
                e10.toString();
            }
        }
    }

    public static String e(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
