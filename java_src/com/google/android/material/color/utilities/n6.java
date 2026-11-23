package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class n6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final double f30311a = 48.0d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final double f30312b = 0.7d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final double f30313c = 0.3d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final double f30314d = 0.1d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final double f30315e = 5.0d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final double f30316f = 0.01d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f30317g = -12417548;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f30318h = 4;

    private static class a implements Comparator<b> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return Double.compare(bVar2.f30320b, bVar.f30320b);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l f30319a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f30320b;

        public b(l lVar, double d10) {
            this.f30319a = lVar;
            this.f30320b = d10;
        }
    }

    private n6() {
    }

    public static List<Integer> a(Map<Integer, Integer> map) {
        return d(map, 4, f30317g, true);
    }

    public static List<Integer> b(Map<Integer, Integer> map, int i10) {
        return d(map, i10, f30317g, true);
    }

    public static List<Integer> c(Map<Integer, Integer> map, int i10, int i11) {
        return d(map, i10, i11, true);
    }

    public static List<Integer> d(Map<Integer, Integer> map, int i10, int i11, boolean z10) {
        boolean z11;
        ArrayList<l> arrayList = new ArrayList();
        int[] iArr = new int[MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL];
        double d10 = 0.0d;
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            l lVarB = l.b(entry.getKey().intValue());
            arrayList.add(lVarB);
            int iFloor = (int) Math.floor(lVarB.d());
            int iIntValue = entry.getValue().intValue();
            iArr[iFloor] = iArr[iFloor] + iIntValue;
            d10 += (double) iIntValue;
        }
        double[] dArr = new double[MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL];
        for (int i12 = 0; i12 < 360; i12++) {
            double d11 = ((double) iArr[i12]) / d10;
            for (int i13 = i12 - 14; i13 < i12 + 16; i13++) {
                int iH = v5.h(i13);
                dArr[iH] = dArr[iH] + d11;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (l lVar : arrayList) {
            double d12 = dArr[v5.h((int) Math.round(lVar.d()))];
            if (!z10 || (lVar.c() >= f30315e && d12 > f30316f)) {
                arrayList2.add(new b(lVar, (d12 * 100.0d * f30312b) + ((lVar.c() - f30311a) * (lVar.c() < f30311a ? f30314d : f30313c))));
            }
        }
        Collections.sort(arrayList2, new a());
        ArrayList arrayList3 = new ArrayList();
        for (int i14 = 90; i14 >= 15; i14--) {
            arrayList3.clear();
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                l lVar2 = ((b) it2.next()).f30319a;
                Iterator it3 = arrayList3.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z11 = false;
                        break;
                    }
                    if (v5.c(lVar2.d(), ((l) it3.next()).d()) < i14) {
                        z11 = true;
                        break;
                    }
                }
                if (!z11) {
                    arrayList3.add(lVar2);
                }
                if (arrayList3.size() >= i10) {
                    break;
                }
            }
            if (arrayList3.size() >= i10) {
                break;
            }
        }
        ArrayList arrayList4 = new ArrayList();
        if (arrayList3.isEmpty()) {
            arrayList4.add(Integer.valueOf(i11));
            return arrayList4;
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            arrayList4.add(Integer.valueOf(((l) it4.next()).k()));
        }
        return arrayList4;
    }
}
