package cn.fly.tools.b;

import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.FlyProduct;
import cn.fly.tools.FlyLog;
import cn.fly.tools.network.NetCommunicator;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.xcrash.XCrash;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class m {
    /* JADX INFO: Access modifiers changed from: private */
    public static Object b(HashMap<String, Object> map, String str) throws Throwable {
        if (!cn.fly.commons.c.d()) {
            return null;
        }
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 10000;
        networkTimeOut.connectionTimeout = 10000;
        return new NetCommunicator(1024, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07", "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd", networkTimeOut).requestSynchronized(map, str, false);
    }

    private static boolean c(char c10) {
        return (c10 >= 'A' && c10 <= 'Z') || (c10 >= 'a' && c10 <= 'z');
    }

    private static boolean d(char c10) {
        return c(c10) || (c10 >= '0' && c10 <= '9') || c10 == '_';
    }

    public static synchronized Set<String> a(int i10) {
        Set<String> setB;
        try {
            if (cn.fly.commons.e.b()) {
                try {
                    setB = b(i10);
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                    setB = null;
                }
            } else {
                setB = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return setB;
    }

    private static boolean c(Object[] objArr) {
        return objArr.length >= 3 && (objArr[0] instanceof Set) && (objArr[1] instanceof StringBuilder);
    }

    private static boolean c(String str) {
        if (str == null || str.length() < 3 || !c(str.charAt(0))) {
            return false;
        }
        boolean z10 = false;
        boolean z11 = true;
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '.') {
                if (z11) {
                    return false;
                }
                z10 = true;
                z11 = true;
            } else if (z11) {
                if (!c(cCharAt)) {
                    return false;
                }
                z11 = false;
            } else if (!d(cCharAt)) {
                return false;
            }
        }
        return z10 && !z11;
    }

    public static List<String> a() {
        final List<String>[] listArr = {null};
        try {
            DH.requester(FlySDK.getContext()).getDetailNetworkTypeForStatic().request(new DH.DHResponder() { // from class: cn.fly.tools.b.m.1
                @Override // cn.fly.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                    List list;
                    try {
                        HashMap map = new HashMap();
                        String strA = cn.fly.commons.q.a();
                        String strA2 = cn.fly.commons.f.a((FlyProduct) null);
                        map.put(cn.fly.commons.a.m.a("006ekk5fiRg+fd"), strA);
                        map.put(cn.fly.commons.a.m.a("006ekkk?fifk"), DH.SyncMtd.getPackageName());
                        map.put(cn.fly.commons.a.m.a("006ekkPee(gEek"), Integer.valueOf(DH.SyncMtd.getAppVersion()));
                        map.put(cn.fly.commons.a.m.a("0043edehejed"), strA2);
                        map.put(cn.fly.commons.a.m.a("004khej"), Integer.valueOf(DH.SyncMtd.getPlatformCode()));
                        map.put(cn.fly.commons.a.m.a("011fgjUghelekfiFj?fd$kg"), dHResponse.getDetailNetworkTypeForStatic());
                        map.put(cn.fly.commons.a.m.a("009he$gjKj_hlNkhZge+j"), 0);
                        HashMap map2 = (HashMap) m.b(map, cn.fly.commons.j.a().a("gcfg") + "/v2/vpl");
                        if (map2 == null || map2.size() == 0 || (list = (List) map2.get(cn.fly.commons.a.m.a("004k3fifkgj"))) == null || list.isEmpty()) {
                            return;
                        }
                        FlyLog.getInstance().d(list.toString(), new Object[0]);
                        listArr[0] = list;
                    } catch (Throwable th) {
                        FlyLog.getInstance().d(th);
                    }
                }
            });
        } catch (Throwable unused) {
        }
        return listArr[0];
    }

    public static Set<String> b(int i10) throws Throwable {
        String str;
        if (i10 != 6 && i10 != 7) {
            return Collections.emptySet();
        }
        String[] strArr = null;
        if (i10 != 6) {
            List<String> listA = a();
            str = "7";
            if (listA != null && !listA.isEmpty()) {
                strArr = (String[]) listA.toArray(new String[0]);
            }
        } else {
            str = "";
        }
        String p10 = XCrash.getP(str, strArr);
        if (p10 != null && !p10.trim().isEmpty()) {
            return a(i10, p10);
        }
        return Collections.emptySet();
    }

    private static Set<String> a(int i10, String str) {
        if (i10 == 6) {
            return a(str);
        }
        if (i10 != 7) {
            return Collections.emptySet();
        }
        return b(str);
    }

    public static Set<String> a(String str) {
        if (str != null && !str.isEmpty()) {
            Object objB = b();
            a(objB, str);
            return b(objB);
        }
        return Collections.emptySet();
    }

    private static Set<String> b(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String[] strArrSplit = str.trim().split(",");
            HashSet hashSet = new HashSet(strArrSplit.length);
            Collections.addAll(hashSet, strArrSplit);
            return hashSet;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void a(Object obj, String str) {
        if (!(obj instanceof Object[]) || str == null || str.length() == 0) {
            return;
        }
        Object[] objArr = (Object[]) obj;
        if (b(objArr)) {
            Set set = (Set) objArr[0];
            StringBuilder sb2 = (StringBuilder) objArr[1];
            sb2.append(str);
            int i10 = 0;
            for (int i11 = 0; i11 < sb2.length(); i11++) {
                if (sb2.charAt(i11) == '\n') {
                    a((Set<String>) set, sb2.substring(i10, i11));
                    i10 = i11 + 1;
                }
            }
            if (i10 > 0) {
                sb2.delete(0, i10);
            }
        }
    }

    public static Object b() {
        return new Object[]{new LinkedHashSet(), new StringBuilder(), Boolean.FALSE};
    }

    private static Set<String> b(Object obj) {
        if (!(obj instanceof Object[])) {
            return Collections.emptySet();
        }
        Object[] objArr = (Object[]) obj;
        if (!c(objArr)) {
            return Collections.emptySet();
        }
        a(objArr);
        return (Set) objArr[0];
    }

    public static String a(Object obj) {
        if (!(obj instanceof Object[])) {
            return "";
        }
        Object[] objArr = (Object[]) obj;
        if (!c(objArr)) {
            return "";
        }
        a(objArr);
        Set<String> set = (Set) objArr[0];
        if (set.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(set.size() * 32);
        for (String str : set) {
            sb2.append(cn.fly.commons.a.m.a("012ked:fi$eIfkBgfeWegXg6jj"));
            sb2.append(str);
            sb2.append('\n');
        }
        return sb2.toString();
    }

    private static boolean b(Object[] objArr) {
        return c(objArr) && !Boolean.TRUE.equals(objArr[2]);
    }

    private static boolean b(char c10) {
        return d(c10) || c10 == '.';
    }

    private static void a(Object[] objArr) {
        if (b(objArr)) {
            StringBuilder sb2 = (StringBuilder) objArr[1];
            if (sb2.length() > 0) {
                a((Set<String>) objArr[0], sb2.toString());
                sb2.setLength(0);
            }
            objArr[2] = Boolean.TRUE;
        }
    }

    private static void a(Set<String> set, String str) {
        int iIndexOf;
        if (str == null) {
            return;
        }
        String strTrim = str.trim();
        if (!strTrim.isEmpty() && (iIndexOf = strTrim.toLowerCase(Locale.US).indexOf(cn.fly.commons.a.m.a("012ked'fiUeXfkSgfe$eg]g*jj"))) >= 0) {
            int length = iIndexOf + cn.fly.commons.a.m.a("012ked0fi)eKfkUgfeKegYg5jj").length();
            while (length < strTrim.length() && a(strTrim.charAt(length))) {
                length++;
            }
            int iA = a(strTrim, length);
            if (iA > length) {
                String strSubstring = strTrim.substring(length, iA);
                if (c(strSubstring)) {
                    set.add(strSubstring);
                }
            }
        }
    }

    private static boolean a(char c10) {
        return Character.isWhitespace(c10) || c10 == '\"' || c10 == '\'';
    }

    private static int a(String str, int i10) {
        while (i10 < str.length() && b(str.charAt(i10))) {
            i10++;
        }
        return i10;
    }
}
