package com.aggmoread.sdk.z.a.q;

import android.text.TextUtils;
import com.aggmoread.sdk.z.a.d;
import com.aggmoread.sdk.z.a.g.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int f3798a = 1;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.q.a$a, reason: collision with other inner class name */
    static class C0088a implements com.aggmoread.sdk.z.a.p.a.g {
        C0088a() {
        }

        @Override // com.aggmoread.sdk.z.a.p.a.g
        public void a(int i10, byte[] bArr, f fVar) {
            d.a("APIRTAG", "statusCode %s, e %s", Integer.valueOf(i10), fVar);
        }
    }

    public static String a(String str, com.aggmoread.sdk.z.a.g.d dVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (dVar.f3428j == 2) {
            dVar.f3421c = -999;
            dVar.f3422d = -999;
        }
        String strA = a(a(a(str, "__WIDTH__", String.valueOf(dVar.f3423e)), "__HEIGHT__", String.valueOf(dVar.f3424f)), "__UP_X__", String.valueOf(dVar.f3421c));
        int i10 = dVar.f3421c;
        int i11 = dVar.f3423e;
        if (i10 > i11) {
            dVar.f3421c = i11 - 1;
        } else if (i10 < 0) {
            dVar.f3421c = 1;
        }
        String strA2 = a(strA, "__UP_Y__", String.valueOf(dVar.f3422d));
        int i12 = dVar.f3422d;
        int i13 = dVar.f3424f;
        if (i12 > i13) {
            dVar.f3422d = i13 - 1;
        } else if (i12 < 0) {
            dVar.f3422d = 1;
        }
        String strA3 = a(a(strA2, "__CLICK_ID__", String.valueOf(dVar.f3427i)), "__EVENT_TIME_END__", String.valueOf(dVar.f3426h));
        if (Math.abs(dVar.f3419a - dVar.f3421c) > f3798a) {
            dVar.f3419a = dVar.f3421c;
        }
        if (Math.abs(dVar.f3420b - dVar.f3422d) > f3798a) {
            dVar.f3420b = dVar.f3422d;
        }
        if (dVar.f3428j == 2) {
            dVar.f3419a = -999;
            dVar.f3420b = -999;
        }
        return a(a(a(a(a(a(a(a(strA3, "__DOWN_X__", String.valueOf(dVar.f3419a)), "__DOWN_Y__", String.valueOf(dVar.f3420b)), "__EVENT_TIME_START__", String.valueOf(dVar.f3425g)), "__SLD__", String.valueOf(dVar.f3428j)), "__ELEMENT__", String.valueOf(dVar.f3429k)), "__X_MAX_ACC__", String.valueOf(dVar.f3430l)), "__Y_MAX_ACC__", String.valueOf(dVar.f3431m)), "__Z_MAX_ACC__", String.valueOf(dVar.f3432n));
    }

    public static final String a(String str, String str2, String str3) {
        return str.contains(str2) ? str.replace(str2, str3) : str;
    }

    public static List<String> a(String str, List<String> list, com.aggmoread.sdk.z.a.g.d dVar) {
        d.d("APIRTAG", "startReport Dsp Api  (" + str + ")");
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                String strA = a(list.get(i10), dVar);
                if (!TextUtils.isEmpty(strA)) {
                    arrayList.add(strA);
                }
            }
            a(str, arrayList);
        }
        return arrayList;
    }

    public static void a(String str, List<String> list) {
        d.d("APIRTAG", "startReport2 Dsp Api  (" + str + ")");
        if (list == null || list.size() == 0) {
            return;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            String str2 = list.get(i10);
            if (!TextUtils.isEmpty(str2)) {
                com.aggmoread.sdk.z.a.p.a.a(str2, null, new C0088a());
            }
        }
    }
}
