package com.kwad.sdk.a.a;

import android.content.Context;
import com.baidu.mobads.sdk.internal.bn;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.au;
import com.kwad.sdk.utils.bg;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import com.kwad.sdk.utils.y;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static volatile b aGX;
    private Stack<AdTemplate> aGV = new Stack<>();
    private File aGW;
    private boolean mHasInit;

    public interface a {
        void Hk();

        void hK();
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized File Hg() {
        File file = this.aGW;
        if (file != null) {
            return file;
        }
        String strEi = bg.ei(ServiceProvider.getContext());
        File file2 = new File(strEi);
        if (!file2.exists()) {
            file2.mkdir();
        }
        File file3 = new File(strEi + File.separator + "uninstall_ad");
        this.aGW = file3;
        if (!file3.exists()) {
            try {
                this.aGW.createNewFile();
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
                com.kwad.components.core.d.a.reportSdkCaughtException(e10);
            }
        }
        return this.aGW;
    }

    private static boolean Hh() {
        return com.kwad.sdk.core.config.e.JG() == 0;
    }

    public static b Hi() {
        if (aGX == null) {
            synchronized (b.class) {
                if (aGX == null) {
                    aGX = new b();
                }
            }
        }
        return aGX;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void bo(AdTemplate adTemplate) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        Exception e10;
        Iterator<AdTemplate> it2 = this.aGV.iterator();
        boolean z10 = false;
        while (it2.hasNext()) {
            if (com.kwad.sdk.core.response.helper.e.eY(it2.next()) == com.kwad.sdk.core.response.helper.e.eY(adTemplate)) {
                it2.remove();
                z10 = true;
            }
        }
        if (!z10) {
            return;
        }
        try {
            objectOutputStream = new ObjectOutputStream(new FileOutputStream(this.aGW));
            try {
                try {
                    objectOutputStream.writeObject(this.aGV);
                    com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                } catch (Exception e11) {
                    e10 = e11;
                    com.kwad.sdk.core.d.c.d("InstallTipsDataManager", " removeApkDownloadedData e" + e10);
                    com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                }
            } catch (Throwable th2) {
                th = th2;
                com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                throw th;
            }
        } catch (Exception e12) {
            objectOutputStream = null;
            e10 = e12;
        } catch (Throwable th3) {
            objectOutputStream = null;
            th = th3;
            com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void bp(AdTemplate adTemplate) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        Exception e10;
        this.aGV.add(adTemplate);
        try {
            objectOutputStream = new ObjectOutputStream(new FileOutputStream(Hg()));
            try {
                try {
                    objectOutputStream.writeObject(this.aGV);
                    com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                } catch (Exception e11) {
                    e10 = e11;
                    com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
                    com.kwad.components.core.d.a.reportSdkCaughtException(e10);
                    com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                }
            } catch (Throwable th2) {
                th = th2;
                com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
                throw th;
            }
        } catch (Exception e12) {
            objectOutputStream = null;
            e10 = e12;
        } catch (Throwable th3) {
            objectOutputStream = null;
            th = th3;
            com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File bs(AdTemplate adTemplate) {
        File file = new File(com.kwad.sdk.core.download.a.J(com.kwad.sdk.core.response.helper.e.eO(adTemplate)));
        if (y.Q(file)) {
            return file;
        }
        return null;
    }

    public final synchronized AdTemplate Hj() {
        AdTemplate adTemplate;
        Stack stack = (Stack) this.aGV.clone();
        while (!stack.isEmpty()) {
            adTemplate = (AdTemplate) stack.pop();
            if (adTemplate != null) {
                String str = com.kwad.sdk.core.response.helper.e.eO(adTemplate).adBaseInfo.appPackageName;
                Context context = ServiceProvider.getContext();
                File fileBs = bs(adTemplate);
                if (fileBs == null || !fileBs.exists() || fileBs.lastModified() + bn.f7592d <= System.currentTimeMillis() || au.aw(context, str)) {
                }
            }
        }
        adTemplate = null;
        return adTemplate;
    }

    public final void bq(final AdTemplate adTemplate) {
        if (Hh() || adTemplate == null) {
            return;
        }
        i.execute(new bi() { // from class: com.kwad.sdk.a.a.b.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                b.this.bp(adTemplate);
            }
        });
    }

    public final void br(final AdTemplate adTemplate) {
        if (Hh() || adTemplate == null) {
            return;
        }
        i.execute(new bi() { // from class: com.kwad.sdk.a.a.b.3
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                b.this.bo(adTemplate);
            }
        });
    }

    static /* synthetic */ boolean a(b bVar) {
        return Hh();
    }

    public final synchronized void a(final a aVar) {
        if (this.mHasInit) {
            return;
        }
        this.mHasInit = true;
        i.execute(new bi() { // from class: com.kwad.sdk.a.a.b.1
            /* JADX WARN: Not initialized variable reg: 4, insn: 0x0123: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]) (LINE:292), block:B:71:0x0123 */
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                ObjectInputStream objectInputStream;
                ObjectOutputStream objectOutputStream;
                try {
                    if (b.a(b.this) || com.kwad.sdk.a.a.a.b.dV() > 0) {
                        return;
                    }
                    HashMap map = new HashMap();
                    File fileHg = b.this.Hg();
                    ObjectOutputStream objectOutputStream2 = null;
                    try {
                        try {
                            if (!fileHg.exists()) {
                                com.kwad.sdk.core.d.c.d("InstallTipsDataManager", "getCanShowDownloadData mDownloadFile is not exists");
                            }
                            b.this.aGV.clear();
                            objectInputStream = new ObjectInputStream(new FileInputStream(fileHg));
                            try {
                                b.this.aGV = (Stack) objectInputStream.readObject();
                                if (!b.this.aGV.isEmpty()) {
                                    Stack stack = new Stack();
                                    while (!b.this.aGV.isEmpty()) {
                                        AdTemplate adTemplate = (AdTemplate) b.this.aGV.pop();
                                        if (adTemplate != null) {
                                            String strValueOf = String.valueOf(com.kwad.sdk.core.response.helper.e.eY(adTemplate));
                                            File fileBs = b.bs(adTemplate);
                                            if (fileBs == null || !fileBs.exists() || fileBs.lastModified() + bn.f7592d <= System.currentTimeMillis()) {
                                                map.put(strValueOf, Boolean.TRUE);
                                            } else {
                                                stack.push(adTemplate);
                                            }
                                        }
                                    }
                                    while (!stack.isEmpty()) {
                                        b.this.aGV.push((AdTemplate) stack.pop());
                                    }
                                }
                            } catch (Exception e10) {
                                e = e10;
                                com.kwad.sdk.core.d.c.d("InstallTipsDataManager", " getCanShowDownloadBannerData e" + e);
                                a aVar2 = aVar;
                                if (aVar2 != null) {
                                    aVar2.Hk();
                                    com.kwad.sdk.crash.utils.b.closeQuietly(objectInputStream);
                                    com.kwad.sdk.crash.utils.b.closeQuietly(objectInputStream);
                                    return;
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            objectOutputStream2 = objectOutputStream;
                            com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream2);
                            throw th;
                        }
                    } catch (Exception e11) {
                        e = e11;
                        objectInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream2);
                        throw th;
                    }
                    com.kwad.sdk.crash.utils.b.closeQuietly(objectInputStream);
                    try {
                        try {
                            ObjectOutputStream objectOutputStream3 = new ObjectOutputStream(new FileOutputStream(fileHg));
                            try {
                                objectOutputStream3.writeObject(b.this.aGV);
                                com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream3);
                            } catch (Exception e12) {
                                e = e12;
                                objectOutputStream2 = objectOutputStream3;
                                com.kwad.sdk.core.d.c.printStackTraceOnly(e);
                                com.kwad.components.core.d.a.reportSdkCaughtException(e);
                                a aVar3 = aVar;
                                if (aVar3 != null) {
                                    aVar3.Hk();
                                    com.kwad.sdk.crash.utils.b.closeQuietly(objectInputStream);
                                    com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream2);
                                    return;
                                }
                                com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream2);
                                com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream2);
                                throw th;
                            } catch (Throwable th3) {
                                th = th3;
                                objectOutputStream2 = objectOutputStream3;
                                com.kwad.sdk.crash.utils.b.closeQuietly(objectOutputStream2);
                                throw th;
                            }
                        } catch (Exception e13) {
                            e = e13;
                        }
                        a aVar4 = aVar;
                        if (aVar4 != null) {
                            aVar4.hK();
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (Throwable th5) {
                    com.kwad.components.core.d.a.reportSdkCaughtException(th5);
                }
            }
        });
    }
}
