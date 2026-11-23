package cn.fly.tools.utils;

import android.content.Context;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Base64;
import cn.fly.commons.C1293r;
import cn.fly.tools.FlyLog;
import cn.fly.tools.log.NLog;
import cn.fly.tools.proguard.PublicMemberKeeper;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public class SharePrefrenceHelper implements PublicMemberKeeper {
    public static final String SP_CACHE_FOLDER = cn.fly.commons.m.a("005?ieffffgn<l");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f2249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile FlyPersistence f2250b;

    public SharePrefrenceHelper(Context context) {
        if (context != null) {
            this.f2249a = context.getApplicationContext();
        }
    }

    private int b(h hVar) {
        int iA = 0;
        try {
            int iB = hVar.b("key_o_verin", 0);
            if (iB != 0) {
                return iB;
            }
            iA = a();
            hVar.a("key_o_verin", iA);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return iA;
    }

    private String c(h hVar) {
        String strB = "";
        try {
            String strB2 = hVar.b("key_o_cdnm", "");
            if (!strB2.equals("")) {
                return strB2;
            }
            strB = b();
            hVar.a("key_o_cdnm", strB);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return strB;
    }

    public static boolean isMbSpFileExist(Context context, String str, int i10) {
        return a.a(context, str + "_" + i10);
    }

    public static boolean isMpfFileExist(Context context, String str, int i10) {
        return FlyPersistence.a(context, str + "_" + i10);
    }

    public void clear() {
        if (this.f2250b != null) {
            try {
                this.f2250b.a();
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
    }

    public Object get(String str) {
        return get(str, null);
    }

    @Deprecated
    public HashMap<String, Object> getAll() {
        if (this.f2250b != null) {
            try {
                return this.f2250b.b();
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return new HashMap<>();
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getBooleanThrowable(String str) throws FlyPersistence.NoValidDataException {
        return getBooleanThrowable(str, false);
    }

    public double getDouble(String str) {
        return getDouble(str, 0.0d);
    }

    public double getDoubleThrowable(String str) throws FlyPersistence.NoValidDataException {
        return getDoubleThrowable(str, 0.0d);
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public int getIntThrowable(String str) throws FlyPersistence.NoValidDataException {
        return getIntThrowable(str, 0);
    }

    public long getLong(String str) {
        return getLong(str, 0L);
    }

    public long getLongThrowable(String str) throws FlyPersistence.NoValidDataException {
        return getLongThrowable(str, 0L);
    }

    @Deprecated
    public Object getObj(String str, Object obj) {
        return get(str, obj);
    }

    public <T extends Parcelable> T getParcel(String str, Class<T> cls) {
        return (T) getParcel(str, cls, null);
    }

    public <T extends Parcelable> T[] getParcelArray(String str, Class<T> cls) {
        return (T[]) getParcelArray(str, cls, null);
    }

    public <T extends Parcelable> T[] getParcelArrayThrowable(String str, Class<T> cls) throws FlyPersistence.NoValidDataException {
        return (T[]) getParcelArrayThrowable(str, cls, null);
    }

    public <T extends Parcelable> List<T> getParcelList(String str, Class<T> cls) {
        return getParcelList(str, cls, null);
    }

    public <T extends Parcelable> List<T> getParcelListThrowable(String str, Class<T> cls) throws FlyPersistence.NoValidDataException {
        return getParcelListThrowable(str, cls, null);
    }

    public <T extends Parcelable> Map<String, T> getParcelMap(String str, Class<T> cls) {
        return getParcelMap(str, cls, null);
    }

    public <T extends Parcelable> Map<String, T> getParcelMapThrowable(String str, Class<T> cls) throws FlyPersistence.NoValidDataException {
        return getParcelMapThrowable(str, cls, null);
    }

    public <T extends Parcelable> T getParcelThrowable(String str, Class<T> cls) throws FlyPersistence.NoValidDataException {
        return (T) getParcelThrowable(str, cls, null);
    }

    public String getString(String str) {
        return getString(str, "");
    }

    public String getStringThrowable(String str) throws FlyPersistence.NoValidDataException {
        return getStringThrowable(str, "");
    }

    public Object getThrowable(String str) throws FlyPersistence.NoValidDataException {
        return getThrowable(str, null);
    }

    public void open(String str) {
        open(str, 0);
    }

    public void put(String str, Object obj) {
        put(str, obj, 0L);
    }

    @Deprecated
    public void putAll(HashMap<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public void putBoolean(String str, Boolean bool) {
        putBoolean(str, bool, 0L);
    }

    public void putDouble(String str, Double d10) {
        putDouble(str, d10, 0L);
    }

    public void putInt(String str, Integer num) {
        putInt(str, num, 0L);
    }

    public void putLong(String str, Long l10) {
        putLong(str, l10, 0L);
    }

    @Deprecated
    public void putObj(String str, Object obj) {
        if (obj == null && this.f2250b != null) {
            remove(str);
        } else if (this.f2250b != null) {
            put(str, obj);
        }
    }

    public void putParcel(String str, Parcelable parcelable) {
        putParcel(str, parcelable, 0L);
    }

    public <T extends Parcelable> void putParcelArray(String str, T[] tArr) {
        putParcelArray(str, tArr, 0L);
    }

    public <T extends Parcelable> void putParcelList(String str, List<T> list) {
        putParcelList(str, list, 0L);
    }

    public <T extends Parcelable> void putParcelMap(String str, Map<String, T> map) {
        putParcelMap(str, map, 0L);
    }

    public void putString(String str, String str2) {
        putString(str, str2, 0L);
    }

    public void remove(String str) {
        if (this.f2250b != null) {
            try {
                this.f2250b.a(str);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
    }

    public Object get(String str, Object obj) {
        try {
            return getThrowable(str, obj);
        } catch (FlyPersistence.NoValidDataException unused) {
            return obj;
        }
    }

    public boolean getBoolean(String str, boolean z10) {
        try {
            return getBooleanThrowable(str, z10);
        } catch (FlyPersistence.NoValidDataException unused) {
            return z10;
        }
    }

    public boolean getBooleanThrowable(String str, boolean z10) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                Object objA = this.f2250b.a((FlyPersistence.e<Object>) new FlyPersistence.e(str));
                if (objA == null) {
                    return z10;
                }
                if (objA instanceof Boolean) {
                    return ((Boolean) objA).booleanValue();
                }
                return ((Number) objA).byteValue() == 1;
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return z10;
    }

    public double getDouble(String str, double d10) {
        try {
            return getDoubleThrowable(str, d10);
        } catch (FlyPersistence.NoValidDataException unused) {
            return d10;
        }
    }

    public double getDoubleThrowable(String str, double d10) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                Double d11 = (Double) this.f2250b.a(new FlyPersistence.e(str));
                return d11 == null ? d10 : d11.doubleValue();
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return d10;
    }

    public int getInt(String str, int i10) {
        try {
            return getIntThrowable(str, i10);
        } catch (FlyPersistence.NoValidDataException unused) {
            return i10;
        }
    }

    public int getIntThrowable(String str, int i10) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                Integer num = (Integer) this.f2250b.a(new FlyPersistence.e(str));
                return num == null ? i10 : num.intValue();
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return i10;
    }

    public long getLong(String str, long j10) {
        try {
            return getLongThrowable(str, j10);
        } catch (FlyPersistence.NoValidDataException unused) {
            return j10;
        }
    }

    public long getLongThrowable(String str, long j10) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                Long l10 = (Long) this.f2250b.a(new FlyPersistence.e(str));
                return l10 == null ? j10 : l10.longValue();
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return j10;
    }

    public <T extends Parcelable> T getParcel(String str, Class<T> cls, T t10) {
        try {
            return (T) getParcelThrowable(str, cls, t10);
        } catch (FlyPersistence.NoValidDataException unused) {
            return t10;
        }
    }

    public <T extends Parcelable> T[] getParcelArray(String str, Class<T> cls, T[] tArr) {
        try {
            return (T[]) getParcelArrayThrowable(str, cls, tArr);
        } catch (FlyPersistence.NoValidDataException unused) {
            return tArr;
        }
    }

    public <T extends Parcelable> T[] getParcelArrayThrowable(String str, final Class<T> cls, final T[] tArr) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                T[] tArr2 = (T[]) ((Parcelable[]) this.f2250b.a((FlyPersistence.e) new FlyPersistence.e<T[]>(str) { // from class: cn.fly.tools.utils.SharePrefrenceHelper.8
                    /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/Object;)[TT; */
                    @Override // cn.fly.tools.utils.FlyPersistence.e
                    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                    public Parcelable[] a(Object obj) {
                        if (obj == null) {
                            return tArr;
                        }
                        HashMap[] mapArr = (HashMap[]) obj;
                        Parcelable[] parcelableArr = (Parcelable[]) Array.newInstance((Class<?>) cls, mapArr.length);
                        for (int i10 = 0; i10 < parcelableArr.length; i10++) {
                            parcelableArr[i10] = FlyPersistence.b.a((HashMap<Byte, Object>) mapArr[i10]).a((Parcelable) null);
                        }
                        return parcelableArr;
                    }
                }));
                return tArr2 != null ? tArr2 : tArr;
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return tArr;
    }

    public <T extends Parcelable> List<T> getParcelList(String str, Class<T> cls, List<T> list) {
        try {
            return getParcelListThrowable(str, cls, list);
        } catch (FlyPersistence.NoValidDataException unused) {
            return list;
        }
    }

    public <T extends Parcelable> List<T> getParcelListThrowable(String str, Class<T> cls, final List<T> list) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                List<T> list2 = (List) this.f2250b.a((FlyPersistence.e) new FlyPersistence.e<List<T>>(str) { // from class: cn.fly.tools.utils.SharePrefrenceHelper.6
                    @Override // cn.fly.tools.utils.FlyPersistence.e
                    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                    public List<T> a(Object obj) {
                        if (obj == null) {
                            return list;
                        }
                        List list3 = (List) obj;
                        ArrayList linkedList = (!(list3 instanceof ArrayList) && (list3 instanceof LinkedList)) ? new LinkedList() : new ArrayList();
                        Iterator it2 = list3.iterator();
                        while (it2.hasNext()) {
                            linkedList.add(FlyPersistence.b.a((HashMap<Byte, Object>) it2.next()).a((Parcelable) null));
                        }
                        return linkedList;
                    }
                });
                return list2 != null ? list2 : list;
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return list;
    }

    public <T extends Parcelable> Map<String, T> getParcelMap(String str, Class<T> cls, Map<String, T> map) {
        try {
            return getParcelMapThrowable(str, cls, map);
        } catch (FlyPersistence.NoValidDataException unused) {
            return map;
        }
    }

    public <T extends Parcelable> Map<String, T> getParcelMapThrowable(String str, Class<T> cls, final Map<String, T> map) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                Map<String, T> map2 = (Map) this.f2250b.a((FlyPersistence.e) new FlyPersistence.e<Map<String, T>>(str) { // from class: cn.fly.tools.utils.SharePrefrenceHelper.4
                    @Override // cn.fly.tools.utils.FlyPersistence.e
                    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                    public Map<String, T> a(Object obj) {
                        HashMap treeMap;
                        if (obj == null) {
                            return map;
                        }
                        Map map3 = (Map) obj;
                        if (map3 instanceof HashMap) {
                            treeMap = new HashMap();
                        } else if (map3 instanceof Hashtable) {
                            treeMap = new Hashtable();
                        } else {
                            treeMap = map3 instanceof TreeMap ? new TreeMap() : new HashMap();
                        }
                        for (Map.Entry entry : map3.entrySet()) {
                            treeMap.put(entry.getKey(), FlyPersistence.b.a((HashMap<Byte, Object>) entry.getValue()).a((Parcelable) null));
                        }
                        return (Map<String, T>) treeMap;
                    }
                });
                return map2 != null ? map2 : map;
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return map;
    }

    public <T> T getParcelThrowable(String str, Class<T> cls, final T t10) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                T t11 = (T) this.f2250b.a(new FlyPersistence.e<T>(str) { // from class: cn.fly.tools.utils.SharePrefrenceHelper.2
                    @Override // cn.fly.tools.utils.FlyPersistence.e
                    public T a(Object obj) {
                        return obj != null ? (T) FlyPersistence.b.a((HashMap<Byte, Object>) obj).a((Parcelable) t10) : (T) t10;
                    }
                });
                return t11 != null ? t11 : t10;
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return t10;
    }

    public String getString(String str, String str2) {
        try {
            return getStringThrowable(str, str2);
        } catch (FlyPersistence.NoValidDataException unused) {
            return str2;
        }
    }

    public String getStringThrowable(String str, String str2) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                String str3 = (String) this.f2250b.a(new FlyPersistence.e(str));
                return TextUtils.isEmpty(str3) ? str2 : str3;
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return str2;
    }

    public Object getThrowable(String str, final Object obj) throws FlyPersistence.NoValidDataException {
        if (this.f2250b != null) {
            try {
                Object objA = this.f2250b.a(new FlyPersistence.e<Object>(str) { // from class: cn.fly.tools.utils.SharePrefrenceHelper.9
                    @Override // cn.fly.tools.utils.FlyPersistence.e
                    public Object a(Object obj2) {
                        if (obj2 == null) {
                            return obj;
                        }
                        if (!(obj2 instanceof String) || !SharePrefrenceHelper.this.b((String) obj2)) {
                            return obj2;
                        }
                        try {
                            return SharePrefrenceHelper.this.a(Base64.decode((String) obj2, 2));
                        } catch (Throwable th) {
                            FlyLog.getInstance().d("Expected exc: " + th.getMessage(), new Object[0]);
                            return obj2;
                        }
                    }
                });
                if (objA == null) {
                    return obj;
                }
                if (!(objA instanceof String) || !b((String) objA)) {
                    return objA;
                }
                try {
                    return a(Base64.decode((String) objA, 2));
                } catch (Throwable th) {
                    FlyLog.getInstance().d("Expected exc: " + th.getMessage(), new Object[0]);
                    return objA;
                }
            } catch (FlyPersistence.NoValidDataException e10) {
                throw e10;
            } catch (Throwable th2) {
                FlyLog.getInstance().d(th2);
            }
        }
        return obj;
    }

    public void open(String str, int i10) {
        open(str, i10, null);
    }

    public void put(String str, Object obj, long j10) {
        if (this.f2250b != null) {
            try {
                this.f2250b.a(new FlyPersistence.i(str, obj, j10));
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
    }

    public void putBoolean(String str, Boolean bool, long j10) {
        if (this.f2250b == null || bool == null) {
            return;
        }
        try {
            this.f2250b.a(new FlyPersistence.i(str, Byte.valueOf((byte) (bool.booleanValue() ? 1 : 0)), j10));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public void putDouble(String str, Double d10, long j10) {
        if (this.f2250b == null || d10 == null) {
            return;
        }
        try {
            this.f2250b.a(new FlyPersistence.i(str, d10, j10));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public void putInt(String str, Integer num, long j10) {
        if (this.f2250b == null || num == null) {
            return;
        }
        try {
            this.f2250b.a(new FlyPersistence.i(str, num, j10));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public void putLong(String str, Long l10, long j10) {
        if (this.f2250b == null || l10 == null) {
            return;
        }
        try {
            this.f2250b.a(new FlyPersistence.i(str, l10, j10));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public void putParcel(String str, Parcelable parcelable, long j10) {
        if (this.f2250b != null) {
            try {
                this.f2250b.a(new FlyPersistence.i(str, parcelable, j10) { // from class: cn.fly.tools.utils.SharePrefrenceHelper.1
                    @Override // cn.fly.tools.utils.FlyPersistence.i
                    public Object c() {
                        Object objB = b();
                        if (objB != null) {
                            return new FlyPersistence.b((Parcelable) objB).c();
                        }
                        return null;
                    }
                });
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
    }

    public <T extends Parcelable> void putParcelArray(String str, T[] tArr, long j10) {
        if (this.f2250b == null || tArr == null || tArr.length <= 0) {
            return;
        }
        try {
            this.f2250b.a(new FlyPersistence.i(str, tArr, j10) { // from class: cn.fly.tools.utils.SharePrefrenceHelper.7
                @Override // cn.fly.tools.utils.FlyPersistence.i
                public Object c() {
                    Object objB = b();
                    if (objB == null) {
                        return null;
                    }
                    Parcelable[] parcelableArr = (Parcelable[]) objB;
                    int length = parcelableArr.length;
                    HashMap[] mapArr = new HashMap[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        mapArr[i10] = new FlyPersistence.b(parcelableArr[i10]).c();
                    }
                    return mapArr;
                }
            });
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public <T extends Parcelable> void putParcelList(String str, List<T> list, long j10) {
        if (this.f2250b == null || list == null || list.isEmpty()) {
            return;
        }
        this.f2250b.a(new FlyPersistence.i(str, list, j10) { // from class: cn.fly.tools.utils.SharePrefrenceHelper.5
            @Override // cn.fly.tools.utils.FlyPersistence.i
            public Object c() {
                Object objB = b();
                if (objB == null) {
                    return null;
                }
                List linkedList = (!(objB instanceof ArrayList) && (objB instanceof LinkedList)) ? new LinkedList() : new ArrayList();
                Iterator it2 = ((List) objB).iterator();
                while (it2.hasNext()) {
                    linkedList.add(new FlyPersistence.b((Parcelable) it2.next()).c());
                }
                return linkedList;
            }
        });
    }

    public <T extends Parcelable> void putParcelMap(String str, Map<String, T> map, long j10) {
        if (this.f2250b == null || map == null || map.isEmpty()) {
            return;
        }
        try {
            this.f2250b.a(new FlyPersistence.i(str, map, j10) { // from class: cn.fly.tools.utils.SharePrefrenceHelper.3
                @Override // cn.fly.tools.utils.FlyPersistence.i
                public Object c() {
                    Map treeMap;
                    Object objB = b();
                    if (objB == null) {
                        return null;
                    }
                    if (objB instanceof HashMap) {
                        treeMap = new HashMap();
                    } else if (objB instanceof Hashtable) {
                        treeMap = new Hashtable();
                    } else {
                        treeMap = objB instanceof TreeMap ? new TreeMap() : new HashMap();
                    }
                    for (Map.Entry entry : ((Map) objB).entrySet()) {
                        treeMap.put(entry.getKey(), new FlyPersistence.b((Parcelable) entry.getValue()).c());
                    }
                    return treeMap;
                }
            });
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public void putString(String str, String str2, long j10) {
        if (this.f2250b != null) {
            try {
                this.f2250b.a(new FlyPersistence.i(str, str2, j10));
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
    }

    private static final class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static File f2266c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private File f2267a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private HashMap<String, Object> f2268b = new HashMap<>();

        public a(Context context, String str) {
            if (context != null) {
                try {
                    File file = new File(a(context), str);
                    this.f2267a = file;
                    if (!file.getParentFile().exists()) {
                        this.f2267a.getParentFile().mkdirs();
                    }
                    if (!this.f2267a.exists()) {
                        this.f2267a.createNewFile();
                    }
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                    return;
                }
            }
            b();
        }

        private static synchronized File a(Context context) {
            if (f2266c == null) {
                f2266c = new File(context.getFilesDir(), SharePrefrenceHelper.SP_CACHE_FOLDER);
            }
            return f2266c;
        }

        private void b() {
            InputStreamReader inputStreamReader;
            BufferedReader bufferedReader;
            Throwable th;
            FileInputStream fileInputStream;
            synchronized (this.f2268b) {
                File file = this.f2267a;
                if (file != null && file.exists()) {
                    try {
                        fileInputStream = new FileInputStream(this.f2267a);
                        try {
                            inputStreamReader = new InputStreamReader(fileInputStream, "utf-8");
                            try {
                                bufferedReader = new BufferedReader(inputStreamReader);
                                try {
                                    StringBuilder sb2 = new StringBuilder();
                                    for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                                        if (sb2.length() > 0) {
                                            sb2.append("\n");
                                        }
                                        sb2.append(line);
                                    }
                                    this.f2268b = HashonHelper.fromJson(sb2.toString());
                                    C1293r.a(bufferedReader, inputStreamReader, fileInputStream);
                                } catch (Throwable th2) {
                                    th = th2;
                                    try {
                                        FlyLog.getInstance().w(th);
                                        C1293r.a(bufferedReader, inputStreamReader, fileInputStream);
                                    } catch (Throwable th3) {
                                        C1293r.a(bufferedReader, inputStreamReader, fileInputStream);
                                        throw th3;
                                    }
                                }
                            } catch (Throwable th4) {
                                bufferedReader = null;
                                th = th4;
                            }
                        } catch (Throwable th5) {
                            bufferedReader = null;
                            th = th5;
                            inputStreamReader = null;
                        }
                    } catch (Throwable th6) {
                        inputStreamReader = null;
                        bufferedReader = null;
                        th = th6;
                        fileInputStream = null;
                    }
                }
            }
        }

        public static synchronized boolean a(Context context, String str) {
            return new File(a(context), str).exists();
        }

        public HashMap<String, Object> a() {
            HashMap<String, Object> map;
            synchronized (this.f2268b) {
                map = new HashMap<>();
                map.putAll(this.f2268b);
            }
            return map;
        }
    }

    void a(String str, int i10) {
        String str2 = str + "_" + i10;
        FlyLog.getInstance().d("[CKCMP] mpf ck os, f: " + str2, new Object[0]);
        h hVar = new h(this.f2249a, "ovsp_" + str2);
        if (a(hVar) && FlyPersistence.b(this.f2249a, str2)) {
            hVar.b();
        }
    }

    public void open(String str, int i10, String str2) {
        String str3 = str + "_" + i10;
        this.f2250b = new FlyPersistence(this.f2249a, str3, str2);
        a(str3);
    }

    private String b() {
        return cn.fly.tools.b.e.a(this.f2249a).a("ro.build.version.release_or_codename");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        try {
            return Pattern.matches("^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)$", str);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return false;
        }
    }

    private boolean a(h hVar) {
        try {
            String strC = c(hVar);
            String strB = b();
            int iB = b(hVar);
            int iA = a();
            FlyLog.getInstance().d("[CKCMP] mpf ck os, c_cn: " + strC + ", r_cn: " + strB + ", c_ov: " + iB + ", r_ov: " + iA, new Object[0]);
            return (strC.equals(strB) && iB == iA) ? false : true;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return false;
        }
    }

    private int a() {
        return Build.VERSION.SDK_INT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(byte[] bArr) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        ObjectInputStream objectInputStream;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    Object object = objectInputStream.readObject();
                    C1293r.a(objectInputStream, byteArrayInputStream);
                    return object;
                } catch (Throwable th2) {
                    th = th2;
                    C1293r.a(objectInputStream, byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
            }
        } catch (Throwable th4) {
            byteArrayInputStream = null;
            th = th4;
            objectInputStream = null;
        }
    }

    private void a(String str) {
        HashMap<String, Object> mapA;
        if (getBoolean("k_m_sp_cpt_dn") || !a.a(this.f2249a, str)) {
            return;
        }
        FlyLog.getInstance().d("[MPF][" + str + "]Compat acquire", new Object[0]);
        a aVar = new a(this.f2249a, str);
        if (this.f2250b != null) {
            mapA = aVar.a();
            if (mapA != null && !mapA.isEmpty()) {
                putAll(mapA);
            }
            putBoolean("k_m_sp_cpt_dn", Boolean.TRUE);
        } else {
            mapA = null;
        }
        NLog flyLog = FlyLog.getInstance();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[MPF][");
        sb2.append(str);
        sb2.append("]Compat done, mv: ");
        sb2.append(mapA != null ? Integer.valueOf(mapA.size()) : null);
        flyLog.d(sb2.toString(), new Object[0]);
    }
}
