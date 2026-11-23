package com.byazt.lg;

import android.text.TextUtils;
import com.byazt.ll.tt;
import com.byazt.ng.a;
import com.byazt.vx.qy;
import com.byazt.yl.ve;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1488, 20})
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public tt f16641c;

    public static String c(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            return str2;
        }
        if (!TextUtils.equals(str, MediationConstant.ADN_GDT) && !TextUtils.equals(str, MediationConstant.ADN_PANGLE)) {
            return str2;
        }
        return str2 + "_" + str3;
    }

    public static String c(String str, String str2) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        if (TextUtils.equals(str, MediationConstant.ADN_PANGLE)) {
            String[] strArrSplit2 = str2.split("message:");
            if (strArrSplit2 != null && strArrSplit2.length > 0) {
                String str3 = strArrSplit2[0];
                if (!TextUtils.isEmpty(str3) && (strArrSplit = str3.trim().split(":")) != null && strArrSplit.length >= 2) {
                    String str4 = strArrSplit[1];
                    if (!TextUtils.isEmpty(str4)) {
                        return str4.trim();
                    }
                }
            }
            return "";
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb2 = new StringBuilder();
        char[] charArray = str2.toCharArray();
        for (int i10 = 0; i10 < charArray.length; i10++) {
            char c10 = charArray[i10];
            if (c10 >= '0' && c10 <= '9') {
                sb2.append(c10);
                if (i10 == charArray.length - 1) {
                    arrayList.add(sb2.toString());
                    break;
                }
            } else if (sb2.length() > 0) {
                arrayList.add(sb2.toString());
                sb2.delete(0, sb2.length());
            }
            if (arrayList.size() > 0) {
                return (String) arrayList.get(0);
            }
        }
        StringBuilder sb3 = new StringBuilder();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            sb3.append((String) it2.next());
            sb3.append("_");
        }
        if (sb3.length() > 0) {
            sb3.delete(sb3.length() - 1, sb3.length());
        }
        return sb3.toString();
    }

    public static boolean c() {
        boolean zVe = qy.ve(com.byazt.bp.tt.getContext());
        boolean zTt = qy.tt(com.byazt.bp.tt.getContext());
        if (com.byazt.bp.tt.tt().m()) {
            return zVe || zTt;
        }
        return false;
    }

    public final void c(ve veVar, String str, Map<String, Object> map) {
        if (veVar == null || veVar.getAdType() != 5) {
            return;
        }
        a.c(veVar, this.f16641c, str);
    }
}
