package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.boxes.r0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class c extends com.googlecode.mp4parser.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f24789o = "moof";

    public c() {
        super(f24789o);
    }

    public long[] I() {
        List listK = k(k.class, false);
        long[] jArr = new long[listK.size()];
        for (int i10 = 0; i10 < listK.size(); i10++) {
            jArr[i10] = ((k) listK.get(i10)).v().A();
        }
        return jArr;
    }

    public List<n> J() {
        return k(n.class, true);
    }

    public com.googlecode.mp4parser.e v() {
        return this.f33749c;
    }

    public List<Long> x(r0 r0Var) {
        ArrayList arrayList = new ArrayList();
        Iterator<r0.a> it2 = r0Var.v().iterator();
        long j10 = 1;
        while (it2.hasNext()) {
            if (it2.next().c() == 2) {
                arrayList.add(Long.valueOf(j10));
            }
            j10++;
        }
        return arrayList;
    }

    public int y() {
        return k(k.class, false).size();
    }

    public List<l> z() {
        return k(l.class, true);
    }
}
