package com.byazt.vm;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemProperties;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.bytedance.embed_dr.OaidVivoImpl;
import com.haima.hmcp.beans.HmInputMappingContent;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 117})
public final class rl implements nu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final tt<Boolean> f21251c = new tt<Boolean>() { // from class: com.byazt.vm.rl.1
        @Override // com.byazt.vm.tt
        /* JADX INFO: renamed from: ve, reason: merged with bridge method [inline-methods] */
        public Boolean c(Object... objArr) {
            return Boolean.valueOf("1".equals(rl.tt("persist.sys.identifierid.supported", "0")));
        }
    };

    public rl(Context context) {
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0046 A[Catch: Exception -> 0x0052, all -> 0x0060, TRY_LEAVE, TryCatch #0 {all -> 0x0060, blocks: (B:16:0x0040, B:18:0x0046, B:27:0x005c), top: B:35:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    @Nullable
    @WorkerThread
    private static String query(@NonNull Context context, @OaidVivoImpl.Type int i10, String str) throws Throwable {
        Uri uri;
        Uri uri2;
        boolean zMoveToNext;
        String string = null;
        string = null;
        string = null;
        string = null;
        ?? r10 = 0;
        try {
            if (i10 == 0) {
                uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID");
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        uri2 = null;
                    } else {
                        uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_".concat(String.valueOf(str)));
                    }
                    if (uri2 != null) {
                        try {
                            context = context.getContentResolver().query(uri2, null, null, null, null);
                            if (context != 0) {
                                try {
                                    zMoveToNext = context.moveToNext();
                                    context = context;
                                    if (zMoveToNext) {
                                        string = context.getString(context.getColumnIndex(HmInputMappingContent.FIELD_VALUE));
                                        context = context;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                    com.byazt.yv.da.c(e);
                                    context = context;
                                }
                            }
                        } catch (Exception e11) {
                            e = e11;
                            context = 0;
                        } catch (Throwable th) {
                            th = th;
                            com.byazt.yv.u.c((Cursor) r10);
                            throw th;
                        }
                        com.byazt.yv.u.c((Cursor) context);
                    }
                    return string;
                }
                uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_".concat(String.valueOf(str)));
            }
            if (uri2 != null) {
                context = context.getContentResolver().query(uri2, null, null, null, null);
                if (context != 0) {
                    zMoveToNext = context.moveToNext();
                    context = context;
                    if (zMoveToNext) {
                        string = context.getString(context.getColumnIndex(HmInputMappingContent.FIELD_VALUE));
                        context = context;
                    }
                }
                com.byazt.yv.u.c((Cursor) context);
            }
            return string;
        } catch (Throwable th2) {
            th = th2;
            r10 = context;
        }
        uri2 = uri;
    }

    @Override // com.byazt.vm.nu
    public boolean tt(Context context) {
        return c();
    }

    @Override // com.byazt.vm.nu
    public nu.c ve(Context context) {
        nu.c cVar = new nu.c();
        cVar.tt = query(context, 0, null);
        return cVar;
    }

    public static boolean c() {
        return f21251c.tt(new Object[0]).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String tt(String str, String str2) {
        try {
            return SystemProperties.get(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }
}
