package com.xinzhu.overmind.server;

import android.os.Environment;
import android.util.ArrayMap;
import android.util.Xml;
import androidx.annotation.VisibleForTesting;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.xinzhu.overmind.utils.p;
import com.xinzhu.overmind.utils.y;
import com.xinzhu.overmind.utils.z;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes8.dex */
public class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89676b = "MindSystemConfig";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static j f89677c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f89678d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f89679e = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayMap<String, b> f89680a = new ArrayMap<>();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f89681a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int[] f89682b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f89683c;

        a(String str, boolean z10) {
            this.f89681a = str;
            this.f89683c = z10;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f89684a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f89685b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String[] f89686c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f89687d;

        b(String str, String str2, String[] strArr) {
            this(str, str2, strArr, false);
        }

        b(String str, String str2, String[] strArr, boolean z10) {
            this.f89684a = str;
            this.f89685b = str2;
            this.f89686c = strArr;
            this.f89687d = z10;
        }
    }

    j() {
        d();
        h();
    }

    public static j a() {
        j jVar;
        synchronized (j.class) {
            if (f89677c == null) {
                f89677c = new j();
            }
            jVar = f89677c;
        }
        return jVar;
    }

    private void c(String str, File file, XmlPullParser xmlPullParser) {
        y.j(f89676b, SimpleComparison.LESS_THAN_OPERATION + str + "> not allowed in partition of " + file + " at " + xmlPullParser.getPositionDescription());
    }

    private void d() {
        e(com.xinzhu.overmind.a.a(Environment.getRootDirectory(), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/vendor"), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/odm"), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/oem"), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/product"), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/system_ext"), "etc", "permissions"), -1);
    }

    private void f(File file, int i10) {
        int next;
        try {
            FileReader fileReader = new FileReader(file);
            y.e(f89676b, "Reading permissions from " + file);
            try {
                try {
                    XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                    xmlPullParserNewPullParser.setInput(fileReader);
                    do {
                        next = xmlPullParserNewPullParser.next();
                        if (next == 2) {
                            break;
                        }
                    } while (next != 1);
                    if (next != 2) {
                        throw new XmlPullParserException("No start tag found");
                    }
                    if (!xmlPullParserNewPullParser.getName().equals("permissions") && !xmlPullParserNewPullParser.getName().equals("config")) {
                        throw new XmlPullParserException("Unexpected start tag in " + file + ": found " + xmlPullParserNewPullParser.getName() + ", expected 'permissions' or 'config'");
                    }
                    boolean z10 = (i10 & 2) != 0;
                    while (true) {
                        z.a(xmlPullParserNewPullParser);
                        if (xmlPullParserNewPullParser.getEventType() == 1) {
                            break;
                        }
                        String name = xmlPullParserNewPullParser.getName();
                        if (name == null) {
                            z.c(xmlPullParserNewPullParser);
                        } else {
                            if (((name.hashCode() == 166208699 && name.equals("library")) ? (byte) 0 : (byte) -1) != 0) {
                                z.c(xmlPullParserNewPullParser);
                            } else {
                                if (z10) {
                                    String attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "name");
                                    String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(null, "file");
                                    String attributeValue3 = xmlPullParserNewPullParser.getAttributeValue(null, "dependency");
                                    if (attributeValue == null) {
                                        y.j(f89676b, SimpleComparison.LESS_THAN_OPERATION + name + "> without name in " + file + " at " + xmlPullParserNewPullParser.getPositionDescription());
                                    } else if (attributeValue2 == null) {
                                        y.j(f89676b, SimpleComparison.LESS_THAN_OPERATION + name + "> without file in " + file + " at " + xmlPullParserNewPullParser.getPositionDescription());
                                    } else {
                                        this.f89680a.put(attributeValue, new b(attributeValue, attributeValue2, attributeValue3 == null ? new String[0] : attributeValue3.split(":")));
                                    }
                                } else {
                                    c(name, file, xmlPullParserNewPullParser);
                                }
                                z.c(xmlPullParserNewPullParser);
                            }
                        }
                    }
                    p.b(fileReader);
                } catch (Throwable th) {
                    p.b(fileReader);
                    throw th;
                }
            } catch (IOException e10) {
                y.k(f89676b, "Got exception parsing permissions.", e10);
            } catch (XmlPullParserException e11) {
                y.k(f89676b, "Got exception parsing permissions.", e11);
            }
        } catch (FileNotFoundException unused) {
            y.j(f89676b, "Couldn't find or open permissions file " + file);
        }
    }

    private void g(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        return;
                    } else if (!line.isEmpty() && !line.startsWith("#")) {
                        String str = line.trim().split(" ")[0];
                        b bVar = new b(str, str, new String[0], true);
                        this.f89680a.put(bVar.f89684a, bVar);
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
                y.k(f89676b, "Failed to read public libraries file " + file, e);
            }
        } catch (IOException e10) {
            y.k(f89676b, "Failed to read public libraries file " + file, e10);
        }
    }

    private void h() {
        g(new File("/vendor/etc/public.libraries.txt"));
        String[] strArr = {"/system/etc", "/system_ext/etc", "/product/etc"};
        for (int i10 = 0; i10 < 3; i10++) {
            String str = strArr[i10];
            File[] fileArrListFiles = new File(str).listFiles();
            if (fileArrListFiles == null) {
                y.j(f89676b, "Public libraries file folder missing: " + str);
            } else {
                for (File file : fileArrListFiles) {
                    String name = file.getName();
                    if (name.startsWith("public.libraries-") && name.endsWith(".txt")) {
                        g(file);
                    }
                }
            }
        }
    }

    public ArrayMap<String, b> b() {
        return this.f89680a;
    }

    @VisibleForTesting
    public void e(File file, int i10) {
        if (!file.exists() || !file.isDirectory()) {
            if (i10 == -1) {
                y.j(f89676b, "No directory " + file + ", skipping");
                return;
            }
            return;
        }
        if (!file.canRead()) {
            y.j(f89676b, "Directory " + file + " cannot be read");
            return;
        }
        File file2 = null;
        for (File file3 : file.listFiles()) {
            if (file3.isFile()) {
                if (file3.getPath().endsWith("etc/permissions/platform.xml")) {
                    file2 = file3;
                } else if (!file3.getPath().endsWith(".xml")) {
                    y.e(f89676b, "Non-xml file " + file3 + " in " + file + " directory, ignoring");
                } else if (file3.canRead()) {
                    f(file3, i10);
                } else {
                    y.j(f89676b, "Permissions library file " + file3 + " cannot be read");
                }
            }
        }
        if (file2 != null) {
            f(file2, i10);
        }
    }
}
