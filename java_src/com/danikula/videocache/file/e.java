package com.danikula.videocache.file;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes9.dex */
public abstract class e implements com.danikula.videocache.file.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f26030a = Executors.newSingleThreadExecutor();

    private class a implements Callable<Void> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final File f26031b;

        public a(File file) {
            this.f26031b = file;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            e.this.e(this.f26031b);
            return null;
        }
    }

    private long d(List<File> list) {
        Iterator<File> it2 = list.iterator();
        long length = 0;
        while (it2.hasNext()) {
            length += it2.next().length();
        }
        return length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(File file) throws IOException {
        d.e(file);
        f(d.a(file.getParentFile()));
    }

    private void f(List<File> list) {
        long jD = d(list);
        int size = list.size();
        for (File file : list) {
            if (!b(file, jD, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    jD -= length;
                    com.danikula.videocache.h.h("Cache file " + file + " is deleted because it exceeds cache limit");
                } else {
                    com.danikula.videocache.h.e("Error deleting file " + file + " for trimming cache");
                }
            }
        }
    }

    @Override // com.danikula.videocache.file.a
    public void a(File file) throws IOException {
        this.f26030a.submit(new a(file));
    }

    protected abstract boolean b(File file, long j10, int i10);
}
