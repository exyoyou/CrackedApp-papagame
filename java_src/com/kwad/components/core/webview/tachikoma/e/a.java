package com.kwad.components.core.webview.tachikoma.e;

import android.text.TextUtils;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private List<Integer> auT;
    private final List<Integer> auU;

    /* JADX INFO: renamed from: com.kwad.components.core.webview.tachikoma.e.a$a, reason: collision with other inner class name */
    static class C0895a {
        private static final a auY = new a(0);
    }

    /* synthetic */ a(byte b10) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bQ(String str) {
        int iOptInt;
        try {
            iOptInt = new JSONObject(str).optInt("elementType");
        } catch (Exception unused) {
            iOptInt = Integer.MAX_VALUE;
        }
        if (this.auU.contains(Integer.valueOf(iOptInt))) {
            this.auT.add(Integer.valueOf(iOptInt));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ck(int i10) {
        if (this.auU.contains(Integer.valueOf(i10))) {
            this.auT.add(Integer.valueOf(i10));
        }
    }

    public static a zA() {
        return C0895a.auY;
    }

    public final void bR(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        by.runOnUiThread(new bi() { // from class: com.kwad.components.core.webview.tachikoma.e.a.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                a.this.bQ(str);
            }
        });
    }

    public final void cl(final int i10) {
        by.runOnUiThread(new bi() { // from class: com.kwad.components.core.webview.tachikoma.e.a.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                a.this.ck(i10);
            }
        });
    }

    public final List<Integer> zB() {
        return this.auT;
    }

    public final void zC() {
        this.auT.clear();
    }

    private a() {
        this.auT = new ArrayList();
        this.auU = Arrays.asList(123, 184, 185, 190, 199, 200);
    }
}
