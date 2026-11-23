package com.kwad.components.core.j;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.request.k;
import com.kwad.components.core.request.model.ImpInfo;
import com.kwad.sdk.core.network.f;
import com.kwad.sdk.core.network.o;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.response.model.BaseResultData;
import com.kwad.sdk.internal.api.SceneImpl;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static int aaL = 12;
    private static int aaM = 4;
    private static int aaN = 1;

    /* JADX INFO: renamed from: com.kwad.components.core.j.a$a, reason: collision with other inner class name */
    public interface InterfaceC0865a {
        void e(@Nullable List<c> list);

        void onError(int i10, String str);

        void onRequestResult(int i10);
    }

    public static void a(@NonNull SceneImpl sceneImpl, InterfaceC0865a interfaceC0865a) {
        a(15, aaM, sceneImpl, e.AGGREGATION, interfaceC0865a);
    }

    private static void a(int i10, int i11, @NonNull SceneImpl sceneImpl, final int i12, final InterfaceC0865a interfaceC0865a) {
        SceneImpl sceneImplM38clone = sceneImpl.m38clone();
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        sceneImplM38clone.setAdStyle(i10);
        sceneImplM38clone.setAdNum(i11);
        a(new ImpInfo(sceneImplM38clone), null, false, true, new k() { // from class: com.kwad.components.core.j.a.1
            @Override // com.kwad.components.core.request.l
            public final void b(@NonNull final AdResultData adResultData) {
                by.runOnUiThread(new bi() { // from class: com.kwad.components.core.j.a.1.2
                    @Override // com.kwad.sdk.utils.bi
                    public final void doTask() {
                        try {
                            interfaceC0865a.onRequestResult(adResultData.getAdTemplateList().size());
                        } catch (Throwable th) {
                            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
                        }
                    }
                });
                by.runOnUiThread(new bi() { // from class: com.kwad.components.core.j.a.1.3
                    @Override // com.kwad.sdk.utils.bi
                    public final void doTask() {
                        interfaceC0865a.e(a.b(adResultData.getAdTemplateList(), i12));
                        a.a(adResultData, jElapsedRealtime);
                    }
                });
            }

            @Override // com.kwad.components.core.request.l
            public final void onError(final int i13, final String str) {
                by.runOnUiThread(new bi() { // from class: com.kwad.components.core.j.a.1.1
                    @Override // com.kwad.sdk.utils.bi
                    public final void doTask() {
                        interfaceC0865a.onError(i13, str);
                    }
                });
            }
        }, false);
    }

    public static void b(@NonNull SceneImpl sceneImpl, InterfaceC0865a interfaceC0865a) {
        a(17, aaN, sceneImpl, e.aaY, interfaceC0865a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<c> b(List<AdTemplate> list, int i10) {
        ArrayList arrayList = new ArrayList();
        Iterator<AdTemplate> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new c(it2.next(), i10));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(AdResultData adResultData, long j10) {
        AdTemplate adTemplate;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (adResultData.getAdTemplateList().size() <= 0 || (adTemplate = adResultData.getAdTemplateList().get(0)) == null) {
            return;
        }
        com.kwad.components.core.p.a.vL().h(adTemplate, jElapsedRealtime - j10);
    }

    private static void a(final ImpInfo impInfo, List<String> list, boolean z10, boolean z11, @NonNull final k kVar, boolean z12) {
        final List list2 = null;
        final boolean z13 = false;
        final boolean z14 = true;
        final boolean z15 = false;
        new com.kwad.components.core.o.a(impInfo) { // from class: com.kwad.components.core.j.a.2
            @Override // com.kwad.components.core.o.a, com.kwad.sdk.core.network.a
            @NonNull
            /* JADX INFO: renamed from: pe, reason: merged with bridge method [inline-methods] */
            public final com.kwad.components.core.request.a createRequest() {
                com.kwad.components.core.request.a aVar = new com.kwad.components.core.request.a(impInfo, list2, z13, null);
                aVar.bS(z14 ? 1 : 0);
                return aVar;
            }
        }.request(new o<com.kwad.components.core.request.a, AdResultData>() { // from class: com.kwad.components.core.j.a.3
            private void n(@NonNull AdResultData adResultData) {
                if (!adResultData.isAdResultDataEmpty() || z15) {
                    kVar.b(adResultData);
                } else {
                    kVar.onError(com.kwad.sdk.core.network.e.aTe.errorCode, TextUtils.isEmpty(adResultData.testErrorMsg) ? com.kwad.sdk.core.network.e.aTe.msg : adResultData.testErrorMsg);
                }
            }

            private void o(int i10, String str) {
                kVar.onError(i10, str);
            }

            @Override // com.kwad.sdk.core.network.o, com.kwad.sdk.core.network.g
            public final /* synthetic */ void onError(@NonNull f fVar, int i10, String str) {
                o(i10, str);
            }

            @Override // com.kwad.sdk.core.network.o, com.kwad.sdk.core.network.g
            public final /* synthetic */ void onSuccess(@NonNull f fVar, @NonNull BaseResultData baseResultData) {
                n((AdResultData) baseResultData);
            }
        });
    }
}
