package com.byazt.lr;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.gq.t;
import com.byazt.hs.i;
import com.byazt.hu.u;
import com.byazt.nr.m;
import java.io.BufferedInputStream;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 155, 15})
public class uj extends com.byazt.w.x<Long, Bitmap> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<Long, SoftReference<c>> f16765c;

    public interface c {
        void c(Bitmap bitmap);
    }

    @com.byazt.zqa.c(c = {0, 1, 155, 153})
    private static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static uj f16768c = new uj();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int tt(int i10, int i11, BitmapFactory.Options options) {
        int i12 = options.outWidth;
        if (i12 > i10 || options.outHeight > i11) {
            return Math.min(Math.round(i12 / i10), Math.round(options.outHeight / i11));
        }
        return 1;
    }

    private uj() {
        super(8, 8);
        this.f16765c = new HashMap();
    }

    public static uj c() {
        return tt.f16768c;
    }

    public void c(long j10, @NonNull c cVar) {
        if (get(Long.valueOf(j10)) != null) {
            cVar.c(get(Long.valueOf(j10)));
        } else {
            this.f16765c.put(Long.valueOf(j10), new SoftReference<>(cVar));
        }
    }

    public void c(final long j10, final long j11, final String str) {
        if (get(Long.valueOf(j10)) != null) {
            SoftReference<c> softReferenceRemove = this.f16765c.remove(Long.valueOf(j10));
            if (softReferenceRemove == null || softReferenceRemove.get() == null) {
                return;
            }
            softReferenceRemove.get().c(get(Long.valueOf(j10)));
            return;
        }
        if (TextUtils.isEmpty(str)) {
            sp.c(12, j11);
        } else {
            com.byazt.hu.ve.c((com.byazt.hu.ve.c<Object, R>) new com.byazt.hu.ve.c<Object, Object>() { // from class: com.byazt.lr.uj.2
                @Override // com.byazt.hu.ve.c
                public Object c(Object obj) throws Throwable {
                    BufferedInputStream bufferedInputStream;
                    Throwable th;
                    try {
                        i iVarC = com.byazt.zz.ve.c(true, 0, str, null);
                        if (iVarC == null) {
                            com.byazt.w.a.c(null);
                            return null;
                        }
                        bufferedInputStream = new BufferedInputStream(iVarC.c());
                        try {
                            try {
                                bufferedInputStream.mark(bufferedInputStream.available());
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inJustDecodeBounds = true;
                                BitmapFactory.decodeStream(bufferedInputStream, null, options);
                                int i10 = options.outWidth;
                                int i11 = options.outHeight;
                                int iC = u.c(t.getContext(), 60.0f);
                                options.inSampleSize = uj.tt(iC, iC, options);
                                options.inJustDecodeBounds = false;
                                bufferedInputStream.reset();
                                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(bufferedInputStream, null, options);
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.putOpt("ttdownloader_type", "load_bitmap");
                                    jSONObject.putOpt("bm_original_w", Integer.valueOf(i10));
                                    jSONObject.putOpt("bm_original_h", Integer.valueOf(i11));
                                    jSONObject.putOpt("bm_bytes", Integer.valueOf(bitmapDecodeStream == null ? -1 : bitmapDecodeStream.getByteCount()));
                                } catch (Exception e10) {
                                    m.c(e10);
                                }
                                com.byazt.zn.c.c().c("ttd_pref_monitor", jSONObject, j11);
                                uj.this.put(Long.valueOf(j10), bitmapDecodeStream);
                                com.byazt.w.a.c(bufferedInputStream);
                            } catch (Exception e11) {
                                e = e11;
                                com.byazt.dm.ve.c().c(e, "BitmapCache loadBitmap");
                                com.byazt.w.a.c(bufferedInputStream);
                            }
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            com.byazt.w.a.c(bufferedInputStream);
                            throw th;
                        }
                    } catch (Exception e12) {
                        e = e12;
                        bufferedInputStream = null;
                    } catch (Throwable th3) {
                        bufferedInputStream = null;
                        th = th3;
                        com.byazt.w.a.c(bufferedInputStream);
                        throw th;
                    }
                    com.byazt.dm.ve.c().c(e, "BitmapCache loadBitmap");
                    com.byazt.w.a.c(bufferedInputStream);
                    return null;
                }
            }, (Object) null).c(new com.byazt.hu.ve.c<Object, Object>() { // from class: com.byazt.lr.uj.1
                @Override // com.byazt.hu.ve.c
                public Object c(Object obj) {
                    SoftReference softReference = (SoftReference) uj.this.f16765c.remove(Long.valueOf(j10));
                    if (softReference == null || softReference.get() == null) {
                        return null;
                    }
                    ((c) softReference.get()).c(uj.this.get(Long.valueOf(j10)));
                    return null;
                }
            }).c();
        }
    }
}
