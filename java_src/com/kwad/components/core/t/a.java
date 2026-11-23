package com.kwad.components.core.t;

import android.content.Context;
import androidx.annotation.NonNull;
import com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile a alm;
    private com.kwad.sdk.utils.j ali;
    private List<WeakReference<OfflineOnAudioConflictListener>> alj = new ArrayList();
    private boolean alk = false;
    private boolean all = false;

    private a(@NonNull Context context) {
        init(context);
    }

    public static a aO(@NonNull Context context) {
        if (alm == null) {
            synchronized (a.class) {
                if (alm == null) {
                    alm = new a(context.getApplicationContext());
                }
            }
        }
        return alm;
    }

    private void init(Context context) {
        this.alk = false;
        com.kwad.sdk.utils.j jVar = new com.kwad.sdk.utils.j(context);
        this.ali = jVar;
        jVar.c(new com.kwad.sdk.utils.j.a() { // from class: com.kwad.components.core.t.a.1
            @Override // com.kwad.sdk.utils.j.a
            public final void onAudioBeOccupied() {
                Iterator it2 = a.this.alj.iterator();
                while (it2.hasNext()) {
                    WeakReference weakReference = (WeakReference) it2.next();
                    if (weakReference == null) {
                        it2.remove();
                    } else {
                        OfflineOnAudioConflictListener offlineOnAudioConflictListener = (OfflineOnAudioConflictListener) weakReference.get();
                        if (offlineOnAudioConflictListener != null) {
                            offlineOnAudioConflictListener.onAudioBeOccupied();
                        } else {
                            it2.remove();
                        }
                    }
                }
                a.a(a.this, true);
            }

            @Override // com.kwad.sdk.utils.j.a
            public final void onAudioBeReleased() {
                Iterator it2 = a.this.alj.iterator();
                while (it2.hasNext()) {
                    WeakReference weakReference = (WeakReference) it2.next();
                    if (weakReference == null) {
                        it2.remove();
                    } else {
                        OfflineOnAudioConflictListener offlineOnAudioConflictListener = (OfflineOnAudioConflictListener) weakReference.get();
                        if (offlineOnAudioConflictListener != null) {
                            offlineOnAudioConflictListener.onAudioBeReleased();
                        } else {
                            it2.remove();
                        }
                    }
                }
            }
        });
    }

    public final void b(OfflineOnAudioConflictListener offlineOnAudioConflictListener) {
        Iterator<WeakReference<OfflineOnAudioConflictListener>> it2 = this.alj.iterator();
        while (it2.hasNext()) {
            WeakReference<OfflineOnAudioConflictListener> next = it2.next();
            if (next == null || next.get() == offlineOnAudioConflictListener) {
                it2.remove();
            }
        }
    }

    public final boolean bd(boolean z10) {
        com.kwad.sdk.utils.j jVar = this.ali;
        if (jVar == null) {
            return false;
        }
        if (!z10 && this.alk) {
            return false;
        }
        this.alk = true;
        this.all = false;
        return jVar.Ut();
    }

    public final boolean wD() {
        return this.all;
    }

    public final boolean wE() {
        return this.alk;
    }

    static /* synthetic */ boolean a(a aVar, boolean z10) {
        aVar.all = true;
        return true;
    }

    public final void a(OfflineOnAudioConflictListener offlineOnAudioConflictListener) {
        this.alj.add(new WeakReference<>(offlineOnAudioConflictListener));
    }
}
