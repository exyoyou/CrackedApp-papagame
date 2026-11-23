package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.ContactsContract;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a0 extends d0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28308d = "LocalContentUriFetchProducer";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f28309e = {"_id", "_data"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ContentResolver f28310c;

    public a0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, ContentResolver contentResolver) {
        super(executor, pooledByteBufferFactory);
        this.f28310c = contentResolver;
    }

    @Nullable
    private com.facebook.imagepipeline.image.e g(Uri uri) throws IOException {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = this.f28310c.openFileDescriptor(uri, "r");
            com.facebook.common.internal.i.i(parcelFileDescriptorOpenFileDescriptor);
            return e(new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()), (int) parcelFileDescriptorOpenFileDescriptor.getStatSize());
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        com.facebook.imagepipeline.image.e eVarG;
        InputStream inputStreamCreateInputStream;
        Uri uriW = imageRequest.w();
        if (!com.facebook.common.util.f.j(uriW)) {
            return (!com.facebook.common.util.f.i(uriW) || (eVarG = g(uriW)) == null) ? e((InputStream) com.facebook.common.internal.i.i(this.f28310c.openInputStream(uriW)), -1) : eVarG;
        }
        if (uriW.toString().endsWith("/photo")) {
            inputStreamCreateInputStream = this.f28310c.openInputStream(uriW);
        } else if (uriW.toString().endsWith("/display_photo")) {
            try {
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = this.f28310c.openAssetFileDescriptor(uriW, "r");
                com.facebook.common.internal.i.i(assetFileDescriptorOpenAssetFileDescriptor);
                inputStreamCreateInputStream = assetFileDescriptorOpenAssetFileDescriptor.createInputStream();
            } catch (IOException unused) {
                throw new IOException("Contact photo does not exist: " + uriW);
            }
        } else {
            InputStream inputStreamOpenContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.f28310c, uriW);
            if (inputStreamOpenContactPhotoInputStream == null) {
                throw new IOException("Contact photo does not exist: " + uriW);
            }
            inputStreamCreateInputStream = inputStreamOpenContactPhotoInputStream;
        }
        com.facebook.common.internal.i.i(inputStreamCreateInputStream);
        return e(inputStreamCreateInputStream, -1);
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected String f() {
        return f28308d;
    }
}
