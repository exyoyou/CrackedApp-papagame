package com.sigmob.sdk.videocache.file;

import com.czhj.sdk.logger.SigmobLog;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e implements com.sigmob.sdk.videocache.file.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f81920a = Executors.newSingleThreadExecutor();

    private class a implements Callable<Void> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final File f81922b;

        public a(File file) {
            this.f81922b = file;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            e.this.b(this.f81922b);
            return null;
        }
    }

    private long b(List<File> files) {
        Iterator<File> it2 = files.iterator();
        long length = 0;
        while (it2.hasNext()) {
            length += it2.next().length();
        }
        return length;
    }

    protected abstract boolean a(File file, long totalSize, int totalCount);

    /* JADX INFO: Access modifiers changed from: private */
    public void b(File file) throws IOException {
        d.c(file);
        a(d.b(file.getParentFile()));
    }

    @Override // com.sigmob.sdk.videocache.file.a
    public void a(File file) throws IOException {
        this.f81920a.submit(new a(file));
    }

    private void a(List<File> files) {
        long jB = b(files);
        int size = files.size();
        for (File file : files) {
            if (!a(file, jB, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    jB -= length;
                    SigmobLog.i("Cache file " + file + " is deleted because it exceeds cache limit");
                } else {
                    SigmobLog.e("Error deleting file " + file + " for trimming cache");
                }
            }
        }
    }
}
