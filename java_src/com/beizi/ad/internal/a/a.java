package com.beizi.ad.internal.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.beizi.ad.internal.c;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.l;
import com.beizi.ad.internal.e.n;
import com.beizi.ad.internal.e.s;
import com.beizi.ad.internal.f;
import com.beizi.ad.lance.a.i;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f8648a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Map<String, LinkedList<b>> f8649c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Context f8650d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f8651b = "KEY_AD_CACHE_CONTENT_";

    /* JADX INFO: renamed from: com.beizi.ad.internal.a.a$6, reason: invalid class name */
    static /* synthetic */ class AnonymousClass6 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8664a;

        static {
            int[] iArr = new int[f.values().length];
            f8664a = iArr;
            try {
                iArr[f.NEW_SPLASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8664a[f.NATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8664a[f.INTERSTITIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8664a[f.REWARDEDVIDEO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        h.a((Context) null).a(str, false, new h.a() { // from class: com.beizi.ad.internal.a.a.4
            @Override // com.beizi.ad.internal.e.h.a
            public void a() {
            }

            @Override // com.beizi.ad.internal.e.h.a
            public void a(Bitmap bitmap) {
            }
        });
    }

    private void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        s.a().a(f8650d, str, false, new s.a() { // from class: com.beizi.ad.internal.a.a.5
            @Override // com.beizi.ad.internal.e.s.a
            public void a() {
            }

            @Override // com.beizi.ad.internal.e.s.a
            public void a(String str2) {
            }
        });
    }

    public void b() {
        i.g(f8650d);
    }

    public static synchronized a a() {
        if (f8648a == null) {
            synchronized (a.class) {
                f8650d = c.a().c();
                f8648a = new a();
            }
        }
        return f8648a;
    }

    public b b(String str) {
        b bVarPollLast;
        try {
            LinkedList<b> linkedList = f8649c.containsKey(str) ? f8649c.get(str) : null;
            if (linkedList == null || linkedList.isEmpty()) {
                List<b> listA = a(str);
                if (listA != null && !listA.isEmpty()) {
                    LinkedList<b> linkedList2 = new LinkedList<>(listA);
                    f8649c.put(str, linkedList2);
                    linkedList = linkedList2;
                }
                return null;
            }
            if (linkedList.isEmpty() || (bVarPollLast = linkedList.pollLast()) == null || bVarPollLast.c() < System.currentTimeMillis()) {
                return null;
            }
            return bVarPollLast;
        } catch (Exception unused) {
        }
    }

    public List<b> a(String str) {
        try {
            String strA = l.a(f8650d, this.f8651b + str);
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            String strB = com.beizi.ad.lance.a.b.b(strA);
            if (TextUtils.isEmpty(strB)) {
                return null;
            }
            JSONArray jSONArray = new JSONArray(strB);
            if (jSONArray.length() < 1) {
                return null;
            }
            ArrayList arrayList = null;
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    long jOptLong = jSONObjectOptJSONObject.has("expireTime") ? jSONObjectOptJSONObject.optLong("expireTime") : 0L;
                    if (jOptLong >= System.currentTimeMillis()) {
                        b bVar = new b();
                        bVar.b(jOptLong);
                        if (jSONObjectOptJSONObject.has("spaceId")) {
                            bVar.a(jSONObjectOptJSONObject.optString("spaceId"));
                        }
                        if (jSONObjectOptJSONObject.has("cacheTime")) {
                            bVar.a(jSONObjectOptJSONObject.optLong("cacheTime"));
                        }
                        if (jSONObjectOptJSONObject.has("requestId")) {
                            bVar.b(jSONObjectOptJSONObject.optString("requestId"));
                        }
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(bVar);
                    }
                }
            }
            Collections.sort(arrayList, new Comparator<b>() { // from class: com.beizi.ad.internal.a.a.1
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(b bVar2, b bVar3) {
                    return bVar2.b() > bVar3.b() ? 1 : -1;
                }
            });
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    public synchronized void b(final EventBean eventBean, final int i10, final com.beizi.ad.model.b bVar, final f fVar) {
        if (i10 < 1) {
            return;
        }
        com.beizi.ad.lance.a.c.b().d().execute(new Runnable() { // from class: com.beizi.ad.internal.a.a.3
            @Override // java.lang.Runnable
            public void run() {
                final String strA;
                for (int i11 = 0; i11 < i10; i11++) {
                    try {
                        String strA2 = n.a();
                        EventBean eventBean2 = eventBean;
                        if (eventBean2 != null) {
                            eventBean2.setReqId(strA2);
                            eventBean.setEventCode("255.300");
                            a.this.a(eventBean);
                        }
                        final String strA3 = n.a();
                        com.beizi.ad.model.b bVar2 = new com.beizi.ad.model.b();
                        bVar2.b(strA3);
                        bVar2.a(true);
                        com.beizi.ad.model.b bVar3 = bVar;
                        if (bVar3 != null) {
                            strA = bVar3.a();
                            bVar2.a(strA);
                            bVar2.a(bVar.d());
                            bVar2.a(bVar.e());
                        } else {
                            strA = null;
                        }
                        new com.beizi.ad.v2.e.b().a(bVar2, new com.beizi.ad.v2.e.a() { // from class: com.beizi.ad.internal.a.a.3.1
                            @Override // com.beizi.ad.v2.e.a
                            public void a(int i12) {
                            }

                            @Override // com.beizi.ad.v2.e.a
                            public void a(String str) {
                                try {
                                    com.beizi.ad.internal.d.a aVar = new com.beizi.ad.internal.d.a(str, null, fVar);
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    a.this.a(aVar, str, strA3, strA, fVar);
                                    if (eventBean != null) {
                                        if (aVar.d()) {
                                            EventBean eventBeanM15clone = eventBean.m15clone();
                                            eventBeanM15clone.setEventCode("255.400");
                                            a.this.a(eventBeanM15clone);
                                        } else {
                                            EventBean eventBeanM15clone2 = eventBean.m15clone();
                                            eventBeanM15clone2.setEventCode("255.500");
                                            eventBeanM15clone2.setErrorCode("3");
                                            a.this.a(eventBeanM15clone2);
                                        }
                                    }
                                } catch (Throwable unused) {
                                }
                            }
                        }, fVar);
                    } catch (Exception unused) {
                    }
                }
            }
        });
    }

    public synchronized void a(EventBean eventBean, int i10, com.beizi.ad.model.b bVar, f fVar) {
        List<b> listA;
        if (i10 < 1 || bVar == null) {
            return;
        }
        try {
            String strA = bVar.a();
            LinkedList<b> linkedList = f8649c.containsKey(strA) ? f8649c.get(strA) : null;
            if ((linkedList == null || linkedList.isEmpty()) && (listA = a(strA)) != null && listA.size() > 0) {
                linkedList = new LinkedList<>(listA);
                f8649c.put(strA, linkedList);
            }
            int size = (linkedList == null || linkedList.size() <= 0) ? 0 : linkedList.size();
            if (i10 >= 1 && size < i10) {
                b(eventBean, i10 - size, bVar, fVar);
            }
        } catch (Exception unused) {
        }
    }

    public void a(b bVar) {
        if (bVar == null) {
            return;
        }
        try {
            System.currentTimeMillis();
            i.b(f8650d, bVar.a(), bVar.d());
        } catch (Exception unused) {
        }
    }

    public void a(b bVar, int i10, int i11) {
        if (bVar == null) {
            return;
        }
        try {
            if (bVar.c() >= System.currentTimeMillis() && i10 == 1) {
                String strA = bVar.a();
                LinkedList<b> linkedList = f8649c.containsKey(strA) ? f8649c.get(strA) : null;
                if (linkedList == null || linkedList.isEmpty()) {
                    linkedList = new LinkedList<>();
                }
                linkedList.add(bVar);
                Collections.sort(linkedList, new Comparator<b>() { // from class: com.beizi.ad.internal.a.a.2
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(b bVar2, b bVar3) {
                        return bVar2.b() > bVar3.b() ? 1 : -1;
                    }
                });
                if (linkedList.size() > i11) {
                    linkedList.removeFirst();
                }
                if (a(linkedList, strA)) {
                    f8649c.put(strA, linkedList);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public com.beizi.ad.internal.d.a a(b bVar, f fVar) {
        if (bVar == null) {
            return null;
        }
        try {
            String strA = bVar.a();
            String strA2 = i.a(f8650d, strA, bVar.d());
            if (TextUtils.isEmpty(strA2)) {
                return null;
            }
            com.beizi.ad.internal.d.a aVar = new com.beizi.ad.internal.d.a(strA2, null, fVar);
            if (!aVar.d()) {
                return null;
            }
            LinkedList<b> linkedList = f8649c.containsKey(strA) ? f8649c.get(strA) : null;
            if (linkedList != null && !linkedList.isEmpty()) {
                a(linkedList, strA);
            } else {
                l.c(f8650d, this.f8651b + strA);
            }
            return aVar;
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(com.beizi.ad.internal.d.a aVar, String str, String str2, String str3, f fVar) {
        int iH;
        try {
            if (aVar.d() && (iH = aVar.H()) > 0 && i.a(f8650d, str3, str2, str)) {
                b bVar = new b();
                long jCurrentTimeMillis = System.currentTimeMillis();
                bVar.a(jCurrentTimeMillis);
                bVar.b(jCurrentTimeMillis + ((long) (iH * 1000)));
                bVar.b(str2);
                bVar.a(str3);
                LinkedList<b> linkedList = f8649c.containsKey(str3) ? f8649c.get(str3) : null;
                if (linkedList == null || linkedList.isEmpty()) {
                    linkedList = new LinkedList<>();
                }
                linkedList.add(bVar);
                a(linkedList, str3);
                f8649c.put(str3, linkedList);
                int i10 = AnonymousClass6.f8664a[fVar.ordinal()];
                if (i10 == 1) {
                    String strE = aVar.E();
                    if (aVar.F() == com.beizi.ad.model.i.f.RENDER_PIC) {
                        c(strE);
                        return;
                    }
                    return;
                }
                if (i10 == 2) {
                    c(((com.beizi.ad.internal.c.a) aVar.a()).b());
                    return;
                }
                if (i10 != 3) {
                    if (i10 == 4 && aVar.z()) {
                        String strY = aVar.y();
                        String strJ = aVar.J();
                        if (!TextUtils.isEmpty(strY)) {
                            d(strY);
                        }
                        if (TextUtils.isEmpty(strJ)) {
                            return;
                        }
                        c(strJ);
                        return;
                    }
                    return;
                }
                boolean z10 = aVar.z();
                String strX = aVar.x();
                String strY2 = aVar.y();
                if (z10) {
                    d(strY2);
                } else {
                    c(strX);
                }
            }
        } catch (Exception unused) {
        }
    }

    private boolean a(LinkedList<b> linkedList, String str) {
        if (linkedList != null) {
            try {
                if (!linkedList.isEmpty()) {
                    String strA = com.beizi.ad.lance.a.b.a(linkedList.toString());
                    if (TextUtils.isEmpty(strA)) {
                        return false;
                    }
                    l.a(f8650d, this.f8651b + str, strA);
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(EventBean eventBean) {
        EventCar.getInstance(f8650d).goRoad(eventBean);
    }
}
