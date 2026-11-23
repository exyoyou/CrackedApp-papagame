package com.googlecode.mp4parser.util;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static Pattern f33807a = Pattern.compile("(....|\\.\\.)(\\[(.*)\\])?");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f33808b = false;

    private m() {
    }

    public static String a(com.coremedia.iso.boxes.d dVar) {
        return b(dVar, "");
    }

    private static String b(com.coremedia.iso.boxes.d dVar, String str) {
        com.coremedia.iso.boxes.j parent = dVar.getParent();
        int i10 = 0;
        for (com.coremedia.iso.boxes.d dVar2 : parent.l()) {
            if (dVar2.getType().equals(dVar.getType())) {
                if (dVar2 == dVar) {
                    break;
                }
                i10++;
            }
        }
        String str2 = String.valueOf(String.format("/%s[%d]", dVar.getType(), Integer.valueOf(i10))) + str;
        return parent instanceof com.coremedia.iso.boxes.d ? b((com.coremedia.iso.boxes.d) parent, str2) : str2;
    }

    public static <T extends com.coremedia.iso.boxes.d> T c(com.coremedia.iso.boxes.d dVar, String str) {
        List listG = g(dVar, str, true);
        if (listG.isEmpty()) {
            return null;
        }
        return (T) listG.get(0);
    }

    public static <T extends com.coremedia.iso.boxes.d> T d(com.coremedia.iso.boxes.j jVar, String str) {
        List listI = i(jVar, str, true);
        if (listI.isEmpty()) {
            return null;
        }
        return (T) listI.get(0);
    }

    public static <T extends com.coremedia.iso.boxes.d> T e(com.googlecode.mp4parser.b bVar, String str) {
        List listJ = j(bVar, str, true);
        if (listJ.isEmpty()) {
            return null;
        }
        return (T) listJ.get(0);
    }

    public static <T extends com.coremedia.iso.boxes.d> List<T> f(com.coremedia.iso.boxes.d dVar, String str) {
        return g(dVar, str, false);
    }

    private static <T extends com.coremedia.iso.boxes.d> List<T> g(com.coremedia.iso.boxes.d dVar, String str, boolean z10) {
        return k(dVar, str, z10);
    }

    public static <T extends com.coremedia.iso.boxes.d> List<T> h(com.coremedia.iso.boxes.j jVar, String str) {
        return i(jVar, str, false);
    }

    private static <T extends com.coremedia.iso.boxes.d> List<T> i(com.coremedia.iso.boxes.j jVar, String str, boolean z10) {
        return k(jVar, str, z10);
    }

    private static <T extends com.coremedia.iso.boxes.d> List<T> j(com.googlecode.mp4parser.b bVar, String str, boolean z10) {
        return k(bVar, str, z10);
    }

    private static <T extends com.coremedia.iso.boxes.d> List<T> k(Object obj, String str, boolean z10) {
        String strSubstring;
        if (str.startsWith(net.lingala.zip4j.util.e.F0)) {
            String strSubstring2 = str.substring(1);
            while (obj instanceof com.coremedia.iso.boxes.d) {
                obj = ((com.coremedia.iso.boxes.d) obj).getParent();
            }
            str = strSubstring2;
        }
        if (str.length() == 0) {
            if (obj instanceof com.coremedia.iso.boxes.d) {
                return Collections.singletonList((com.coremedia.iso.boxes.d) obj);
            }
            throw new RuntimeException("Result of path expression seems to be the root container. This is not allowed!");
        }
        int i10 = 0;
        if (str.contains(net.lingala.zip4j.util.e.F0)) {
            strSubstring = str.substring(str.indexOf(47) + 1);
            str = str.substring(0, str.indexOf(47));
        } else {
            strSubstring = "";
        }
        Matcher matcher = f33807a.matcher(str);
        if (!matcher.matches()) {
            throw new RuntimeException(String.valueOf(str) + " is invalid path.");
        }
        String strGroup = matcher.group(1);
        if ("..".equals(strGroup)) {
            return obj instanceof com.coremedia.iso.boxes.d ? i(((com.coremedia.iso.boxes.d) obj).getParent(), strSubstring, z10) : Collections.emptyList();
        }
        if (!(obj instanceof com.coremedia.iso.boxes.j)) {
            return Collections.emptyList();
        }
        int i11 = matcher.group(2) != null ? Integer.parseInt(matcher.group(3)) : -1;
        LinkedList linkedList = new LinkedList();
        for (com.coremedia.iso.boxes.d dVar : ((com.coremedia.iso.boxes.j) obj).l()) {
            if (dVar.getType().matches(strGroup)) {
                if (i11 == -1 || i11 == i10) {
                    linkedList.addAll(g(dVar, strSubstring, z10));
                }
                i10++;
            }
            if (z10 || i11 >= 0) {
                if (!linkedList.isEmpty()) {
                    return linkedList;
                }
            }
        }
        return linkedList;
    }

    public static boolean l(com.coremedia.iso.boxes.d dVar, String str) {
        return f(dVar, str).contains(dVar);
    }
}
