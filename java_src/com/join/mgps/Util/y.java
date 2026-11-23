package com.join.mgps.Util;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class y {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f50144d = "[<sectionless!>]";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f50145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<String, c> f50146b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedList<c> f50147c = new LinkedList<>();

    private static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f50148d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f50149e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f50150f = 2;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f50151a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f50152b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public b f50153c;

        public a(int type, String line, b param) {
            this.f50151a = type;
            this.f50152b = line;
            this.f50153c = param;
        }

        public void a(FileWriter fw) throws IOException {
            int iIndexOf;
            if (this.f50151a != 2) {
                fw.write(this.f50152b);
                return;
            }
            if (!this.f50152b.contains(SimpleComparison.EQUAL_TO_OPERATION) || this.f50153c == null || (iIndexOf = this.f50152b.indexOf(61)) < 1 || iIndexOf >= this.f50152b.length()) {
                return;
            }
            fw.write(this.f50152b.substring(0, iIndexOf + 1) + this.f50153c.f50155b + "\n");
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f50154a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f50155b;

        public b(String parameter, String value) {
            this.f50154a = parameter;
            this.f50155b = value;
        }
    }

    public y(String filename) {
        this.f50145a = filename;
        h();
    }

    public void a() {
        this.f50146b.clear();
        this.f50147c.clear();
    }

    public c b(String sectionTitle) {
        return this.f50146b.get(sectionTitle);
    }

    public String c(String sectionTitle, String parameter) {
        b bVar;
        c cVar = this.f50146b.get(sectionTitle);
        if (cVar == null || cVar.f50157b == null || (bVar = (b) cVar.f50157b.get(parameter)) == null) {
            return null;
        }
        return bVar.f50155b;
    }

    public Set<String> d() {
        return this.f50146b.keySet();
    }

    public c e(String regex) {
        for (String str : this.f50146b.keySet()) {
            if (str.matches(regex)) {
                return this.f50146b.get(str);
            }
        }
        return null;
    }

    public void f(c section) {
        if (section == null) {
            return;
        }
        this.f50146b.put(section.f50156a, section);
        if (this.f50147c.contains(section)) {
            this.f50147c.remove(section);
        }
        this.f50147c.add(section);
    }

    public void g(String sectionTitle, String parameter, String value) {
        c cVar = this.f50146b.get(sectionTitle);
        if (cVar == null) {
            cVar = new c(sectionTitle);
            this.f50146b.put(sectionTitle, cVar);
            this.f50147c.add(cVar);
        }
        cVar.e(parameter, value);
    }

    public boolean h() {
        if (TextUtils.isEmpty(this.f50145a)) {
            return false;
        }
        a();
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(this.f50145a));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
            c cVar = new c(f50144d, bufferedReader);
            this.f50146b.put(f50144d, cVar);
            this.f50147c.add(cVar);
            while (!TextUtils.isEmpty(cVar.f50159d)) {
                String str = cVar.f50159d;
                c cVar2 = new c(str, bufferedReader);
                this.f50146b.put(str, cVar2);
                this.f50147c.add(cVar2);
                cVar = cVar2;
            }
            try {
                dataInputStream.close();
                bufferedReader.close();
                return true;
            } catch (IOException unused) {
                return true;
            }
        } catch (FileNotFoundException unused2) {
            File file = new File(this.f50145a);
            try {
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (file.createNewFile()) {
                    return h();
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            return false;
        }
    }

    public void i(String sectionTitle) {
        this.f50147c.remove(this.f50146b.get(sectionTitle));
        this.f50146b.remove(sectionTitle);
    }

    public boolean j() {
        if (TextUtils.isEmpty(this.f50145a)) {
            return false;
        }
        File file = new File(this.f50145a);
        if (!file.exists()) {
            try {
                file.getParentFile().mkdirs();
                file.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        try {
            FileWriter fileWriter = new FileWriter(this.f50145a, false);
            for (c cVar : this.f50147c) {
                if (cVar != null) {
                    cVar.f(fileWriter);
                }
            }
            fileWriter.flush();
            fileWriter.close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f50156a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private HashMap<String, b> f50157b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private LinkedList<a> f50158c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f50159d;

        public c(String sectionName) {
            this.f50159d = null;
            this.f50157b = new HashMap<>();
            this.f50158c = new LinkedList<>();
            if (!TextUtils.isEmpty(sectionName) && !sectionName.equals(y.f50144d)) {
                this.f50158c.add(new a(1, "\n[" + sectionName + "]\n", null));
            }
            this.f50156a = sectionName;
        }

        public String c(String parameter) {
            b bVar;
            if (this.f50157b == null || TextUtils.isEmpty(parameter) || (bVar = this.f50157b.get(parameter)) == null) {
                return null;
            }
            return bVar.f50155b;
        }

        public Set<String> d() {
            return this.f50157b.keySet();
        }

        public void e(String parameter, String value) {
            b bVar = this.f50157b.get(parameter);
            if (bVar != null) {
                bVar.f50155b = value;
                return;
            }
            if (TextUtils.isEmpty(value)) {
                return;
            }
            b bVar2 = new b(parameter, value);
            this.f50158c.add(new a(2, parameter + SimpleComparison.EQUAL_TO_OPERATION + value + "\n", bVar2));
            this.f50157b.put(parameter, bVar2);
        }

        public void f(FileWriter fw) throws IOException {
            for (a aVar : this.f50158c) {
                if (aVar != null) {
                    aVar.a(fw);
                }
            }
        }

        public c(String sectionName, BufferedReader br) {
            int iIndexOf;
            int iIndexOf2;
            int iIndexOf3;
            this.f50159d = null;
            this.f50157b = new HashMap<>();
            this.f50158c = new LinkedList<>();
            if (!TextUtils.isEmpty(sectionName) && !sectionName.equals(y.f50144d)) {
                this.f50158c.add(new a(1, "[" + sectionName + "]\n", null));
            }
            this.f50156a = sectionName;
            if (br == null) {
                return;
            }
            while (true) {
                try {
                    String line = br.readLine();
                    if (line == null) {
                        return;
                    }
                    String strTrim = line.trim();
                    if (strTrim.length() >= 1 && !strTrim.substring(0, 1).equals("#") && !strTrim.substring(0, 1).equals(";") && (strTrim.length() <= 1 || !strTrim.substring(0, 2).equals("//"))) {
                        if (strTrim.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                            int iIndexOf4 = strTrim.indexOf(61);
                            if (iIndexOf4 < 1) {
                                return;
                            }
                            if (iIndexOf4 < strTrim.length() - 1) {
                                String strTrim2 = strTrim.substring(0, iIndexOf4).trim();
                                if (strTrim2.length() < 1) {
                                    return;
                                }
                                String strTrim3 = strTrim.substring(iIndexOf4 + 1, strTrim.length()).trim();
                                if (strTrim3.length() > 0) {
                                    b bVar = this.f50157b.get(strTrim2);
                                    if (bVar != null) {
                                        bVar.f50155b = strTrim3;
                                    } else {
                                        b bVar2 = new b(strTrim2, strTrim3);
                                        this.f50158c.add(new a(2, line + "\n", bVar2));
                                        this.f50157b.put(strTrim2, bVar2);
                                    }
                                }
                            } else {
                                continue;
                            }
                        } else {
                            if (strTrim.contains("[") && strTrim.length() >= 3 && strTrim.contains("]") && (iIndexOf2 = strTrim.indexOf(93)) > (iIndexOf3 = (iIndexOf = strTrim.indexOf(91)) + 1) && iIndexOf != -1 && iIndexOf2 != -1) {
                                this.f50159d = strTrim.substring(iIndexOf3, iIndexOf2).trim();
                                return;
                            }
                            return;
                        }
                    } else {
                        this.f50158c.add(new a(0, line + "\n", null));
                    }
                } catch (IOException unused) {
                    return;
                }
            }
        }
    }
}
