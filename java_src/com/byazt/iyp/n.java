package com.byazt.iyp;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.byazt.ga.LottieAnimationView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.MainThread;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Method f15627a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static List<C0348n> f15628c = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f15631n = false;
    public static boolean sp = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final c f15632t;
    public static boolean tt = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final uj f15633u;
    public static boolean uj;
    public static Method ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static boolean f15634x;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Rect f15630i = new Rect();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static final Rect f15629da = new Rect();
    public static final Rect sl = new Rect();

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 151})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f15635c;
        public int tt;

        private c() {
        }
    }

    /* JADX INFO: renamed from: com.byazt.iyp.n$n, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 1143})
    public static class C0348n {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15636c;
        public final View tt;
        public final Rect uj;
        public String ve;

        public C0348n(int i10, View view, String str, Rect rect) {
            this.f15636c = i10;
            this.tt = view;
            this.ve = str;
            this.uj = rect;
        }

        public String c() {
            if (!n.tt(this.ve)) {
                return this.ve + "_Tab_" + this.f15636c;
            }
            View view = this.tt;
            if (view != null && view.isAttachedToWindow() && Thread.currentThread() == Looper.getMainLooper().getThread()) {
                String strTt = n.tt(this.tt);
                if (!n.tt(strTt)) {
                    this.ve = strTt;
                    return strTt + "_Tab_" + this.f15636c;
                }
            }
            return "Tab_" + this.f15636c;
        }

        public String toString() {
            return "TabInfo{index=" + this.f15636c + ", tabRoot=" + this.tt + ", text='" + this.ve + "', rect=" + this.uj + '}';
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 934})
    public static class tt {
        public List<C0348n> uj;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f15637c = "";
        public int tt = -1;
        public int ve = 0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f15638n = "";

        public String toString() {
            return "Result{bottomBarClassName='" + this.f15637c + "', selectedIndex=" + this.tt + ", selectedConfidence=" + this.ve + ", tabInfos=" + this.uj + ", selectedTabLabel='" + this.f15638n + "'}";
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 938})
    private static class uj {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f15639a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f15640c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f15641n;
        public boolean tt;
        public boolean uj;
        public boolean ve;

        private uj() {
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, MediaPlayer.MEDIA_PLAYER_OPTION_TTMP_DNS_PARSE_ENABLE})
    private static class ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f15642c;
        public int tt;
        public String ve;

        public ve(int i10, int i11, String str) {
            this.f15642c = i10;
            this.tt = i11;
            this.ve = str;
        }
    }

    static {
        f15632t = new c();
        f15633u = new uj();
    }

    private static boolean a(View view) {
        if (view == null || !view.getClass().getSimpleName().contains(LottieAnimationView.f14297c)) {
            return false;
        }
        if (!sp && !f15634x) {
            try {
                try {
                    Method method = view.getClass().getMethod("isAnimating", new Class[0]);
                    method.setAccessible(true);
                    f15627a = method;
                } catch (Throwable unused) {
                    f15634x = true;
                    f15627a = null;
                }
                sp = true;
            } catch (Throwable th) {
                sp = true;
                throw th;
            }
        }
        Method method2 = f15627a;
        if (method2 != null && !f15634x) {
            try {
                Object objInvoke = method2.invoke(view, new Object[0]);
                return (objInvoke instanceof Boolean) && ((Boolean) objInvoke).booleanValue();
            } catch (Throwable unused2) {
                f15634x = true;
                f15627a = null;
            }
        }
        return false;
    }

    @MainThread
    private static boolean n(View view) {
        if (view != null && view.getVisibility() == 0) {
            if (a(view)) {
                return true;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    if (n(viewGroup.getChildAt(i10))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @MainThread
    private static boolean sp(View view) {
        if (view != null && view.getVisibility() == 0) {
            if (tt) {
                try {
                    if (view.isHovered()) {
                        return true;
                    }
                } catch (NoSuchMethodError unused) {
                    tt = false;
                } catch (Throwable unused2) {
                }
            }
            if (!uj && !f15631n) {
                try {
                    try {
                        Method method = View.class.getMethod("isHovered", new Class[0]);
                        method.setAccessible(true);
                        ve = method;
                    } catch (Throwable unused3) {
                        f15631n = true;
                        ve = null;
                    }
                    uj = true;
                } catch (Throwable th) {
                    uj = true;
                    throw th;
                }
            }
            Method method2 = ve;
            if (method2 != null && !f15631n) {
                try {
                    Object objInvoke = method2.invoke(view, new Object[0]);
                    return (objInvoke instanceof Boolean) && ((Boolean) objInvoke).booleanValue();
                } catch (Throwable unused4) {
                    f15631n = true;
                    ve = null;
                }
            }
        }
        return false;
    }

    @MainThread
    public static void tt() {
        f15628c = null;
        com.byazt.iyp.uj.ve();
    }

    @MainThread
    public static int uj() {
        View view;
        da.uj();
        List<C0348n> list = f15628c;
        if (list == null || list.isEmpty()) {
            return -1;
        }
        for (C0348n c0348n : list) {
            if (c0348n == null || (view = c0348n.tt) == null || !view.isAttachedToWindow()) {
                da.n();
                return -1;
            }
        }
        ve veVarC = c(list);
        da.tt(veVarC.f15642c, veVarC.tt, veVarC.ve);
        return veVarC.f15642c;
    }

    @MainThread
    public static List<C0348n> ve() {
        return f15628c;
    }

    private static boolean ve(String str) {
        if (str == null) {
            return false;
        }
        return str.contains(c(new byte[]{-36, -82, -80, -33, 125, -121})) || str.contains(c(new byte[]{-33, -118, -100, -37, -82, 119})) || str.contains(c(new byte[]{-35, -100, -123, -37, 126, -97})) || str.contains(c(new byte[]{-34, -85, -112, -33, -120, -89})) || str.contains(c(new byte[]{-36, -123, -122, -35, -124, -90})) || str.contains(c(new byte[]{-35, -80, -104, -37, -126, 123})) || str.contains(c(new byte[]{-36, -86, -79, -37, -128, -98})) || str.contains(c(new byte[]{-38, -79, -79, -37, -128, -105})) || str.contains(c(new byte[]{-34, -85, -112}));
    }

    @MainThread
    public static boolean c() {
        View view;
        List<C0348n> list = f15628c;
        if (list == null || list.isEmpty()) {
            return false;
        }
        for (C0348n c0348n : list) {
            if (c0348n == null || (view = c0348n.tt) == null || !view.isAttachedToWindow()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String tt(View view) {
        return c(view, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tt(String str) {
        return TextUtils.isEmpty(str) || str.trim().length() == 0;
    }

    @MainThread
    private static int tt(View view, String str) {
        TextView textView;
        CharSequence text;
        if (view != null && view.getVisibility() == 0) {
            if ((view instanceof TextView) && (text = (textView = (TextView) view).getText()) != null) {
                String strTrim = text.toString().trim();
                if (!strTrim.isEmpty() && (str == null || str.isEmpty() || strTrim.equals(str))) {
                    return textView.getCurrentTextColor();
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    int iTt = tt(viewGroup.getChildAt(i10), str);
                    if (iTt != 0) {
                        return iTt;
                    }
                }
            }
        }
        return 0;
    }

    @MainThread
    public static tt c(Activity activity) {
        ve veVarC;
        tt ttVar = new tt();
        if (activity != null && activity.getWindow() != null) {
            View decorView = activity.getWindow().getDecorView();
            ViewGroup viewGroupC = c(decorView, decorView.getResources().getDisplayMetrics().widthPixels, decorView.getResources().getDisplayMetrics().heightPixels);
            if (viewGroupC != null) {
                ttVar.f15637c = viewGroupC.getClass().getName();
            }
            if (viewGroupC == null) {
                da.tt();
                return ttVar;
            }
            List<C0348n> listC = c(viewGroupC);
            ttVar.uj = listC;
            int iTt = com.byazt.iyp.uj.tt();
            if (iTt >= 0 && iTt < listC.size()) {
                veVarC = new ve(iTt, 100, "history click");
                da.c(veVarC.f15642c);
            } else {
                veVarC = c(listC);
                da.c(veVarC.f15642c, veVarC.tt, veVarC.ve);
            }
            int i10 = veVarC.f15642c;
            ttVar.tt = i10;
            ttVar.ve = veVarC.tt;
            if (i10 >= 0 && i10 < listC.size()) {
                ttVar.f15638n = listC.get(ttVar.tt).c();
            }
            if (listC != null && !listC.isEmpty()) {
                com.byazt.iyp.uj.ve();
                tt(viewGroupC, listC);
                com.byazt.iyp.uj.c(veVarC.f15642c);
                com.byazt.iyp.uj.c(viewGroupC);
                f15628c = listC;
                da.c(listC.size(), ttVar.f15638n);
            } else {
                da.ve();
            }
        }
        return ttVar;
    }

    @MainThread
    private static float uj(View view) {
        c cVar = f15632t;
        cVar.f15635c = 0.0f;
        cVar.tt = 0;
        c(view, cVar);
        int i10 = cVar.tt;
        if (i10 == 0) {
            return 1.0f;
        }
        return cVar.f15635c / i10;
    }

    @MainThread
    private static uj ve(View view) {
        uj ujVar = f15633u;
        ujVar.f15639a = false;
        ujVar.f15641n = false;
        ujVar.uj = false;
        ujVar.ve = false;
        ujVar.tt = false;
        ujVar.f15640c = false;
        c(view, ujVar);
        ujVar.f15640c = ujVar.tt || ujVar.ve || ujVar.uj || ujVar.f15641n || ujVar.f15639a;
        return ujVar;
    }

    @MainThread
    private static void tt(ViewGroup viewGroup, List<C0348n> list) {
        for (C0348n c0348n : list) {
            com.byazt.iyp.uj.c(c0348n.tt, c0348n);
        }
    }

    @MainThread
    private static List<View> tt(ViewGroup viewGroup) {
        ArrayList arrayList = new ArrayList(viewGroup.getChildCount());
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt != null && childAt.getVisibility() == 0) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    @MainThread
    private static ViewGroup c(View view, int i10, int i11) {
        return c(view, i10, i11, true);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00f4  */
    @MainThread
    private static ViewGroup c(View view, int i10, int i11, boolean z10) {
        boolean z11;
        boolean z12;
        if (!(view instanceof ViewGroup) || view.getVisibility() != 0) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        boolean zC = da.c();
        ArrayList arrayList = new ArrayList(viewGroup.getChildCount());
        for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
            View childAt = viewGroup.getChildAt(i12);
            if (childAt != null && childAt.getVisibility() == 0 && childAt.getWidth() > 0 && childAt.getHeight() > 0) {
                arrayList.add(childAt);
            }
        }
        boolean z13 = true;
        if (arrayList.size() >= 3 && arrayList.size() <= 6) {
            Rect rect = f15630i;
            rect.setEmpty();
            if (viewGroup.getGlobalVisibleRect(rect)) {
                if (rect.width() >= ((double) i10) * 0.9d) {
                    double d10 = i11;
                    if (rect.bottom >= 0.9d * d10 && rect.height() <= d10 * 0.2d) {
                        int iWidth = rect.width() / arrayList.size();
                        int i13 = iWidth / 2;
                        Iterator it2 = arrayList.iterator();
                        int iCenterX = -1;
                        while (true) {
                            if (!it2.hasNext()) {
                                z12 = true;
                                break;
                            }
                            View view2 = (View) it2.next();
                            Rect rect2 = f15629da;
                            rect2.setEmpty();
                            view2.getGlobalVisibleRect(rect2);
                            if (iCenterX == -1 || rect2.centerX() > iCenterX) {
                                iCenterX = rect2.centerX();
                                if (Math.abs(rect2.width() - iWidth) > i13) {
                                    rect2.width();
                                }
                            }
                            z12 = false;
                            break;
                        }
                        if (z12) {
                            Iterator it3 = arrayList.iterator();
                            do {
                                if (!it3.hasNext()) {
                                    z13 = false;
                                    break;
                                }
                            } while (!(((View) it3.next()) instanceof ViewGroup));
                            if (z13) {
                                return viewGroup;
                            }
                        }
                        if (zC && !z10) {
                            arrayList.size();
                        }
                    } else if (zC && !z10) {
                        arrayList.size();
                        rect.width();
                        rect.height();
                    }
                } else if (zC) {
                    arrayList.size();
                    rect.width();
                    rect.height();
                }
            }
        } else if (arrayList.size() > 6 && arrayList.size() <= 15) {
            Rect rect3 = f15630i;
            rect3.setEmpty();
            if (viewGroup.getGlobalVisibleRect(rect3) && rect3.width() >= ((double) i10) * 0.9d) {
                double d11 = i11;
                if (rect3.bottom >= 0.9d * d11 && rect3.height() <= d11 * 0.2d) {
                    ArrayList arrayList2 = new ArrayList(arrayList);
                    c(viewGroup, arrayList2);
                    int size = arrayList2.size();
                    if (size >= 3 && size <= 6) {
                        int iWidth2 = rect3.width();
                        int i14 = iWidth2 / size;
                        int i15 = i14 / 2;
                        int i16 = 0;
                        int iCenterX2 = -1;
                        while (true) {
                            if (i16 >= size) {
                                z11 = true;
                                break;
                            }
                            View view3 = (View) arrayList2.get(i16);
                            Rect rect4 = f15629da;
                            rect4.setEmpty();
                            view3.getGlobalVisibleRect(rect4);
                            if (iCenterX2 == -1 || rect4.centerX() > iCenterX2 + (iWidth2 * 0.05f)) {
                                iCenterX2 = rect4.centerX();
                                if (Math.abs(rect4.width() - i14) <= i15) {
                                    i16++;
                                }
                            }
                            z11 = false;
                            break;
                        }
                        if (z11) {
                            Iterator it4 = arrayList2.iterator();
                            do {
                                if (!it4.hasNext()) {
                                    z13 = false;
                                    break;
                                }
                            } while (!(((View) it4.next()) instanceof ViewGroup));
                            if (z13) {
                                if (zC) {
                                    arrayList.size();
                                }
                                return viewGroup;
                            }
                        }
                        if (zC && !z10) {
                            arrayList.size();
                        }
                    }
                }
            }
        } else if (zC && !z10) {
            arrayList.size();
            arrayList.size();
        }
        for (int i17 = 0; i17 < viewGroup.getChildCount(); i17++) {
            ViewGroup viewGroupC = c(viewGroup.getChildAt(i17), i10, i11, false);
            if (viewGroupC != null) {
                return viewGroupC;
            }
        }
        return null;
    }

    @MainThread
    private static List<C0348n> c(ViewGroup viewGroup) {
        List<View> listTt = tt(viewGroup);
        if (listTt.size() > 6) {
            c(viewGroup, listTt);
        }
        ArrayList arrayList = new ArrayList(listTt.size());
        for (int i10 = 0; i10 < listTt.size(); i10++) {
            View view = listTt.get(i10);
            Rect rect = sl;
            rect.setEmpty();
            view.getGlobalVisibleRect(rect);
            arrayList.add(new C0348n(i10, view, tt(view), new Rect(rect)));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0088  */
    /* JADX WARN: Code duplicated, block: B:56:0x014a  */
    @MainThread
    private static void c(ViewGroup viewGroup, List<View> list) {
        boolean z10;
        if (list == null || list.size() < 3) {
            return;
        }
        Rect rect = f15630i;
        rect.setEmpty();
        if (viewGroup.getGlobalVisibleRect(rect)) {
            int iWidth = rect.width();
            int iHeight = rect.height();
            if (iWidth == 0 || iHeight == 0) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                View view = list.get(size);
                Rect rect2 = f15629da;
                rect2.setEmpty();
                view.getGlobalVisibleRect(rect2);
                int iWidth2 = rect2.width();
                int iHeight2 = rect2.height();
                float f10 = iWidth2;
                float f11 = iWidth;
                if (f10 >= 0.92f * f11 && iHeight2 >= iHeight * 0.6f) {
                    list.remove(size);
                } else if (f10 > 0.03f * f11) {
                    float f12 = iHeight2;
                    float f13 = iHeight;
                    if (f12 <= 0.12f * f13) {
                        list.remove(size);
                    } else if (f10 < f11 * 0.07f || f12 < f13 * 0.35f) {
                        list.remove(size);
                    }
                } else {
                    list.remove(size);
                }
            }
            int size2 = list.size();
            int i10 = 0;
            while (true) {
                int i11 = size2 - 1;
                if (i10 >= i11) {
                    break;
                }
                int i12 = 0;
                while (i12 < i11 - i10) {
                    View view2 = list.get(i12);
                    Rect rect3 = f15629da;
                    rect3.setEmpty();
                    view2.getGlobalVisibleRect(rect3);
                    int iCenterX = rect3.centerX();
                    int i13 = i12 + 1;
                    View view3 = list.get(i13);
                    rect3.setEmpty();
                    view3.getGlobalVisibleRect(rect3);
                    if (iCenterX > rect3.centerX()) {
                        list.set(i12, view3);
                        list.set(i13, view2);
                    }
                    i12 = i13;
                }
                i10++;
            }
            for (int size3 = list.size() - 1; size3 > 0; size3--) {
                View view4 = list.get(size3);
                int i14 = size3 - 1;
                View view5 = list.get(i14);
                Rect rect4 = new Rect();
                view4.getGlobalVisibleRect(rect4);
                Rect rect5 = new Rect();
                view5.getGlobalVisibleRect(rect5);
                boolean z11 = ((float) Math.abs(rect4.centerX() - rect5.centerX())) <= ((float) iWidth) * 0.06f;
                if (z11 || !Rect.intersects(rect4, rect5)) {
                    z10 = false;
                } else {
                    Rect rect6 = new Rect(rect4);
                    rect6.intersect(rect5);
                    if (rect6.width() * rect6.height() >= Math.min(rect4.width() * rect4.height(), rect5.width() * rect5.height()) * 0.35f) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (z11 || z10) {
                    if (rect4.width() * rect4.height() >= rect5.width() * rect5.height()) {
                        list.remove(i14);
                    } else {
                        list.remove(size3);
                    }
                }
            }
        }
    }

    @MainThread
    private static String c(View view, String str) {
        CharSequence text;
        if (view != null && view.getVisibility() == 0) {
            if ((view instanceof TextView) && (text = ((TextView) view).getText()) != null) {
                String strTrim = text.toString().trim();
                if (!strTrim.isEmpty() && strTrim.length() <= 8 && (str.isEmpty() || strTrim.length() < str.length())) {
                    str = strTrim;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    str = c(viewGroup.getChildAt(i10), str);
                }
            }
        }
        return str;
    }

    private static String c(byte[] bArr) {
        try {
            byte[] bArr2 = new byte[bArr.length];
            for (int i10 = 0; i10 < bArr.length; i10++) {
                bArr2[i10] = (byte) (bArr[i10] + 10);
            }
            return new String(bArr2, "UTF-8");
        } catch (Throwable unused) {
            return "";
        }
    }

    @MainThread
    private static ve c(List<C0348n> list) {
        HashMap map;
        if (list != null && !list.isEmpty()) {
            boolean zC = da.c();
            int size = list.size();
            int[] iArr = new int[size];
            if (zC) {
                map = new HashMap(size);
                for (int i10 = 0; i10 < size; i10++) {
                    map.put(Integer.valueOf(i10), new ArrayList());
                }
            } else {
                map = null;
            }
            int[] iArr2 = new int[size];
            for (int i11 = 0; i11 < size; i11++) {
                iArr2[i11] = tt(list.get(i11).tt, list.get(i11).ve);
            }
            int iC = c(iArr2);
            if (iC != -1) {
                iArr[iC] = iArr[iC] + 5;
                c(map, iC, "textColorOdd +5");
            }
            for (int i12 = 0; i12 < size; i12++) {
                C0348n c0348n = list.get(i12);
                boolean zVe = ve(c0348n.ve);
                uj ujVarVe = ve(c0348n.tt);
                if (ujVarVe.f15640c) {
                    int i13 = ujVarVe.tt ? 6 : 0;
                    if (ujVarVe.ve) {
                        i13 += 4;
                    }
                    if (ujVarVe.uj) {
                        i13++;
                    }
                    if (ujVarVe.f15641n) {
                        i13 += 2;
                    }
                    if (ujVarVe.f15639a) {
                        i13++;
                    }
                    iArr[i12] = iArr[i12] + i13;
                    c(map, i12, "stateHit +".concat(String.valueOf(i13)));
                }
                if (n(c0348n.tt)) {
                    if (zVe) {
                        c(map, i12, "lottie ignored(marketing)");
                    } else {
                        iArr[i12] = iArr[i12] + 2;
                        c(map, i12, "lottieAnimating +2");
                    }
                }
            }
            float[] fArr = new float[size];
            for (int i14 = 0; i14 < size; i14++) {
                fArr[i14] = uj(list.get(i14).tt);
            }
            int iC2 = c(fArr, 0.15f);
            if (iC2 != -1) {
                if (ve(list.get(iC2).ve)) {
                    c(map, iC2, "alphaOdd ignored(marketing)");
                } else {
                    iArr[iC2] = iArr[iC2] + 2;
                    c(map, iC2, "alphaOdd +2");
                }
            }
            int iMax = Integer.MIN_VALUE;
            int i15 = Integer.MIN_VALUE;
            int i16 = -1;
            for (int i17 = 0; i17 < size; i17++) {
                int i18 = iArr[i17];
                if (i18 > i15) {
                    i16 = i17;
                    i15 = i18;
                }
            }
            if (i15 <= 0) {
                return new ve(-1, 0, "no strong signals");
            }
            for (int i19 = 0; i19 < size; i19++) {
                if (i19 != i16) {
                    iMax = Math.max(iMax, iArr[i19]);
                }
            }
            return new ve(i16, Math.max(0, i15 - iMax) + i15, (!zC || map == null) ? "" : String.valueOf(map.get(Integer.valueOf(i16))));
        }
        return new ve(-1, 0, "no tabs");
    }

    private static void c(Map<Integer, List<String>> map, int i10, String str) {
        List<String> list;
        if (map == null || (list = map.get(Integer.valueOf(i10))) == null) {
            return;
        }
        list.add(str);
    }

    @MainThread
    private static void c(View view, uj ujVar) {
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        if (view.isSelected()) {
            ujVar.tt = true;
        }
        if (view.isActivated()) {
            ujVar.ve = true;
        }
        if (view.isPressed()) {
            ujVar.uj = true;
        }
        if (view.isFocused()) {
            ujVar.f15641n = true;
        }
        if (sp(view)) {
            ujVar.f15639a = true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                c(viewGroup.getChildAt(i10), ujVar);
            }
        }
    }

    private static int c(int[] iArr) {
        if (iArr != null && iArr.length >= 3) {
            HashMap map = new HashMap();
            for (int i10 : iArr) {
                if (i10 != 0) {
                    map.put(Integer.valueOf(i10), Integer.valueOf(((Integer) map.getOrDefault(Integer.valueOf(i10), 0)).intValue() + 1));
                }
            }
            int iIntValue = 0;
            int iIntValue2 = 0;
            for (Map.Entry entry : map.entrySet()) {
                if (((Integer) entry.getValue()).intValue() > iIntValue) {
                    iIntValue = ((Integer) entry.getValue()).intValue();
                    iIntValue2 = ((Integer) entry.getKey()).intValue();
                }
            }
            if (iIntValue >= iArr.length / 2) {
                int i11 = 0;
                int i12 = -1;
                for (int i13 = 0; i13 < iArr.length; i13++) {
                    int i14 = iArr[i13];
                    if (i14 != 0 && i14 != iIntValue2) {
                        i11++;
                        i12 = i13;
                    }
                }
                if (i11 == 1) {
                    return i12;
                }
            }
        }
        return -1;
    }

    @MainThread
    private static void c(View view, c cVar) {
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        if (!(view instanceof ViewGroup)) {
            cVar.f15635c += view.getAlpha();
            cVar.tt++;
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            c(viewGroup.getChildAt(i10), cVar);
        }
    }

    private static int c(float[] fArr, float f10) {
        if (fArr != null && fArr.length >= 3) {
            float f11 = 0.0f;
            float f12 = 0.0f;
            for (float f13 : fArr) {
                f12 += f13;
            }
            float length = f12 / fArr.length;
            int i10 = -1;
            for (int i11 = 0; i11 < fArr.length; i11++) {
                float fAbs = Math.abs(fArr[i11] - length);
                if (fAbs > f11) {
                    i10 = i11;
                    f11 = fAbs;
                }
            }
            if (f11 >= f10) {
                return i10;
            }
        }
        return -1;
    }
}
