package com.xinzhu.overmind.server.pm;

import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.ArrayMap;
import android.util.MutableInt;
import android.util.PrintWriterPrinter;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.xinzhu.overmind.server.pm.MindPackage.IntentInfo;
import com.xinzhu.overmind.utils.y;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public abstract class g<F extends MindPackage.IntentInfo, R> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f89904h = "IntentResolver";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final boolean f89905i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final boolean f89906j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final boolean f89907k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Comparator f89908l = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet<F> f89909a = new HashSet<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayMap<String, F[]> f89910b = new ArrayMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayMap<String, F[]> f89911c = new ArrayMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayMap<String, F[]> f89912d = new ArrayMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayMap<String, F[]> f89913e = new ArrayMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayMap<String, F[]> f89914f = new ArrayMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayMap<String, F[]> f89915g = new ArrayMap<>();

    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            int priority = ((IntentFilter) obj).getPriority();
            int priority2 = ((IntentFilter) obj2).getPriority();
            if (priority > priority2) {
                return -1;
            }
            return priority < priority2 ? 1 : 0;
        }
    }

    private class b implements Iterator<F> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Iterator<F> f89916b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private F f89917c;

        b(Iterator<F> it2) {
            this.f89916b = it2;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public F next() {
            F next = this.f89916b.next();
            this.f89917c = next;
            return next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f89916b.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            F f10 = this.f89917c;
            if (f10 != null) {
                g.this.y(f10);
            }
            this.f89916b.remove();
        }
    }

    private final int B(F f10, Iterator<String> it2, ArrayMap<String, F[]> arrayMap, String str) {
        int i10 = 0;
        if (it2 == null) {
            return 0;
        }
        while (it2.hasNext()) {
            i10++;
            z(arrayMap, it2.next(), f10);
        }
        return i10;
    }

    private final int C(F f10, String str) {
        String strIntern;
        Iterator<String> itTypesIterator = f10.f89757b.typesIterator();
        if (itTypesIterator == null) {
            return 0;
        }
        int i10 = 0;
        while (itTypesIterator.hasNext()) {
            String next = itTypesIterator.next();
            i10++;
            int iIndexOf = next.indexOf(47);
            if (iIndexOf > 0) {
                strIntern = next.substring(0, iIndexOf).intern();
            } else {
                strIntern = next;
                next = next + "/*";
            }
            z(this.f89910b, next, f10);
            if (iIndexOf > 0) {
                z(this.f89911c, strIntern, f10);
            } else {
                z(this.f89912d, strIntern, f10);
            }
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a(ArrayMap<String, F[]> arrayMap, String str, F f10) {
        MindPackage.IntentInfo[] intentInfoArr = (MindPackage.IntentInfo[]) arrayMap.get(str);
        if (intentInfoArr == null) {
            MindPackage.IntentInfo[] intentInfoArrR = r(2);
            arrayMap.put(str, intentInfoArrR);
            intentInfoArrR[0] = f10;
            return;
        }
        int length = intentInfoArr.length;
        int i10 = length;
        while (i10 > 0 && intentInfoArr[i10 - 1] == null) {
            i10--;
        }
        if (i10 < length) {
            intentInfoArr[i10] = f10;
            return;
        }
        MindPackage.IntentInfo[] intentInfoArrR2 = r((length * 3) / 2);
        System.arraycopy(intentInfoArr, 0, intentInfoArrR2, 0, length);
        intentInfoArrR2[length] = f10;
        arrayMap.put(str, intentInfoArrR2);
    }

    private void d(Intent intent, c<String> cVar, boolean z10, boolean z11, String str, String str2, F[] fArr, List<R> list, int i10) {
        F f10;
        String str3;
        Uri uri;
        String str4;
        F[] fArr2 = fArr;
        String action = intent.getAction();
        Uri data = intent.getData();
        String str5 = intent.getPackage();
        int length = fArr2 != null ? fArr2.length : 0;
        int i11 = 0;
        boolean z12 = false;
        while (i11 < length && (f10 = fArr2[i11]) != null) {
            if (z10) {
                y.h(f89904h, "Matching against filter " + f10);
            }
            if (str5 == null || q(str5, f10)) {
                if (c(f10, list)) {
                    str3 = action;
                    uri = data;
                    int iMatch = f10.f89757b.match(action, str, str2, data, cVar, f89904h);
                    if (iMatch >= 0) {
                        if (z10) {
                            y.h(f89904h, "  Filter matched!  match=0x" + Integer.toHexString(iMatch) + " hasDefault=" + f10.f89757b.hasCategory("android.intent.category.DEFAULT"));
                        }
                        if (!z11 || f10.f89757b.hasCategory("android.intent.category.DEFAULT")) {
                            R rS = s(f10, iMatch, i10);
                            if (z10) {
                                y.h(f89904h, "    Created result: " + rS);
                            }
                            if (rS != null) {
                                list.add(rS);
                            }
                        } else {
                            z12 = true;
                        }
                    } else if (z10) {
                        if (iMatch == -4) {
                            str4 = PointParamKey.CATEGORY;
                        } else if (iMatch == -3) {
                            str4 = "action";
                        } else if (iMatch != -2) {
                            str4 = iMatch != -1 ? "unknown reason" : "type";
                        } else {
                            str4 = "data";
                        }
                        y.h(f89904h, "  Filter did not match: " + str4);
                    }
                } else if (z10) {
                    y.h(f89904h, "  Filter's target already added");
                }
                i11++;
                fArr2 = fArr;
                action = str3;
                data = uri;
            } else if (z10) {
                y.h(f89904h, "  Filter is not from package " + str5 + "; skipping");
            }
            str3 = action;
            uri = data;
            i11++;
            fArr2 = fArr;
            action = str3;
            data = uri;
        }
        if (z10 && z12) {
            if (list.size() == 0) {
                y.h(f89904h, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT");
            } else if (list.size() > 1) {
                y.h(f89904h, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT");
            }
        }
    }

    private ArrayList<F> e(F[] fArr, IntentFilter intentFilter) {
        F f10;
        ArrayList<F> arrayList = null;
        if (fArr != null) {
            for (int i10 = 0; i10 < fArr.length && (f10 = fArr[i10]) != null; i10++) {
                if (i(f10.f89757b, intentFilter)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(f10);
                }
            }
        }
        return arrayList;
    }

    public static boolean i(IntentFilter intentFilter, IntentFilter intentFilter2) {
        int iCountActions = intentFilter.countActions();
        if (iCountActions != intentFilter2.countActions()) {
            return false;
        }
        for (int i10 = 0; i10 < iCountActions; i10++) {
            if (!intentFilter2.hasAction(intentFilter.getAction(i10))) {
                return false;
            }
        }
        int iCountCategories = intentFilter.countCategories();
        if (iCountCategories != intentFilter2.countCategories()) {
            return false;
        }
        for (int i11 = 0; i11 < iCountCategories; i11++) {
            if (!intentFilter2.hasCategory(intentFilter.getCategory(i11))) {
                return false;
            }
        }
        int iCountDataSchemes = intentFilter.countDataSchemes();
        if (iCountDataSchemes != intentFilter2.countDataSchemes()) {
            return false;
        }
        for (int i12 = 0; i12 < iCountDataSchemes; i12++) {
            if (!intentFilter2.hasDataScheme(intentFilter.getDataScheme(i12))) {
                return false;
            }
        }
        return intentFilter.countDataSchemeSpecificParts() == intentFilter2.countDataSchemeSpecificParts();
    }

    private static c<String> o(Intent intent) {
        Set<String> categories = intent.getCategories();
        if (categories == null) {
            return null;
        }
        return new c<>((String[]) categories.toArray(new String[categories.size()]));
    }

    private final int v(F f10, Iterator<String> it2, ArrayMap<String, F[]> arrayMap, String str) {
        int i10 = 0;
        if (it2 == null) {
            return 0;
        }
        while (it2.hasNext()) {
            i10++;
            a(arrayMap, it2.next(), f10);
        }
        return i10;
    }

    private final int w(F f10, String str) {
        String strIntern;
        Iterator<String> itTypesIterator = f10.f89757b.typesIterator();
        if (itTypesIterator == null) {
            return 0;
        }
        int i10 = 0;
        while (itTypesIterator.hasNext()) {
            String next = itTypesIterator.next();
            i10++;
            int iIndexOf = next.indexOf(47);
            if (iIndexOf > 0) {
                strIntern = next.substring(0, iIndexOf).intern();
            } else {
                strIntern = next;
                next = next + "/*";
            }
            a(this.f89910b, next, f10);
            if (iIndexOf > 0) {
                a(this.f89911c, strIntern, f10);
            } else {
                a(this.f89912d, strIntern, f10);
            }
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void z(ArrayMap<String, F[]> arrayMap, String str, Object obj) {
        MindPackage.IntentInfo[] intentInfoArr = (MindPackage.IntentInfo[]) arrayMap.get(str);
        if (intentInfoArr != null) {
            int length = intentInfoArr.length - 1;
            while (length >= 0 && intentInfoArr[length] == null) {
                length--;
            }
            int i10 = length;
            while (length >= 0) {
                if (intentInfoArr[length] == obj) {
                    int i11 = i10 - length;
                    if (i11 > 0) {
                        System.arraycopy(intentInfoArr, length + 1, intentInfoArr, length, i11);
                    }
                    intentInfoArr[i10] = null;
                    i10--;
                }
                length--;
            }
            if (i10 < 0) {
                arrayMap.remove(str);
            } else if (i10 < intentInfoArr.length / 2) {
                MindPackage.IntentInfo[] intentInfoArrR = r(i10 + 2);
                System.arraycopy(intentInfoArr, 0, intentInfoArrR, 0, i10 + 1);
                arrayMap.put(str, intentInfoArrR);
            }
        }
    }

    protected void A(List<R> list) {
        Collections.sort(list, f89908l);
    }

    public void b(F f10) {
        this.f89909a.add(f10);
        int iV = v(f10, f10.f89757b.schemesIterator(), this.f89913e, "      Scheme: ");
        int iW = w(f10, "      Type: ");
        if (iV == 0 && iW == 0) {
            v(f10, f10.f89757b.actionsIterator(), this.f89914f, "      Action: ");
        }
        if (iW != 0) {
            v(f10, f10.f89757b.actionsIterator(), this.f89915g, "      TypedAction: ");
        }
    }

    protected boolean c(F f10, List<R> list) {
        return true;
    }

    protected void f(PrintWriter printWriter, String str, F f10) {
        printWriter.print(str);
        printWriter.println(f10);
    }

    protected void g(PrintWriter printWriter, String str, Object obj, int i10) {
        printWriter.print(str);
        printWriter.print(obj);
        printWriter.print(": ");
        printWriter.println(i10);
    }

    boolean h(PrintWriter printWriter, String str, String str2, String str3, ArrayMap<String, F[]> arrayMap, String str4, boolean z10, boolean z11) {
        boolean z12;
        String str5;
        F f10;
        PrintWriterPrinter printWriterPrinter;
        String str6 = str3 + "  ";
        String str7 = str3 + "    ";
        ArrayMap arrayMap2 = new ArrayMap();
        String str8 = str2;
        boolean z13 = false;
        PrintWriterPrinter printWriterPrinter2 = null;
        for (int i10 = 0; i10 < arrayMap.size(); i10++) {
            F[] fArrValueAt = arrayMap.valueAt(i10);
            int length = fArrValueAt.length;
            if (!z11 || z10) {
                z12 = z13;
                str8 = str8;
                printWriterPrinter2 = printWriterPrinter2;
                int i11 = 0;
                boolean z14 = false;
                while (i11 < length) {
                    F f11 = fArrValueAt[i11];
                    if (f11 == null) {
                        break;
                    }
                    if (str4 == null || q(str4, f11)) {
                        if (str8 != null) {
                            printWriter.print(str);
                            printWriter.println(str8);
                            str8 = null;
                        }
                        if (!z14) {
                            printWriter.print(str6);
                            printWriter.print(arrayMap.keyAt(i10));
                            printWriter.println(":");
                            z14 = true;
                        }
                        f(printWriter, str7, f11);
                        if (z10) {
                            if (printWriterPrinter2 == null) {
                                printWriterPrinter2 = new PrintWriterPrinter(printWriter);
                            }
                            f11.f89757b.dump(printWriterPrinter2, str7 + "  ");
                        }
                        z12 = true;
                    }
                    i11++;
                    arrayMap = arrayMap;
                }
            } else {
                arrayMap2.clear();
                int i12 = 0;
                while (true) {
                    str5 = str8;
                    if (i12 >= length || (f10 = fArrValueAt[i12]) == null) {
                        break;
                    }
                    if (str4 == null || q(str4, f10)) {
                        Object objM = m(f10);
                        printWriterPrinter = printWriterPrinter2;
                        int iIndexOfKey = arrayMap2.indexOfKey(objM);
                        if (iIndexOfKey < 0) {
                            arrayMap2.put(objM, new MutableInt(1));
                        } else {
                            ((MutableInt) arrayMap2.valueAt(iIndexOfKey)).value++;
                        }
                    } else {
                        printWriterPrinter = printWriterPrinter2;
                    }
                    i12++;
                    str8 = str5;
                    printWriterPrinter2 = printWriterPrinter;
                    z13 = z13;
                }
                z12 = z13;
                PrintWriterPrinter printWriterPrinter3 = printWriterPrinter2;
                str8 = str5;
                int i13 = 0;
                boolean z15 = false;
                while (i13 < arrayMap2.size()) {
                    if (str8 != null) {
                        printWriter.print(str);
                        printWriter.println(str8);
                        str8 = null;
                    }
                    if (!z15) {
                        printWriter.print(str6);
                        printWriter.print(arrayMap.keyAt(i10));
                        printWriter.println(":");
                        z15 = true;
                    }
                    g(printWriter, str7, arrayMap2.keyAt(i13), ((MutableInt) arrayMap2.valueAt(i13)).value);
                    i13++;
                    z12 = true;
                }
                printWriterPrinter2 = printWriterPrinter3;
            }
            z13 = z12;
        }
        return z13;
    }

    public Iterator<F> j() {
        return new b(this.f89909a.iterator());
    }

    protected void k(List<R> list) {
    }

    public Set<F> l() {
        return Collections.unmodifiableSet(this.f89909a);
    }

    protected Object m(F f10) {
        return "IntentFilter";
    }

    public ArrayList<F> n(IntentFilter intentFilter) {
        if (intentFilter.countDataSchemes() == 1) {
            return e(this.f89913e.get(intentFilter.getDataScheme(0)), intentFilter);
        }
        if (intentFilter.countDataTypes() != 0 && intentFilter.countActions() == 1) {
            return e(this.f89915g.get(intentFilter.getAction(0)), intentFilter);
        }
        if (intentFilter.countDataTypes() == 0 && intentFilter.countDataSchemes() == 0 && intentFilter.countActions() == 1) {
            return e(this.f89914f.get(intentFilter.getAction(0)), intentFilter);
        }
        ArrayList<F> arrayList = null;
        for (F f10 : this.f89909a) {
            if (i(f10.f89757b, intentFilter)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(f10);
            }
        }
        return arrayList;
    }

    protected boolean p(F f10, int i10) {
        return false;
    }

    protected abstract boolean q(String str, F f10);

    protected abstract F[] r(int i10);

    /* JADX WARN: Multi-variable type inference failed */
    protected R s(F f10, int i10, int i11) {
        return f10;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x015f  */
    public List<R> t(Intent intent, String str, boolean z10, int i10) {
        F[] fArr;
        F[] fArr2;
        F[] fArr3;
        F[] fArr4;
        int iIndexOf;
        F[] fArr5;
        String scheme = intent.getScheme();
        ArrayList arrayList = new ArrayList();
        boolean z11 = (intent.getFlags() & 8) != 0;
        if (z11) {
            y.h(f89904h, "Resolving type=" + str + " scheme=" + scheme + " defaultOnly=" + z10 + " userId=" + i10 + " of " + intent);
        }
        if (str == null || (iIndexOf = str.indexOf(47)) <= 0) {
            fArr = null;
            fArr2 = null;
            fArr3 = null;
        } else {
            String strSubstring = str.substring(0, iIndexOf);
            if (strSubstring.equals(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
                if (intent.getAction() != null) {
                    fArr = this.f89915g.get(intent.getAction());
                    if (z11) {
                        y.h(f89904h, "Typed Action list: " + Arrays.toString(fArr));
                    }
                } else {
                    fArr = null;
                }
                fArr2 = null;
                fArr3 = null;
            } else {
                if (str.length() == iIndexOf + 2 && str.charAt(iIndexOf + 1) == '*') {
                    fArr = this.f89911c.get(strSubstring);
                    if (z11) {
                        y.h(f89904h, "First type cut: " + Arrays.toString(fArr));
                    }
                    fArr5 = this.f89912d.get(strSubstring);
                    if (z11) {
                        y.h(f89904h, "Second type cut: " + Arrays.toString(fArr5));
                    }
                } else {
                    fArr = this.f89910b.get(str);
                    if (z11) {
                        y.h(f89904h, "First type cut: " + Arrays.toString(fArr));
                    }
                    fArr5 = this.f89912d.get(strSubstring);
                    if (z11) {
                        y.h(f89904h, "Second type cut: " + Arrays.toString(fArr5));
                    }
                }
                F[] fArr6 = this.f89912d.get(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD);
                if (z11) {
                    y.h(f89904h, "Third type cut: " + Arrays.toString(fArr6));
                }
                fArr2 = fArr5;
                fArr3 = fArr6;
            }
        }
        if (scheme != null) {
            F[] fArr7 = this.f89913e.get(scheme);
            if (z11) {
                y.h(f89904h, "Scheme list: " + Arrays.toString(fArr7));
            }
            fArr4 = fArr7;
        } else {
            fArr4 = null;
        }
        if (str == null && scheme == null && intent.getAction() != null) {
            fArr = this.f89914f.get(intent.getAction());
            if (z11) {
                y.h(f89904h, "Action list: " + Arrays.toString(fArr));
            }
        }
        F[] fArr8 = fArr;
        c<String> cVarO = o(intent);
        if (fArr8 != null) {
            d(intent, cVarO, z11, z10, str, scheme, fArr8, arrayList, i10);
        }
        if (fArr2 != null) {
            d(intent, cVarO, z11, z10, str, scheme, fArr2, arrayList, i10);
        }
        if (fArr3 != null) {
            d(intent, cVarO, z11, z10, str, scheme, fArr3, arrayList, i10);
        }
        if (fArr4 != null) {
            d(intent, cVarO, z11, z10, str, scheme, fArr4, arrayList, i10);
        }
        k(arrayList);
        A(arrayList);
        if (z11) {
            y.h(r9, "Final result list:");
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                y.h(f89904h, "  " + arrayList.get(i11));
            }
        }
        return arrayList;
    }

    public List<R> u(Intent intent, String str, boolean z10, ArrayList<F[]> arrayList, int i10) {
        ArrayList arrayList2 = new ArrayList();
        boolean z11 = (intent.getFlags() & 8) != 0;
        c<String> cVarO = o(intent);
        String scheme = intent.getScheme();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            d(intent, cVarO, z11, z10, str, scheme, arrayList.get(i11), arrayList2, i10);
        }
        k(arrayList2);
        A(arrayList2);
        return arrayList2;
    }

    public void x(F f10) {
        y(f10);
        this.f89909a.remove(f10);
    }

    void y(F f10) {
        int iB = B(f10, f10.f89757b.schemesIterator(), this.f89913e, "      Scheme: ");
        int iC = C(f10, "      Type: ");
        if (iB == 0 && iC == 0) {
            B(f10, f10.f89757b.actionsIterator(), this.f89914f, "      Action: ");
        }
        if (iC != 0) {
            B(f10, f10.f89757b.actionsIterator(), this.f89915g, "      TypedAction: ");
        }
    }
}
