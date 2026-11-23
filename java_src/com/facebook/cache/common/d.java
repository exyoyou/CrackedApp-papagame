package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class d {
    public static String a(final c key) {
        try {
            return key instanceof g ? c(((g) key).d().get(0)) : c(key);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static List<String> b(final c key) {
        ArrayList arrayList;
        try {
            if (key instanceof g) {
                List<c> listD = ((g) key).d();
                arrayList = new ArrayList(listD.size());
                for (int i10 = 0; i10 < listD.size(); i10++) {
                    arrayList.add(c(listD.get(i10)));
                }
            } else {
                arrayList = new ArrayList(1);
                arrayList.add(key.b() ? key.a() : c(key));
            }
            return arrayList;
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static String c(final c key) throws UnsupportedEncodingException {
        return com.facebook.common.util.d.i(key.a().getBytes("UTF-8"));
    }
}
