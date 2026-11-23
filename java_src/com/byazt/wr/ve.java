package com.byazt.wr;

import android.content.SharedPreferences;
import androidx.core.app.NotificationCompat;
import com.byazt.bwm.x;
import com.byazt.dna.z;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1361, 54})
public class ve implements com.byazt.iy.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static ThreadPoolExecutor f21664c = null;
    public static int tt = 3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f21667i;
    public long sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final com.byazt.yy.tt f21669t;
    public final File uj;
    public final File ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile boolean f21671x;
    public final boolean yp;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Object f21668n = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f21665a = new ConcurrentHashMap();
    public Map<String, Object> sp = new HashMap();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final List<Runnable> f21666da = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public AtomicBoolean f21670u = new AtomicBoolean(false);

    @com.byazt.zqa.c(c = {0, 1, 1361, 24})
    public final class c implements SharedPreferences.Editor {
        public c() {
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            ve.this.apply();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            try {
                ve.ve(ve.this);
                ve.this.sp.clear();
            } catch (Exception unused) {
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return true;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z10) {
            ve.this.c(str, Boolean.valueOf(z10));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f10) {
            ve.this.c(str, Float.valueOf(f10));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i10) {
            ve.this.c(str, Integer.valueOf(i10));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j10) {
            ve.this.c(str, Long.valueOf(j10));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            ve.this.c(str, str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            ve.this.c(str, set);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            ve.this.remove(str);
            return this;
        }
    }

    public ve(File file, com.byazt.yy.c cVar, com.byazt.yy.tt ttVar, boolean z10) {
        this.f21671x = false;
        this.yp = z10;
        File file2 = new File(file.getParent(), file.getName() + ".prop");
        if (file2.exists() && file2.length() > 0) {
            cVar = new com.byazt.wr.c(null);
            file = file2;
        }
        this.ve = file;
        this.uj = new File(file.getPath() + ".bak");
        this.f21671x = false;
        cVar = cVar == null ? new com.byazt.wr.c(null) : cVar;
        if (ttVar == null) {
            this.f21669t = new com.byazt.wr.c(null);
        } else {
            this.f21669t = ttVar;
        }
        c(cVar);
    }

    public static /* synthetic */ long ve(ve veVar) {
        long j10 = veVar.f21667i;
        veVar.f21667i = 1 + j10;
        return j10;
    }

    @Override // com.byazt.iy.n
    public void apply() {
        if (!this.f21671x) {
            if (this.f21670u.compareAndSet(false, true)) {
                c(new Runnable() { // from class: com.byazt.wr.ve.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ve.this.f21670u.set(false);
                        ve.this.apply();
                    }
                });
            }
        } else if (this.sl != this.f21667i && this.f21670u.compareAndSet(false, true)) {
            ve().execute(new Runnable() { // from class: com.byazt.wr.ve.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Map<String, Object> mapN = ve.this.n();
                        if (mapN != null) {
                            ve.this.f21669t.c(mapN, ve.this.ve);
                        }
                        ve.this.f21670u.set(false);
                    } catch (Exception e10) {
                        ve.this.c("apply write error", (Throwable) e10);
                    }
                }
            });
        }
    }

    @Override // com.byazt.iy.n
    public void applySync() {
        if (!this.f21671x) {
            if (this.f21670u.compareAndSet(false, true)) {
                c(new Runnable() { // from class: com.byazt.wr.ve.5
                    @Override // java.lang.Runnable
                    public void run() {
                        ve.this.f21670u.set(false);
                        ve.this.applySync();
                    }
                });
            }
        } else if (this.f21670u.compareAndSet(false, true)) {
            try {
                Map<String, Object> mapN = n();
                if (mapN != null) {
                    this.f21669t.c(mapN, this.ve);
                }
                this.f21670u.set(false);
            } catch (Exception e10) {
                c("applySync write error", (Throwable) e10);
            }
        }
    }

    @Override // com.byazt.iy.n
    public void clear() {
        if (!this.f21671x) {
            c(new Runnable() { // from class: com.byazt.wr.ve.2
                @Override // java.lang.Runnable
                public void run() {
                    ve.this.f21665a.clear();
                    synchronized ("SharedPreferencesImpl") {
                        ve.this.sp.clear();
                        ve.ve(ve.this);
                    }
                }
            });
            return;
        }
        this.f21665a.clear();
        synchronized ("SharedPreferencesImpl") {
            this.sp.clear();
            this.f21667i++;
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean contains(String str) {
        boolean zContainsKey;
        if (str == null) {
            str = "";
        }
        synchronized (this.f21668n) {
            tt();
            zContainsKey = this.f21665a.containsKey(str);
        }
        return zContainsKey;
    }

    @Override // com.byazt.iy.n
    public int get(String str, int i10) {
        return getInt(str, i10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public Map<String, ?> getAll() {
        Map<String, ?> mapUj;
        if (!this.yp) {
            return uj();
        }
        synchronized (this.f21668n) {
            tt();
            mapUj = uj();
        }
        return mapUj;
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        boolean zC;
        if (str == null) {
            str = "";
        }
        if (!this.yp) {
            return c(str, z10);
        }
        synchronized (this.f21668n) {
            tt();
            zC = c(str, z10);
        }
        return zC;
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        float fC;
        if (str == null) {
            str = "";
        }
        if (!this.yp) {
            return c(str, f10);
        }
        synchronized (this.f21668n) {
            tt();
            fC = c(str, f10);
        }
        return fC;
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public int getInt(String str, int i10) {
        int iC;
        if (str == null) {
            str = "";
        }
        if (!this.yp) {
            return c(str, i10);
        }
        synchronized (this.f21668n) {
            tt();
            iC = c(str, i10);
        }
        return iC;
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public long getLong(String str, long j10) {
        long jC;
        if (str == null) {
            str = "";
        }
        if (!this.yp) {
            return c(str, j10);
        }
        synchronized (this.f21668n) {
            tt();
            jC = c(str, j10);
        }
        return jC;
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public String getString(String str, String str2) {
        String strC;
        if (str == null) {
            str = "";
        }
        if (!this.yp) {
            return c(str, str2);
        }
        synchronized (this.f21668n) {
            tt();
            strC = c(str, str2);
        }
        return strC;
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        Set<String> setC;
        if (str == null) {
            str = "";
        }
        if (!this.yp) {
            return c(str, set);
        }
        synchronized (this.f21668n) {
            tt();
            setC = c(str, set);
        }
        return setC;
    }

    @Override // com.byazt.iy.n
    public void put(String str, int i10) {
        c(str, Integer.valueOf(i10));
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // com.byazt.iy.n
    public void remove(String str) {
        synchronized ("SharedPreferencesImpl") {
            this.sp.put(str, null);
            this.f21667i++;
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> n() {
        HashMap map;
        synchronized ("SharedPreferencesImpl") {
            map = new HashMap(this.sp);
            this.sp = new HashMap();
        }
        HashMap map2 = new HashMap(this.f21665a);
        if (map.isEmpty() && map2.isEmpty()) {
            return map2;
        }
        int i10 = 0;
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            Object obj = map2.get(str);
            if (value == null) {
                if (obj != null) {
                    map2.remove(str);
                    i10++;
                }
            } else if (!value.equals(obj)) {
                map2.put(str, value);
                i10++;
            }
        }
        if (i10 > 0) {
            return map2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(com.byazt.yy.c cVar) {
        Map<String, Object> mapC;
        synchronized (this.f21668n) {
            if (this.f21671x) {
                return;
            }
            if (this.uj.exists()) {
                this.ve.delete();
                this.uj.renameTo(this.ve);
            }
            try {
                mapC = cVar.c(this.ve);
            } catch (Throwable th) {
                c("loadFromDisk error", th);
                mapC = null;
            }
            synchronized (this.f21668n) {
                try {
                    this.f21671x = true;
                    if (mapC != null) {
                        try {
                            for (Map.Entry<String, Object> entry : mapC.entrySet()) {
                                Object value = entry.getValue();
                                if (value != null) {
                                    String key = entry.getKey();
                                    if (key == null) {
                                        key = "";
                                    }
                                    this.f21665a.put(key, value);
                                }
                            }
                        } catch (Throwable th2) {
                            this.f21668n.notifyAll();
                            throw th2;
                        }
                    }
                    this.f21668n.notifyAll();
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            synchronized (this.f21666da) {
                Iterator<Runnable> it2 = this.f21666da.iterator();
                while (it2.hasNext()) {
                    it2.next().run();
                }
                this.f21666da.clear();
            }
        }
    }

    private Map<String, ?> uj() {
        HashMap map = new HashMap(this.f21665a);
        map.putAll(this.sp);
        return map;
    }

    private static ThreadPoolExecutor ve() {
        ThreadPoolExecutor threadPoolExecutor = f21664c;
        if (threadPoolExecutor != null) {
            return threadPoolExecutor;
        }
        synchronized (ve.class) {
            ThreadPoolExecutor threadPoolExecutor2 = f21664c;
            if (threadPoolExecutor2 != null) {
                return threadPoolExecutor2;
            }
            int i10 = tt;
            com.byazt.jtc.uj ujVar = new com.byazt.jtc.uj(i10, i10, 1000L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new x("SharedPreferencesImpl"));
            f21664c = ujVar;
            return ujVar;
        }
    }

    @Override // com.byazt.iy.n
    public long get(String str, long j10) {
        return getLong(str, j10);
    }

    @Override // com.byazt.iy.n
    public void put(String str, long j10) {
        c(str, Long.valueOf(j10));
    }

    @Override // com.byazt.iy.n
    public float get(String str, float f10) {
        return getFloat(str, f10);
    }

    @Override // com.byazt.iy.n
    public void put(String str, float f10) {
        c(str, Float.valueOf(f10));
    }

    @Override // com.byazt.iy.n
    public boolean get(String str, boolean z10) {
        return getBoolean(str, z10);
    }

    @Override // com.byazt.iy.n
    public void put(String str, boolean z10) {
        c(str, Boolean.valueOf(z10));
    }

    private void c(final com.byazt.yy.c cVar) {
        synchronized (this.f21668n) {
            this.f21671x = false;
        }
        ve().execute(new Runnable() { // from class: com.byazt.wr.ve.1
            @Override // java.lang.Runnable
            public void run() {
                ve.this.tt(cVar);
            }
        });
    }

    @Override // com.byazt.iy.n
    public String get(String str, String str2) {
        return getString(str, str2);
    }

    @Override // com.byazt.iy.n
    public void put(String str, String str2) {
        c(str, str2);
    }

    @Override // com.byazt.iy.n
    public Set<String> get(String str, Set<String> set) {
        return getStringSet(str, set);
    }

    @Override // com.byazt.iy.n
    public void put(String str, Set<String> set) {
        c(str, set);
    }

    private String c(String str, String str2) {
        try {
            Object obj = this.sp.get(str);
            if (obj == null) {
                obj = this.f21665a.get(str);
            }
            return obj != null ? String.valueOf(obj) : str2;
        } catch (Exception e10) {
            c("getValue error key =".concat(String.valueOf(str)), (Throwable) e10);
            return str2;
        }
    }

    private Set<String> c(String str, Set<String> set) {
        try {
            Set<String> set2 = (Set) this.sp.get(str);
            if (set2 == null) {
                set2 = (Set) this.f21665a.get(str);
            }
            return set2 != null ? set2 : set;
        } catch (Exception e10) {
            c("getValue error key =".concat(String.valueOf(str)), (Throwable) e10);
            return set;
        }
    }

    private int c(String str, int i10) {
        try {
            Object obj = this.sp.get(str);
            if (obj == null) {
                obj = this.f21665a.get(str);
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            if (obj instanceof Float) {
                return ((Float) obj).intValue();
            }
            return obj != null ? ((Integer) obj).intValue() : i10;
        } catch (Exception e10) {
            c("getValue error key =".concat(String.valueOf(str)), (Throwable) e10);
            return i10;
        }
    }

    private long c(String str, long j10) {
        try {
            Long l10 = (Long) this.sp.get(str);
            if (l10 == null) {
                l10 = (Long) this.f21665a.get(str);
            }
            return l10 != null ? l10.longValue() : j10;
        } catch (Exception e10) {
            c("getValue error key =".concat(String.valueOf(str)), (Throwable) e10);
            return j10;
        }
    }

    private void tt() {
        while (!this.f21671x) {
            try {
                this.f21668n.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    private float c(String str, float f10) {
        try {
            Object obj = this.sp.get(str);
            if (obj == null) {
                obj = this.f21665a.get(str);
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).floatValue();
            }
            if (obj instanceof Float) {
                return ((Float) obj).floatValue();
            }
            return obj != null ? ((Float) obj).floatValue() : f10;
        } catch (Exception e10) {
            c("getValue error key =".concat(String.valueOf(str)), (Throwable) e10);
            return f10;
        }
    }

    private boolean c(String str, boolean z10) {
        try {
            Boolean bool = (Boolean) this.sp.get(str);
            if (bool == null) {
                bool = (Boolean) this.f21665a.get(str);
            }
            return bool != null ? bool.booleanValue() : z10;
        } catch (Exception e10) {
            c("getValue error key =".concat(String.valueOf(str)), (Throwable) e10);
            return z10;
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c edit() {
        synchronized (this.f21668n) {
            tt();
        }
        return new c();
    }

    private void c(Runnable runnable) {
        synchronized (this.f21666da) {
            if (this.f21671x) {
                runnable.run();
            } else {
                this.f21666da.add(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void c(String str, T t10) {
        if (str == null) {
            str = "";
        }
        synchronized ("SharedPreferencesImpl") {
            this.sp.put(str, t10);
            this.f21667i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, Throwable th) {
        z zVar = (z) com.byazt.ut.uj.getService(NotificationCompat.CATEGORY_EVENT);
        if (zVar != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("file", this.ve.getAbsolutePath());
                jSONObject.put("msg", str);
                jSONObject.put("class", "SharedPreferencesImpl");
            } catch (JSONException unused) {
            }
            zVar.onExceptionEvent("kv", jSONObject, th);
        }
    }
}
