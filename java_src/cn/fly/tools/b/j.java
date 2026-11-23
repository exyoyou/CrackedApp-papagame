package cn.fly.tools.b;

import android.net.LocalServerSocket;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.os.Parcelable;
import android.os.Process;
import cn.fly.commons.C1293r;
import cn.fly.commons.ac;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.FlyPersistence;
import cn.fly.tools.utils.ReflectHelper;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f1896a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f1899d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile LocalServerSocket f1902g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile Thread f1903h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f1900e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile int f1901f = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile ExecutorService f1904i = ac.f1046e;

    public interface a {
        Object a(String str, ArrayList<Object> arrayList) throws Throwable;
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f1908a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList<Object> f1909b;

        private b(String str, ArrayList<Object> arrayList) {
            this.f1908a = str;
            this.f1909b = arrayList;
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f1910a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f1911b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f1912c;

        private c(boolean z10, Object obj, String str) {
            this.f1910a = z10;
            this.f1911b = obj;
            this.f1912c = str;
        }
    }

    public j(String str, int i10, a aVar) {
        this.f1897b = str;
        this.f1898c = i10;
        this.f1899d = aVar;
    }

    private synchronized boolean d() {
        if (this.f1901f != 2) {
            return this.f1901f == 1;
        }
        if (e()) {
            return false;
        }
        this.f1900e.set(false);
        this.f1901f = 0;
        a();
        return this.f1901f == 1;
    }

    private boolean e() {
        LocalSocket localSocket = new LocalSocket();
        try {
            localSocket.connect(new LocalSocketAddress(this.f1897b, LocalSocketAddress.Namespace.ABSTRACT));
            e(localSocket);
            return true;
        } catch (Throwable unused) {
            e(localSocket);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x007e A[Catch: all -> 0x0083, TryCatch #0 {, blocks: (B:27:0x007a, B:29:0x007e, B:30:0x0081), top: B:36:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public void f() {
        while (this.f1901f == 1) {
            try {
                final LocalSocket localSocketAccept = this.f1902g.accept();
                ExecutorService executorService = this.f1904i;
                if (executorService == null || executorService.isShutdown()) {
                    FlyLog.getInstance().d("IPC acceptLoop: executor unavailable, closing connection", new Object[0]);
                    e(localSocketAccept);
                    synchronized (this) {
                        if (this.f1901f == 1) {
                            g();
                        }
                    }
                    return;
                }
                try {
                    executorService.execute(new Runnable() { // from class: cn.fly.tools.b.j.2
                        @Override // java.lang.Runnable
                        public void run() {
                            j.this.b(localSocketAccept);
                        }
                    });
                } catch (Throwable th) {
                    FlyLog.getInstance().w("IPC acceptLoop: failed to submit task, error=" + th.getMessage());
                    e(localSocketAccept);
                    throw th;
                }
            } catch (Throwable th2) {
                FlyLog.getInstance().w("IPC acceptLoop: fatal error, stopping server runtime, error=" + th2.getMessage());
                synchronized (this) {
                    if (this.f1901f == 1) {
                        g();
                    }
                    return;
                }
            }
            FlyLog.getInstance().w("IPC acceptLoop: fatal error, stopping server runtime, error=" + th2.getMessage());
            synchronized (this) {
                if (this.f1901f == 1) {
                    g();
                }
                return;
            }
        }
    }

    private synchronized void g() {
        LocalServerSocket localServerSocket = this.f1902g;
        this.f1902g = null;
        if (localServerSocket != null) {
            try {
                localServerSocket.close();
            } catch (Throwable unused) {
            }
        }
        this.f1903h = null;
        this.f1900e.set(false);
        this.f1901f = 0;
    }

    public boolean b() {
        a();
        return this.f1901f == 2;
    }

    public boolean c() {
        a();
        return this.f1901f == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(LocalSocket localSocket) {
        try {
            localSocket.setSoTimeout(this.f1898c);
            if (!c(localSocket)) {
                e(localSocket);
                return;
            }
            try {
                a(localSocket, a(a(f(localSocket))));
            } catch (Throwable th) {
                FlyLog.getInstance().d("IPC handleSession: invalid request, error=" + th.getMessage(), new Object[0]);
                AnonymousClass1 anonymousClass1 = null;
                a(localSocket, new c(false, anonymousClass1, "invalid ipc request"));
                e(localSocket);
            }
        } catch (Throwable th2) {
            try {
                FlyLog.getInstance().w("IPC handleSession: error=" + th2.getMessage());
            } finally {
                e(localSocket);
            }
        }
    }

    private boolean c(LocalSocket localSocket) {
        int iD = d(localSocket);
        return iD > 0 && iD == Process.myUid();
    }

    public synchronized void a() {
        if (this.f1900e.get()) {
            return;
        }
        try {
            this.f1902g = new LocalServerSocket(this.f1897b);
            this.f1901f = 1;
            FlyLog.getInstance().d("IPC try started as SERVER", new Object[0]);
            this.f1903h = new cn.fly.tools.utils.j("DH-IPC") { // from class: cn.fly.tools.b.j.1
                @Override // cn.fly.tools.utils.j
                protected void a() throws Throwable {
                    j.this.f();
                }
            };
            this.f1903h.setDaemon(true);
            this.f1903h.start();
        } catch (Throwable unused) {
            FlyLog.getInstance().d("IPC started as CLIENT", new Object[0]);
            this.f1901f = 2;
        }
        this.f1900e.set(true);
    }

    private void e(LocalSocket localSocket) {
        if (localSocket == null) {
            return;
        }
        try {
            localSocket.close();
        } catch (Throwable unused) {
        }
    }

    private Object c(DataInputStream dataInputStream) throws Throwable {
        List arrayList;
        Map map;
        byte b10 = dataInputStream.readByte();
        int i10 = 0;
        switch (b10) {
            case 0:
                return null;
            case 1:
                return Boolean.valueOf(dataInputStream.readBoolean());
            case 2:
                return Integer.valueOf(dataInputStream.readInt());
            case 3:
                return Long.valueOf(dataInputStream.readLong());
            case 4:
                return Double.valueOf(dataInputStream.readDouble());
            case 5:
                return Float.valueOf(dataInputStream.readFloat());
            case 6:
                return a(dataInputStream);
            case 7:
                return b(dataInputStream);
            case 8:
                return a(b(dataInputStream), a(dataInputStream));
            case 9:
                String strA = a(dataInputStream);
                int i11 = dataInputStream.readInt();
                if (i11 >= 0 && i11 <= 1024) {
                    Class cls = Parcelable.class;
                    if (strA != null) {
                        try {
                            cls = Class.forName(strA);
                            break;
                        } catch (Throwable unused) {
                        }
                    }
                    Object objNewInstance = Array.newInstance((Class<?>) cls, i11);
                    while (i10 < i11) {
                        if (!dataInputStream.readBoolean()) {
                            Array.set(objNewInstance, i10, null);
                        } else {
                            Array.set(objNewInstance, i10, a(b(dataInputStream), strA));
                        }
                        i10++;
                    }
                    return objNewInstance;
                }
                throw new IllegalStateException("invalid array size: " + i11);
            case 10:
                byte b11 = dataInputStream.readByte();
                int i12 = dataInputStream.readInt();
                if (i12 < 0 || i12 > 65536) {
                    throw new IllegalStateException("invalid list size: " + i12);
                }
                if (b11 == 2) {
                    arrayList = new LinkedList();
                } else {
                    arrayList = new ArrayList(i12);
                }
                while (i10 < i12) {
                    arrayList.add(c(dataInputStream));
                    i10++;
                }
                return arrayList;
            case 11:
                byte b12 = dataInputStream.readByte();
                int i13 = dataInputStream.readInt();
                if (i13 < 0 || i13 > 65536) {
                    throw new IllegalStateException("invalid map size: " + i13);
                }
                if (b12 == 2) {
                    map = new Hashtable();
                } else if (b12 == 3) {
                    map = new TreeMap();
                } else {
                    map = new HashMap(i13);
                }
                while (i10 < i13) {
                    map.put(a(dataInputStream), c(dataInputStream));
                    i10++;
                }
                return map;
            case 12:
                return c(b(dataInputStream));
            default:
                throw new IllegalStateException("unknown ipc value type: " + ((int) b10));
        }
    }

    private int d(LocalSocket localSocket) {
        if (localSocket == null) {
            return -1;
        }
        try {
            ReflectHelper.importClass("android.net.LocalSocket");
            Object objInvokeInstanceMethod = ReflectHelper.invokeInstanceMethod(localSocket, "getPeerCredentials", new Object[0]);
            if (objInvokeInstanceMethod == null) {
                return -1;
            }
            ReflectHelper.importClass("android.net.Credentials");
            Object objInvokeInstanceMethod2 = ReflectHelper.invokeInstanceMethod(objInvokeInstanceMethod, "getUid", new Object[0]);
            if (objInvokeInstanceMethod2 instanceof Integer) {
                return ((Integer) objInvokeInstanceMethod2).intValue();
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public Object a(String str, ArrayList<Object> arrayList) throws Throwable {
        a();
        for (int i10 = 0; i10 <= 1; i10++) {
            LocalSocket localSocket = new LocalSocket();
            try {
                localSocket.connect(new LocalSocketAddress(this.f1897b, LocalSocketAddress.Namespace.ABSTRACT));
                localSocket.setSoTimeout(this.f1898c);
                if (c(localSocket)) {
                    a(localSocket, str, arrayList);
                    Object obj = a(localSocket).f1911b;
                    try {
                        localSocket.close();
                    } catch (Throwable unused) {
                    }
                    return obj;
                }
                FlyLog.getInstance().d("IPC security violation: untrusted peer, uid=" + d(localSocket), new Object[0]);
                throw new Throwable("untrusted ipc peer");
            } catch (Throwable th) {
                try {
                    FlyLog.getInstance().d("IPC exception" + th.toString(), new Object[0]);
                    try {
                        localSocket.close();
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable th2) {
                    try {
                        localSocket.close();
                    } catch (Throwable unused3) {
                    }
                    throw th2;
                }
            }
        }
        FlyLog.getInstance().d("IPC request failed after all retries, key=" + str, new Object[0]);
        if (d() && this.f1901f == 1) {
            c cVarA = a(new b(str, arrayList));
            if (cVarA.f1910a) {
                return cVarA.f1911b;
            }
            throw new Throwable(cVarA.f1912c == null ? "ipc failed" : cVarA.f1912c);
        }
        throw new IllegalStateException("ipc request failed");
    }

    private int b(Object obj) {
        if (obj instanceof Hashtable) {
            return 2;
        }
        return obj instanceof TreeMap ? 3 : 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private c b(byte[] bArr) throws Throwable {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        if (dataInputStream.readInt() == 1179209795) {
            short s10 = dataInputStream.readShort();
            boolean z10 = true;
            if (s10 == 1) {
                if (dataInputStream.readByte() == 2) {
                    String str = null;
                    Object[] objArr = 0;
                    Object[] objArr2 = 0;
                    Object[] objArr3 = 0;
                    if (dataInputStream.readBoolean()) {
                        return new c(z10, c(dataInputStream), str);
                    }
                    return new c(false, objArr2 == true ? 1 : 0, a(dataInputStream));
                }
                throw new IllegalStateException("invalid ipc message type");
            }
            throw new IllegalStateException("unsupported ipc version: " + ((int) s10));
        }
        throw new IllegalStateException("invalid ipc magic");
    }

    private byte[] f(LocalSocket localSocket) throws Throwable {
        DataInputStream dataInputStream = new DataInputStream(localSocket.getInputStream());
        int i10 = dataInputStream.readInt();
        if (i10 >= 0 && i10 <= 5242880) {
            byte[] bArr = new byte[i10];
            dataInputStream.readFully(bArr);
            return bArr;
        }
        throw new IllegalStateException("invalid packet len: " + i10);
    }

    private byte[] b(DataInputStream dataInputStream) throws Throwable {
        int i10 = dataInputStream.readInt();
        if (i10 < 0) {
            return null;
        }
        if (i10 <= 5242880) {
            byte[] bArr = new byte[i10];
            dataInputStream.readFully(bArr);
            return bArr;
        }
        throw new IllegalStateException("ipc bytes too large: " + i10);
    }

    private c a(LocalSocket localSocket) throws Throwable {
        c cVarB = b(f(localSocket));
        if (cVarB.f1910a) {
            return cVarB;
        }
        throw new Throwable(cVarB.f1912c == null ? "ipc failed" : cVarB.f1912c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private c a(b bVar) {
        a aVar = this.f1899d;
        boolean z10 = false;
        String str = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        if (aVar != null && bVar != null) {
            try {
                return new c(true, aVar.a(bVar.f1908a, bVar.f1909b), str);
            } catch (Throwable th) {
                String message = th.getMessage();
                if (message == null || message.length() == 0) {
                    message = th.getClass().getSimpleName();
                }
                return new c(z10, objArr4 == true ? 1 : 0, message);
            }
        }
        return new c(z10, objArr2 == true ? 1 : 0, "handler unavailable");
    }

    private byte[] c(Object obj) throws Throwable {
        if (obj == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = null;
        try {
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream2.writeObject(obj);
                objectOutputStream2.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                C1293r.a(objectOutputStream2, byteArrayOutputStream);
                return byteArray;
            } catch (Throwable th) {
                th = th;
                objectOutputStream = objectOutputStream2;
                C1293r.a(objectOutputStream, byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private int a(Object obj) {
        return obj instanceof LinkedList ? 2 : 1;
    }

    private void a(LocalSocket localSocket, String str, ArrayList<Object> arrayList) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeInt(1179209795);
        dataOutputStream.writeShort(1);
        dataOutputStream.writeByte(1);
        a(dataOutputStream, str);
        if (arrayList != null && !arrayList.isEmpty()) {
            dataOutputStream.writeInt(arrayList.size());
            Iterator<Object> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                a(dataOutputStream, it2.next());
            }
        } else {
            dataOutputStream.writeInt(0);
        }
        dataOutputStream.flush();
        a(localSocket, byteArrayOutputStream.toByteArray());
        C1293r.a(byteArrayOutputStream);
    }

    private Object c(byte[] bArr) throws Throwable {
        ObjectInputStream objectInputStream;
        Throwable th;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
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
            objectInputStream = null;
            th = th3;
        }
    }

    private void a(LocalSocket localSocket, c cVar) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeInt(1179209795);
        dataOutputStream.writeShort(1);
        dataOutputStream.writeByte(2);
        if (cVar != null) {
            dataOutputStream.writeBoolean(cVar.f1910a);
            if (cVar.f1910a) {
                try {
                    a(dataOutputStream, cVar.f1911b);
                } catch (Throwable th) {
                    byteArrayOutputStream.reset();
                    dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    dataOutputStream.writeInt(1179209795);
                    dataOutputStream.writeShort(1);
                    dataOutputStream.writeByte(2);
                    dataOutputStream.writeBoolean(false);
                    String message = th.getMessage();
                    if (message == null || message.length() == 0) {
                        message = "ipc encode failed";
                    }
                    a(dataOutputStream, message);
                }
            } else {
                a(dataOutputStream, cVar.f1912c);
            }
            dataOutputStream.flush();
            a(localSocket, byteArrayOutputStream.toByteArray());
            C1293r.a(byteArrayOutputStream);
            return;
        }
        dataOutputStream.writeBoolean(false);
        a(dataOutputStream, "null response");
        dataOutputStream.flush();
        a(localSocket, byteArrayOutputStream.toByteArray());
    }

    private b a(byte[] bArr) throws Throwable {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        if (dataInputStream.readInt() == 1179209795) {
            short s10 = dataInputStream.readShort();
            if (s10 == 1) {
                if (dataInputStream.readByte() == 1) {
                    String strA = a(dataInputStream);
                    int i10 = dataInputStream.readInt();
                    if (i10 >= 0 && i10 <= 1024) {
                        ArrayList arrayList = new ArrayList(i10);
                        for (int i11 = 0; i11 < i10; i11++) {
                            arrayList.add(c(dataInputStream));
                        }
                        return new b(strA, arrayList);
                    }
                    throw new IllegalStateException("invalid ipc param count: " + i10);
                }
                throw new IllegalStateException("invalid ipc message type");
            }
            throw new IllegalStateException("unsupported ipc version: " + ((int) s10));
        }
        throw new IllegalStateException("invalid ipc magic");
    }

    private void a(LocalSocket localSocket, byte[] bArr) throws Throwable {
        if (bArr != null) {
            if (bArr.length <= 5242880) {
                DataOutputStream dataOutputStream = new DataOutputStream(localSocket.getOutputStream());
                dataOutputStream.writeInt(bArr.length);
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                return;
            }
            throw new IllegalStateException("ipc payload too large: " + bArr.length);
        }
        throw new IllegalArgumentException("payload == null");
    }

    private void a(DataOutputStream dataOutputStream, String str) throws Throwable {
        if (str == null) {
            dataOutputStream.writeInt(-1);
            return;
        }
        byte[] bytes = str.getBytes(f1896a);
        dataOutputStream.writeInt(bytes.length);
        dataOutputStream.write(bytes);
    }

    private String a(DataInputStream dataInputStream) throws Throwable {
        int i10 = dataInputStream.readInt();
        if (i10 < 0) {
            return null;
        }
        if (i10 <= 262144) {
            byte[] bArr = new byte[i10];
            dataInputStream.readFully(bArr);
            return new String(bArr, f1896a);
        }
        throw new IllegalStateException("ipc string too large: " + i10);
    }

    private void a(DataOutputStream dataOutputStream, byte[] bArr) throws Throwable {
        if (bArr == null) {
            dataOutputStream.writeInt(-1);
        } else {
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
    }

    private void a(DataOutputStream dataOutputStream, Object obj) throws Throwable {
        Class<?> componentType;
        if (obj == null) {
            dataOutputStream.writeByte(0);
            return;
        }
        boolean z10 = true;
        if (obj instanceof Boolean) {
            dataOutputStream.writeByte(1);
            dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof Integer) {
            dataOutputStream.writeByte(2);
            dataOutputStream.writeInt(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Long) {
            dataOutputStream.writeByte(3);
            dataOutputStream.writeLong(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            dataOutputStream.writeByte(4);
            dataOutputStream.writeDouble(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Float) {
            dataOutputStream.writeByte(5);
            dataOutputStream.writeFloat(((Float) obj).floatValue());
            return;
        }
        if (obj instanceof String) {
            dataOutputStream.writeByte(6);
            a(dataOutputStream, (String) obj);
            return;
        }
        if (obj instanceof byte[]) {
            dataOutputStream.writeByte(7);
            a(dataOutputStream, (byte[]) obj);
            return;
        }
        if (obj instanceof Parcelable) {
            dataOutputStream.writeByte(8);
            Parcelable parcelable = (Parcelable) obj;
            a(dataOutputStream, parcelable.getClass().getName());
            a(dataOutputStream, a(parcelable));
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray() && (componentType = cls.getComponentType()) != null && Parcelable.class.isAssignableFrom(componentType)) {
            dataOutputStream.writeByte(9);
            a(dataOutputStream, componentType.getName());
            int length = Array.getLength(obj);
            dataOutputStream.writeInt(length);
            for (int i10 = 0; i10 < length; i10++) {
                Object obj2 = Array.get(obj, i10);
                if (obj2 == null) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    a(dataOutputStream, a((Parcelable) obj2));
                }
            }
            return;
        }
        if (obj instanceof List) {
            dataOutputStream.writeByte(10);
            dataOutputStream.writeByte(a(obj));
            List list = (List) obj;
            dataOutputStream.writeInt(list.size());
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                a(dataOutputStream, it2.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            Iterator it3 = map.keySet().iterator();
            while (it3.hasNext()) {
                if (!(it3.next() instanceof String)) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                dataOutputStream.writeByte(11);
                dataOutputStream.writeByte(b(obj));
                dataOutputStream.writeInt(map.size());
                for (Object obj3 : map.keySet()) {
                    a(dataOutputStream, (String) obj3);
                    a(dataOutputStream, map.get(obj3));
                }
                return;
            }
            FlyLog.getInstance().d("IPC writeValue: Map with non-String keys, using Java serialization", new Object[0]);
            dataOutputStream.writeByte(12);
            a(dataOutputStream, c(obj));
            return;
        }
        if (obj instanceof Serializable) {
            FlyLog.getInstance().d("IPC writeValue: unsupported type, using Java serialization, type=" + obj.getClass().getName(), new Object[0]);
            dataOutputStream.writeByte(12);
            a(dataOutputStream, c(obj));
            return;
        }
        throw new IllegalArgumentException("unsupported value for ipc: " + obj.getClass().getName());
    }

    private byte[] a(Parcelable parcelable) {
        return parcelable == null ? new byte[0] : new FlyPersistence.b(parcelable).b();
    }

    private Object a(byte[] bArr, String str) {
        if (bArr != null && bArr.length != 0 && str != null && str.length() != 0) {
            try {
                Class<?> cls = Class.forName(str);
                if (Parcelable.class.isAssignableFrom(cls)) {
                    return new FlyPersistence.b(cls, bArr).a((Parcelable) null);
                }
                return null;
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
