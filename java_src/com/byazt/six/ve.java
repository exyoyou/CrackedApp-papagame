package com.byazt.six;

import android.text.TextUtils;
import android.util.Pair;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.nr.m;
import com.byazt.nr.zb;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_DRAWPATH, 54})
public abstract class ve {
    public abstract File c();

    public boolean c(Map<String, com.byazt.ku.c> map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        Iterator<String> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            com.byazt.ku.c cVar = map.get(it2.next());
            if (cVar != null && !c(cVar.getResources())) {
                return false;
            }
        }
        return true;
    }

    public List<com.byazt.ku.c.C0364c> tt(com.byazt.ku.c cVar, com.byazt.ku.c cVar2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (cVar2 == null || cVar2.getResources().isEmpty()) {
            arrayList2.addAll(cVar.getResources());
        } else if (cVar.getResources().isEmpty()) {
            arrayList.addAll(cVar2.getResources());
        } else {
            for (com.byazt.ku.c.C0364c c0364c : cVar.getResources()) {
                if (!cVar2.getResources().contains(c0364c) && c0364c != null && c0364c.c() != null && c0364c.tt() != null) {
                    arrayList2.add(c0364c);
                }
            }
            for (com.byazt.ku.c.C0364c c0364c2 : cVar2.getResources()) {
                if (!cVar.getResources().contains(c0364c2)) {
                    arrayList.add(c0364c2);
                }
            }
        }
        if (c(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public void ve(List<com.byazt.ku.c.C0364c> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<com.byazt.ku.c.C0364c> it2 = list.iterator();
        while (it2.hasNext()) {
            File file = new File(c(), com.byazt.nr.a.tt(it2.next().c()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public boolean c(List<com.byazt.ku.c.C0364c> list) {
        if (list == null || list.size() <= 0 || c() == null) {
            return false;
        }
        for (com.byazt.ku.c.C0364c c0364c : list) {
            String strTt = com.byazt.nr.a.tt(c0364c.c());
            if (TextUtils.isEmpty(strTt)) {
                return false;
            }
            File file = new File(c(), strTt);
            String strC = com.byazt.nr.a.c(file);
            if (!file.exists() || !file.isFile() || c0364c.tt() == null || !c0364c.tt().equals(strC)) {
                return false;
            }
        }
        return true;
    }

    public static boolean ve(com.byazt.ku.c cVar, com.byazt.ku.c cVar2) {
        if (cVar != null) {
            try {
                if (!TextUtils.isEmpty(cVar.ve())) {
                    if (cVar2 == null) {
                        return false;
                    }
                    if (c(cVar.ve(), cVar2.ve())) {
                        return true;
                    }
                    Map<String, com.byazt.ku.c> mapC = cVar.c();
                    Map<String, com.byazt.ku.c> mapC2 = cVar2.c();
                    if (mapC.isEmpty()) {
                        return !mapC2.isEmpty();
                    }
                    if (mapC2.isEmpty()) {
                        return false;
                    }
                    return c(mapC, mapC2);
                }
            } catch (Throwable th) {
                th.getMessage();
                return false;
            }
        }
        return true;
    }

    public boolean c(com.byazt.ku.c.tt ttVar) {
        if (ttVar == null || c() == null) {
            return false;
        }
        List<Pair<String, String>> listTt = ttVar.tt();
        if (listTt == null || listTt.size() <= 0) {
            return true;
        }
        Iterator<Pair<String, String>> it2 = listTt.iterator();
        while (it2.hasNext()) {
            File file = new File(c(), (String) it2.next().first);
            if (!file.exists() || !file.isFile()) {
                return false;
            }
        }
        return true;
    }

    public void tt(List<com.byazt.ku.c.C0364c> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<com.byazt.ku.c.C0364c> it2 = list.iterator();
        while (it2.hasNext()) {
            File file = new File(c(), com.byazt.nr.a.tt(it2.next().c()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public List<com.byazt.ku.c.C0364c> c(com.byazt.ku.c cVar, com.byazt.ku.c cVar2) {
        Map<String, com.byazt.ku.c> mapC = cVar.c();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (mapC.size() == 0) {
            if (cVar2 != null && cVar2.c().size() != 0) {
                Map<String, com.byazt.ku.c> mapC2 = cVar2.c();
                Iterator<String> it2 = mapC2.keySet().iterator();
                while (it2.hasNext()) {
                    com.byazt.ku.c cVar3 = mapC2.get(it2.next());
                    if (cVar3 != null) {
                        arrayList.addAll(cVar3.getResources());
                    }
                }
            }
        } else if (cVar2 != null && cVar2.c().size() != 0) {
            Map<String, com.byazt.ku.c> mapC3 = cVar2.c();
            for (String str : mapC.keySet()) {
                com.byazt.ku.c cVar4 = mapC.get(str);
                com.byazt.ku.c cVar5 = mapC3.get(str);
                if (cVar5 == null && cVar4 != null) {
                    arrayList2.addAll(cVar4.getResources());
                } else if (cVar4 == null && cVar5 != null) {
                    arrayList.addAll(cVar5.getResources());
                } else if (cVar4 != null) {
                    for (com.byazt.ku.c.C0364c c0364c : cVar4.getResources()) {
                        if (c0364c != null && !cVar5.getResources().contains(c0364c) && c0364c.tt() != null && c0364c.c() != null) {
                            arrayList2.add(c0364c);
                        }
                    }
                    for (com.byazt.ku.c.C0364c c0364c2 : cVar5.getResources()) {
                        if (c0364c2 != null && !cVar4.getResources().contains(c0364c2)) {
                            arrayList.add(c0364c2);
                        }
                    }
                }
            }
        } else if (mapC.size() != 0) {
            Iterator<String> it3 = mapC.keySet().iterator();
            while (it3.hasNext()) {
                com.byazt.ku.c cVar6 = mapC.get(it3.next());
                if (cVar6 != null) {
                    arrayList2.addAll(cVar6.getResources());
                }
            }
        }
        if (c(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public static void tt(File file, com.byazt.ku.c cVar, String str) {
        if (cVar == null || file == null) {
            return;
        }
        try {
            new File(file, str).delete();
        } catch (Throwable unused) {
        }
        if (cVar.getResources() != null) {
            Iterator<com.byazt.ku.c.C0364c> it2 = cVar.getResources().iterator();
            while (it2.hasNext()) {
                try {
                    new File(file, com.byazt.nr.a.tt(it2.next().c())).delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    private boolean c(List<com.byazt.ku.c.C0364c> list, List<com.byazt.ku.c.C0364c> list2) {
        for (com.byazt.ku.c.C0364c c0364c : list) {
            String strC = c0364c.c();
            String strTt = com.byazt.nr.a.tt(strC);
            File file = new File(c(), strTt);
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
            com.byazt.va.tt ttVarUj = com.byazt.mf.c.c().ve().uj();
            ttVarUj.c(strC);
            ttVarUj.c(c().getAbsolutePath(), strTt);
            com.byazt.hm.tt ttVarC = ttVarUj.c();
            list2.add(c0364c);
            if (ttVarC == null || !ttVarC.i() || ttVarC.x() == null || !ttVarC.x().exists()) {
                ve(list2);
                return false;
            }
        }
        return true;
    }

    public boolean c(String str) {
        String strTt = com.byazt.nr.a.tt(str);
        File file = new File(c().getAbsoluteFile(), strTt + ".zip");
        com.byazt.va.tt ttVarUj = com.byazt.mf.c.c().ve().uj();
        ttVarUj.c(str);
        ttVarUj.c(file.getParent(), file.getName());
        com.byazt.hm.tt ttVarC = ttVarUj.c();
        if (ttVarC.i() && ttVarC.x() != null && ttVarC.x().exists()) {
            File fileX = ttVarC.x();
            try {
                zb.c(fileX.getAbsolutePath(), file.getParent());
                if (!fileX.exists()) {
                    return true;
                }
                fileX.delete();
                return true;
            } catch (Exception e10) {
                m.c(e10);
            }
        }
        return false;
    }

    public void c(int i10) {
        if (com.byazt.mf.c.c().uj() != null) {
            com.byazt.mf.c.c().uj().c(i10);
        }
    }

    public static void c(File file, com.byazt.ku.c cVar, String str) {
        if (cVar == null) {
            return;
        }
        String strX = cVar.x();
        if (TextUtils.isEmpty(strX)) {
            return;
        }
        File file2 = new File(file, str);
        File file3 = new File(file2 + ".tmp");
        if (file3.exists()) {
            file3.delete();
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
            try {
                fileOutputStream2.write(strX.getBytes("utf-8"));
                if (file2.exists()) {
                    file2.delete();
                }
                file3.renameTo(file2);
                try {
                    fileOutputStream2.close();
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                try {
                    m.ve("PlayComponentEngineCacheManager", "version save error3", th);
                } finally {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static boolean c(Map<String, com.byazt.ku.c> map, Map<String, com.byazt.ku.c> map2) {
        if (map.size() != map2.size()) {
            return true;
        }
        for (String str : map2.keySet()) {
            com.byazt.ku.c cVar = map.get(str);
            if (cVar == null) {
                return true;
            }
            com.byazt.ku.c cVar2 = map2.get(str);
            if (cVar2 == null) {
                return false;
            }
            if (c(cVar.ve(), cVar2.ve())) {
                return true;
            }
        }
        return false;
    }

    private static boolean c(String str, String str2) {
        String[] strArrSplit = str2.split("\\.");
        String[] strArrSplit2 = str.split("\\.");
        int iMin = Math.min(strArrSplit.length, strArrSplit2.length);
        for (int i10 = 0; i10 < iMin; i10++) {
            int length = strArrSplit[i10].length() - strArrSplit2[i10].length();
            if (length == 0) {
                int iCompareTo = strArrSplit[i10].compareTo(strArrSplit2[i10]);
                if (iCompareTo > 0) {
                    return true;
                }
                if (iCompareTo < 0) {
                    return false;
                }
                if (i10 == iMin - 1) {
                    return strArrSplit.length > strArrSplit2.length;
                }
            } else if (length > 0) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public static boolean c(com.byazt.ku.c cVar, String str) {
        if (cVar == null) {
            return true;
        }
        try {
            if (TextUtils.isEmpty(cVar.ve())) {
                return true;
            }
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return c(cVar.ve(), str);
        } catch (Throwable unused) {
            return false;
        }
    }
}
