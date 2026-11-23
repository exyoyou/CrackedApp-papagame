package com.byazt.byh;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.dna.qp;
import com.byazt.nr.m;
import com.byazt.ut.uj;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 791, 54})
public class ve extends com.byazt.byh.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set<c> f12182a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f12183c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Runnable f12184da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final tt f12185i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ReentrantReadWriteLock.WriteLock f12186n;
    public final Handler sl;
    public volatile long sp;
    public final LinkedHashMap<String, File> tt = new LinkedHashMap<>(0, 0.75f, true);
    public final ReentrantReadWriteLock.ReadLock uj;
    public final ReentrantReadWriteLock ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile float f12187x;

    public interface c {
        void c(String str);

        void c(Set<String> set);
    }

    @com.byazt.zqa.c(c = {0, 1, 791, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    private static final class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map<String, Integer> f12194c;

        private tt() {
            this.f12194c = new HashMap();
        }

        public synchronized void c(String str) {
            if (!TextUtils.isEmpty(str)) {
                Integer num = this.f12194c.get(str);
                if (num == null) {
                    this.f12194c.put(str, 1);
                    return;
                }
                this.f12194c.put(str, Integer.valueOf(num.intValue() + 1));
            }
        }

        public synchronized void tt(String str) {
            Integer num;
            if (!TextUtils.isEmpty(str) && (num = this.f12194c.get(str)) != null) {
                if (num.intValue() == 1) {
                    this.f12194c.remove(str);
                    return;
                }
                this.f12194c.put(str, Integer.valueOf(num.intValue() - 1));
            }
        }

        public synchronized boolean ve(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return this.f12194c.containsKey(str);
        }
    }

    public ve(File file) throws IOException {
        String str;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.ve = reentrantReadWriteLock;
        this.uj = reentrantReadWriteLock.readLock();
        this.f12186n = reentrantReadWriteLock.writeLock();
        this.f12182a = Collections.newSetFromMap(new ConcurrentHashMap());
        this.sp = 104857600L;
        this.f12187x = 0.5f;
        this.f12185i = new tt();
        this.f12184da = new Runnable() { // from class: com.byazt.byh.ve.1
            @Override // java.lang.Runnable
            public void run() {
                ((qp) uj.getService("thread_service")).executeNormalTask(new Runnable() { // from class: com.byazt.byh.ve.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ve veVar = ve.this;
                        veVar.tt(veVar.sp);
                    }
                });
            }
        };
        this.sl = new Handler(Looper.getMainLooper());
        if (file != null && file.exists() && file.isDirectory() && file.canRead() && file.canWrite()) {
            this.f12183c = file;
            ((qp) uj.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.byh.ve.2
                @Override // java.lang.Runnable
                public void run() {
                    ve.this.tt();
                }
            });
            return;
        }
        if (file == null) {
            str = " dir null";
        } else {
            str = "exists: " + file.exists() + ", isDirectory: " + file.isDirectory() + ", canRead: " + file.canRead() + ", canWrite: " + file.canWrite();
        }
        throw new IOException("dir error!  ".concat(String.valueOf(str)));
    }

    private void ve() {
        this.sl.removeCallbacks(this.f12184da);
        this.sl.postDelayed(this.f12184da, 10000L);
    }

    @Override // com.byazt.byh.c
    public File uj(String str) {
        if (!this.uj.tryLock()) {
            return null;
        }
        File file = this.tt.get(str);
        this.uj.unlock();
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt() {
        this.f12186n.lock();
        try {
            File[] fileArrListFiles = this.f12183c.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                final HashMap map = new HashMap(fileArrListFiles.length);
                ArrayList<File> arrayList = new ArrayList(fileArrListFiles.length);
                for (File file : fileArrListFiles) {
                    if (file.isFile()) {
                        arrayList.add(file);
                        map.put(file, Long.valueOf(file.lastModified()));
                    }
                }
                Collections.sort(arrayList, new Comparator<File>() { // from class: com.byazt.byh.ve.3
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                    public int compare(File file2, File file3) {
                        long jLongValue = ((Long) map.get(file2)).longValue() - ((Long) map.get(file3)).longValue();
                        if (jLongValue < 0) {
                            return -1;
                        }
                        return jLongValue > 0 ? 1 : 0;
                    }
                });
                for (File file2 : arrayList) {
                    this.tt.put(c(file2), file2);
                }
            }
            this.f12186n.unlock();
            ve();
        } catch (Throwable th) {
            this.f12186n.unlock();
            throw th;
        }
    }

    public void c(c cVar) {
        if (cVar != null) {
            this.f12182a.add(cVar);
        }
    }

    @Override // com.byazt.byh.c
    public File ve(String str) {
        this.uj.lock();
        File file = this.tt.get(str);
        this.uj.unlock();
        if (file != null) {
            return file;
        }
        File file2 = new File(this.f12183c, str);
        this.f12186n.lock();
        this.tt.put(str, file2);
        this.f12186n.unlock();
        Iterator<c> it2 = this.f12182a.iterator();
        while (it2.hasNext()) {
            it2.next().c(str);
        }
        ve();
        return file2;
    }

    public void c(long j10) {
        this.sp = j10;
        ve();
    }

    public void c() {
        com.byazt.utw.ve.c().tt();
        Context context = com.byazt.utw.uj.getContext();
        if (context != null) {
            com.byazt.emg.ve.c(context).c(0);
        }
        this.sl.removeCallbacks(this.f12184da);
        ((qp) uj.getService("thread_service")).executeNormalTask(new Runnable() { // from class: com.byazt.byh.ve.4
            @Override // java.lang.Runnable
            public void run() {
                ve.this.tt(0L);
            }
        });
    }

    @Override // com.byazt.byh.c
    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f12185i.c(str);
    }

    private String c(File file) {
        return file.getName();
    }

    @Override // com.byazt.byh.c
    public void tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f12185i.tt(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:43:0x00e4 A[LOOP:3: B:41:0x00de->B:43:0x00e4, LOOP_END] */
    public void tt(long j10) {
        HashSet hashSet;
        Iterator<c> it2;
        final HashSet hashSet2 = new HashSet();
        this.f12186n.lock();
        HashSet hashSet3 = null;
        try {
            Iterator<Map.Entry<String, File>> it3 = this.tt.entrySet().iterator();
            long length = 0;
            while (it3.hasNext()) {
                length += it3.next().getValue().length();
            }
            try {
                if (length <= j10) {
                    this.f12186n.unlock();
                    return;
                }
                long j11 = (long) (j10 * this.f12187x);
                hashSet = new HashSet();
                try {
                    for (Map.Entry<String, File> entry : this.tt.entrySet()) {
                        File value = entry.getValue();
                        if (value != null && value.exists()) {
                            if (!this.f12185i.ve(c(value))) {
                                long length2 = value.length();
                                File file = new File(value.getAbsolutePath() + "-tmp");
                                if (value.renameTo(file)) {
                                    hashSet2.add(file);
                                    length -= length2;
                                    hashSet.add(entry.getKey());
                                }
                            }
                        } else {
                            hashSet.add(entry.getKey());
                        }
                        if (length <= j11) {
                            break;
                        }
                    }
                    Iterator it4 = hashSet.iterator();
                    while (it4.hasNext()) {
                        this.tt.remove((String) it4.next());
                    }
                    this.f12186n.unlock();
                } catch (Throwable th) {
                    th = th;
                    hashSet3 = hashSet;
                    m.c(th);
                    this.f12186n.unlock();
                    hashSet = hashSet3;
                }
                it2 = this.f12182a.iterator();
                while (it2.hasNext()) {
                    it2.next().c(hashSet);
                }
                ((qp) uj.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.byh.ve.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it5 = hashSet2.iterator();
                        while (it5.hasNext()) {
                            try {
                                ((File) it5.next()).delete();
                            } catch (Throwable unused) {
                            }
                        }
                    }
                });
                m.c(th);
                this.f12186n.unlock();
                hashSet = hashSet3;
                it2 = this.f12182a.iterator();
                while (it2.hasNext()) {
                    it2.next().c(hashSet);
                }
                ((qp) uj.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.byh.ve.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it5 = hashSet2.iterator();
                        while (it5.hasNext()) {
                            try {
                                ((File) it5.next()).delete();
                            } catch (Throwable unused) {
                            }
                        }
                    }
                });
            } catch (Throwable th2) {
                this.f12186n.unlock();
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
