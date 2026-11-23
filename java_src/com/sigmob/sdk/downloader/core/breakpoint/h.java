package com.sigmob.sdk.downloader.core.breakpoint;

import android.util.SparseArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f80410a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray<c> f80411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, String> f80412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f80413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray<com.sigmob.sdk.downloader.core.a> f80414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<Integer> f80415f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<Integer> f80416g;

    public h() {
        this(new SparseArray(), new ArrayList(), new HashMap());
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(int id2) {
        return this.f80411b.get(id2);
    }

    synchronized int b() {
        int iIntValue;
        int i10 = 0;
        int size = 0;
        int i11 = 0;
        while (true) {
            iIntValue = 1;
            if (size < this.f80415f.size()) {
                Integer num = this.f80415f.get(size);
                if (num == null) {
                    i10 = i11 + 1;
                    break;
                }
                int iIntValue2 = num.intValue();
                if (i11 != 0) {
                    int i12 = i11 + 1;
                    if (iIntValue2 != i12) {
                        i10 = i12;
                        break;
                    }
                } else if (iIntValue2 != 1) {
                    i10 = 1;
                }
                size++;
                i11 = iIntValue2;
            }
            size = 0;
            break;
        }
        if (i10 != 0) {
            iIntValue = i10;
        } else if (!this.f80415f.isEmpty()) {
            List<Integer> list = this.f80415f;
            iIntValue = 1 + list.get(list.size() - 1).intValue();
            size = this.f80415f.size();
        }
        this.f80415f.add(size, Integer.valueOf(iIntValue));
        return iIntValue;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean c(int id2) {
        return this.f80416g.contains(Integer.valueOf(id2));
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void d(int id2) {
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public c e(int id2) {
        return null;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean f(int id2) {
        if (this.f80416g.contains(Integer.valueOf(id2))) {
            return false;
        }
        synchronized (this.f80416g) {
            if (this.f80416g.contains(Integer.valueOf(id2))) {
                return false;
            }
            this.f80416g.add(Integer.valueOf(id2));
            return true;
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean g(int id2) {
        boolean zRemove;
        synchronized (this.f80416g) {
            zRemove = this.f80416g.remove(Integer.valueOf(id2));
        }
        return zRemove;
    }

    public h(SparseArray<c> storedInfos, List<Integer> fileDirtyList, HashMap<String, String> responseFilenameMap) {
        this.f80414e = new SparseArray<>();
        this.f80411b = storedInfos;
        this.f80416g = fileDirtyList;
        this.f80412c = responseFilenameMap;
        this.f80413d = new k();
        int size = storedInfos.size();
        this.f80415f = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            this.f80415f.add(Integer.valueOf(storedInfos.valueAt(i10).f80364a));
        }
        Collections.sort(this.f80415f);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f task) {
        int iC = task.c();
        c cVar = new c(iC, task.i(), task.l(), task.d());
        synchronized (this) {
            this.f80411b.put(iC, cVar);
            this.f80414e.remove(iC);
        }
        return cVar;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public synchronized int b(com.sigmob.sdk.downloader.f task) {
        Integer numA = this.f80413d.a(task);
        if (numA != null) {
            return numA.intValue();
        }
        int size = this.f80411b.size();
        for (int i10 = 0; i10 < size; i10++) {
            c cVarValueAt = this.f80411b.valueAt(i10);
            if (cVarValueAt != null && cVarValueAt.a(task)) {
                return cVarValueAt.f80364a;
            }
        }
        int size2 = this.f80414e.size();
        for (int i11 = 0; i11 < size2; i11++) {
            com.sigmob.sdk.downloader.core.a aVarValueAt = this.f80414e.valueAt(i11);
            if (aVarValueAt != null && aVarValueAt.a(task)) {
                return aVarValueAt.c();
            }
        }
        int iB = b();
        this.f80414e.put(iB, task.d(iB));
        this.f80413d.a(task, iB);
        return iB;
    }

    h(SparseArray<c> storedInfos, List<Integer> fileDirtyList, HashMap<String, String> responseFilenameMap, SparseArray<com.sigmob.sdk.downloader.core.a> unStoredTasks, List<Integer> sortedOccupiedIds, k keyToIdMap) {
        this.f80414e = unStoredTasks;
        this.f80416g = fileDirtyList;
        this.f80411b = storedInfos;
        this.f80412c = responseFilenameMap;
        this.f80415f = sortedOccupiedIds;
        this.f80413d = keyToIdMap;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f task, c ignored) {
        SparseArray<c> sparseArrayClone;
        synchronized (this) {
            sparseArrayClone = this.f80411b.clone();
        }
        int size = sparseArrayClone.size();
        for (int i10 = 0; i10 < size; i10++) {
            c cVarValueAt = sparseArrayClone.valueAt(i10);
            if (cVarValueAt != ignored && cVarValueAt.a(task)) {
                return cVarValueAt;
            }
        }
        return null;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public synchronized void b(int id2) {
        this.f80411b.remove(id2);
        if (this.f80414e.get(id2) == null) {
            this.f80415f.remove(Integer.valueOf(id2));
        }
        this.f80413d.a(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public String a(String url) {
        return this.f80412c.get(url);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(int id2, com.sigmob.sdk.downloader.core.cause.a cause, Exception exception) {
        if (cause == com.sigmob.sdk.downloader.core.cause.a.COMPLETED) {
            b(id2);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(c info, int blockIndex, long increaseLength) throws IOException {
        c cVar = this.f80411b.get(info.f80364a);
        if (info != cVar) {
            throw new IOException("Info not on store!");
        }
        cVar.b(blockIndex).a(increaseLength);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a() {
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a(c breakpointInfo) {
        String strM = breakpointInfo.m();
        if (breakpointInfo.d() && strM != null) {
            this.f80412c.put(breakpointInfo.l(), strM);
        }
        c cVar = this.f80411b.get(breakpointInfo.f80364a);
        if (cVar == null) {
            return false;
        }
        if (cVar == breakpointInfo) {
            return true;
        }
        synchronized (this) {
            this.f80411b.put(breakpointInfo.f80364a, breakpointInfo.p());
        }
        return true;
    }
}
