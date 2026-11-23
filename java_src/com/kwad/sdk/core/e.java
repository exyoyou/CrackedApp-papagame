package com.kwad.sdk.core;

import android.util.Pair;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import com.kwad.sdk.service.ServiceProvider;
import io.netty.util.internal.StringUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    private static final b aKV = new b(100);
    private static final a aKW = new a(10, 0);
    private static List<c> aKX = new ArrayList(50);
    private static final List<List<c>> aKY = new ArrayList();
    private static final List<Map<String, Double>> aKZ = new ArrayList();
    private static c aLa;

    public static class a extends b {
        /* synthetic */ a(int i10, byte b10) {
            this(10);
        }

        @Override // com.kwad.sdk.core.e.b
        public final char IN() {
            return StringUtil.COMMA;
        }

        public final List<String> IO() {
            return new ArrayList(this.aLc);
        }

        @Override // com.kwad.sdk.core.e.b
        public final boolean n(Object obj) {
            if (!(obj instanceof String)) {
                return false;
            }
            if (this.aLc.size() >= this.aLb) {
                this.aLc.poll();
            }
            return this.aLc.offer((String) obj);
        }

        private a(int i10) {
            super(i10);
        }
    }

    public static class b {
        public final int aLb;
        public final Queue<String> aLc = new LinkedList();

        public b(int i10) {
            this.aLb = i10;
        }

        public char IN() {
            return '|';
        }

        public final void clear() {
            this.aLc.clear();
        }

        public boolean n(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            if (this.aLc.size() >= this.aLb) {
                this.aLc.poll();
            }
            HashMap map = new HashMap();
            c cVar = (c) obj;
            double dIP = cVar.IP();
            double dIQ = cVar.IQ();
            map.put("x", Double.valueOf(dIP));
            map.put("y", Double.valueOf(dIQ));
            e.aKZ.add(map);
            return this.aLc.offer(dIP + "_" + dIQ);
        }

        @NonNull
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it2 = this.aLc.iterator();
            while (it2.hasNext()) {
                sb2.append(it2.next());
                sb2.append(IN());
            }
            if (sb2.length() > 0) {
                sb2.deleteCharAt(sb2.length() - 1);
            }
            return sb2.toString();
        }
    }

    public static class c {
        private int action;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private double f75317x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private double f75318y;

        public c(MotionEvent motionEvent) {
            this.f75317x = motionEvent.getX();
            this.f75318y = motionEvent.getY();
            this.action = motionEvent.getAction();
        }

        private int getAction() {
            return this.action;
        }

        public final double IP() {
            return this.f75317x;
        }

        public final double IQ() {
            return this.f75318y;
        }

        public final boolean a(c cVar) {
            return this.f75317x == cVar.IP() && this.f75318y == cVar.IQ() && this.action == cVar.getAction();
        }
    }

    private static double E(List<Map<String, Double>> list) {
        double d10 = 0.0d;
        try {
            ArrayList arrayList = new ArrayList(list.size());
            ArrayList arrayList2 = new ArrayList(list.size());
            ArrayList arrayList3 = new ArrayList(list.size());
            ArrayList arrayList4 = new ArrayList(list.size());
            a(list, arrayList, arrayList2, arrayList3, arrayList4);
            int i10 = 1;
            for (int i11 = 1; i10 < list.size() - i11; i11 = 1) {
                int i12 = i10;
                double dAbs = Math.abs((((Double) arrayList.get(i10)).doubleValue() * ((Double) arrayList4.get(i10)).doubleValue()) - (((Double) arrayList2.get(i10)).doubleValue() * ((Double) arrayList3.get(i10)).doubleValue())) / Math.pow(Math.pow(((Double) arrayList.get(i10)).doubleValue(), 2.0d) + Math.pow(((Double) arrayList2.get(i10)).doubleValue(), 2.0d), 1.5d);
                if (dAbs > d10) {
                    d10 = dAbs;
                }
                i10 = i12 + 1;
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
        return d10;
    }

    public static Pair<List<String>, Double> IJ() {
        Iterator<List<c>> it2 = aKY.iterator();
        double d10 = 0.0d;
        while (it2.hasNext()) {
            Iterator<c> it3 = it2.next().iterator();
            while (it3.hasNext()) {
                aKV.n(it3.next());
            }
            List<Map<String, Double>> list = aKZ;
            double dE = E(list);
            if (dE > d10) {
                d10 = dE;
            }
            list.clear();
            a aVar = aKW;
            b bVar = aKV;
            aVar.n(bVar.toString());
            bVar.clear();
        }
        return new Pair<>(IK(), Double.valueOf(d10));
    }

    private static List<String> IK() {
        List<String> listIO = aKW.IO();
        IM();
        IL();
        return listIO;
    }

    private static void IL() {
        aKZ.clear();
        aKY.clear();
        aKX.clear();
    }

    private static void IM() {
        aKW.clear();
        aKV.clear();
    }

    private static void a(MotionEvent motionEvent, boolean z10) {
        c cVar = new c(motionEvent);
        c cVar2 = aLa;
        if (cVar2 == null || !cVar2.a(cVar)) {
            aKX.add(cVar);
            aLa = cVar;
            if (z10) {
                if (aKX.size() > 3 && aKX.size() < 100) {
                    aKY.add(aKX);
                }
                aKX = new ArrayList(50);
                aLa = null;
            }
        }
    }

    public static void j(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3 && action != 4) {
                        return;
                    }
                }
            }
            a(motionEvent, true);
            return;
        }
        a(motionEvent, false);
    }

    private static void a(List<Map<String, Double>> list, List<Double> list2, List<Double> list3, List<Double> list4, List<Double> list5) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list2.add(Double.valueOf(0.0d));
            list3.add(Double.valueOf(0.0d));
            list4.add(Double.valueOf(0.0d));
            list5.add(Double.valueOf(0.0d));
        }
        int i11 = 1;
        while (i11 < size - 1) {
            int i12 = i11 + 1;
            double dDoubleValue = list.get(i12).get("x").doubleValue();
            int i13 = i11 - 1;
            double dDoubleValue2 = list.get(i13).get("x").doubleValue();
            double dDoubleValue3 = list.get(i12).get("y").doubleValue();
            double dDoubleValue4 = list.get(i13).get("y").doubleValue();
            double dDoubleValue5 = list.get(i11).get("x").doubleValue();
            double dDoubleValue6 = list.get(i11).get("y").doubleValue();
            list2.set(i11, Double.valueOf((dDoubleValue - dDoubleValue2) / 2.0d));
            list3.set(i11, Double.valueOf((dDoubleValue3 - dDoubleValue4) / 2.0d));
            list4.set(i11, Double.valueOf((dDoubleValue - (dDoubleValue5 * 2.0d)) + dDoubleValue2));
            list5.set(i11, Double.valueOf((dDoubleValue3 - (dDoubleValue6 * 2.0d)) + dDoubleValue4));
            i11 = i12;
        }
    }
}
