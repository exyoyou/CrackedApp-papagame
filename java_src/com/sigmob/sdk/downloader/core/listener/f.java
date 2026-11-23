package com.sigmob.sdk.downloader.core.listener;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class f implements com.sigmob.sdk.downloader.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.sigmob.sdk.downloader.c[] f80706a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<com.sigmob.sdk.downloader.c> f80707a = new ArrayList();

        public a a(com.sigmob.sdk.downloader.c listener) {
            if (listener != null && !this.f80707a.contains(listener)) {
                this.f80707a.add(listener);
            }
            return this;
        }

        public boolean b(com.sigmob.sdk.downloader.c listener) {
            return this.f80707a.remove(listener);
        }

        public f a() {
            List<com.sigmob.sdk.downloader.c> list = this.f80707a;
            return new f((com.sigmob.sdk.downloader.c[]) list.toArray(new com.sigmob.sdk.downloader.c[list.size()]));
        }
    }

    f(com.sigmob.sdk.downloader.c[] listenerList) {
        this.f80706a = listenerList;
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, int blockIndex, int responseCode, Map<String, List<String>> responseHeaderFields) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.a(task, blockIndex, responseCode, responseHeaderFields);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a_(com.sigmob.sdk.downloader.f task) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.a_(task);
        }
    }

    public int b(com.sigmob.sdk.downloader.c targetListener) {
        int i10 = 0;
        while (true) {
            com.sigmob.sdk.downloader.c[] cVarArr = this.f80706a;
            if (i10 >= cVarArr.length) {
                return -1;
            }
            if (cVarArr[i10] == targetListener) {
                return i10;
            }
            i10++;
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void c(com.sigmob.sdk.downloader.f task, int blockIndex, long contentLength) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.c(task, blockIndex, contentLength);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, int blockIndex, long contentLength) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.a(task, blockIndex, contentLength);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void b(com.sigmob.sdk.downloader.f task, int blockIndex, long increaseBytes) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.b(task, blockIndex, increaseBytes);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, int responseCode, Map<String, List<String>> responseHeaderFields) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.a(task, responseCode, responseHeaderFields);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void b(com.sigmob.sdk.downloader.f task, int blockIndex, Map<String, List<String>> requestHeaderFields) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.b(task, blockIndex, requestHeaderFields);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.a(task, info);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info, com.sigmob.sdk.downloader.core.cause.b cause) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.a(task, info, cause);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.a(task, cause, realCause);
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, Map<String, List<String>> requestHeaderFields) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            cVar.a(task, requestHeaderFields);
        }
    }

    public boolean a(com.sigmob.sdk.downloader.c targetListener) {
        for (com.sigmob.sdk.downloader.c cVar : this.f80706a) {
            if (cVar == targetListener) {
                return true;
            }
        }
        return false;
    }
}
