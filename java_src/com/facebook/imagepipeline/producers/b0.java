package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b0 extends d0 implements g1<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f28315e = "LocalContentUriThumbnailFetchProducer";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f28320j = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ContentResolver f28321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Class<?> f28314d = b0.class;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f28316f = {"_id", "_data"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f28317g = {"_data"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Rect f28318h = new Rect(0, 0, 512, 384);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Rect f28319i = new Rect(0, 0, 96, 96);

    public b0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, ContentResolver contentResolver) {
        super(executor, pooledByteBufferFactory);
        this.f28321c = contentResolver;
    }

    @Nullable
    private com.facebook.imagepipeline.image.e g(Uri uri, @Nullable com.facebook.imagepipeline.common.e resizeOptions) throws IOException {
        Cursor cursorQuery;
        com.facebook.imagepipeline.image.e eVarJ;
        if (resizeOptions == null || (cursorQuery = this.f28321c.query(uri, f28316f, null, null, null)) == null) {
            return null;
        }
        try {
            if (!cursorQuery.moveToFirst() || (eVarJ = j(resizeOptions, cursorQuery.getLong(cursorQuery.getColumnIndex("_id")))) == null) {
                return null;
            }
            eVarJ.i0(i(cursorQuery.getString(cursorQuery.getColumnIndex("_data"))));
            return eVarJ;
        } finally {
            cursorQuery.close();
        }
    }

    private static int h(String pathname) {
        if (pathname == null) {
            return -1;
        }
        return (int) new File(pathname).length();
    }

    private static int i(@Nullable String pathname) {
        if (pathname != null) {
            try {
                return com.facebook.imageutils.e.a(new ExifInterface(pathname).getAttributeInt("Orientation", 1));
            } catch (IOException e10) {
                i3.a.t(f28314d, e10, "Unable to retrieve thumbnail rotation for %s", pathname);
            }
        }
        return 0;
    }

    @Nullable
    private com.facebook.imagepipeline.image.e j(com.facebook.imagepipeline.common.e resizeOptions, long imageId) throws IOException {
        Cursor cursorQueryMiniThumbnail;
        int iK = k(resizeOptions);
        if (iK == 0 || (cursorQueryMiniThumbnail = MediaStore.Images.Thumbnails.queryMiniThumbnail(this.f28321c, imageId, iK, f28317g)) == null) {
            return null;
        }
        try {
            if (cursorQueryMiniThumbnail.moveToFirst()) {
                String str = (String) com.facebook.common.internal.i.i(cursorQueryMiniThumbnail.getString(cursorQueryMiniThumbnail.getColumnIndex("_data")));
                if (new File(str).exists()) {
                    return e(new FileInputStream(str), h(str));
                }
            }
            return null;
        } finally {
            cursorQueryMiniThumbnail.close();
        }
    }

    private static int k(com.facebook.imagepipeline.common.e resizeOptions) {
        Rect rect = f28319i;
        if (h1.b(rect.width(), rect.height(), resizeOptions)) {
            return 3;
        }
        Rect rect2 = f28318h;
        return h1.b(rect2.width(), rect2.height(), resizeOptions) ? 1 : 0;
    }

    @Override // com.facebook.imagepipeline.producers.g1
    public boolean b(@Nullable com.facebook.imagepipeline.common.e resizeOptions) {
        Rect rect = f28318h;
        return h1.b(rect.width(), rect.height(), resizeOptions);
    }

    @Override // com.facebook.imagepipeline.producers.d0
    @Nullable
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        Uri uriW = imageRequest.w();
        if (com.facebook.common.util.f.i(uriW)) {
            return g(uriW, imageRequest.s());
        }
        return null;
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected String f() {
        return f28315e;
    }
}
