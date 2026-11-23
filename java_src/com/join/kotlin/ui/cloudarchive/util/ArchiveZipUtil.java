package com.join.kotlin.ui.cloudarchive.util;

import com.join.mgps.va.overmind.k;
import com.sigmob.sdk.archives.tar.d;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u001c\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u000b0\tJ\u001e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;", "", "<init>", "()V", "zipActiveFilesKotlin", "", "file", "Ljava/io/File;", "files", "", "unZipActiveFilesKotlin", "", "fileZip", "zipActiveFiles", "zipFile", "zipOutputStream", "Ljava/util/zip/ZipOutputStream;", "byteArray", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ArchiveZipUtil {
    public void unZipActiveFilesKotlin(@NotNull String file, @NotNull File fileZip) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(fileZip, "fileZip");
        ZipUtilExtKt.unZipTo(fileZip, file);
    }

    public final void zipActiveFiles(@NotNull File file, @NotNull List<String> files) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(files, "files");
        try {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ZipOutputStream zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
            byte[] bArr = new byte[d.f78732b];
            Iterator<String> it2 = files.iterator();
            while (it2.hasNext()) {
                zipFile(zipOutputStream, new File(it2.next()), bArr);
            }
            zipOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(byteArray);
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }

    public void zipActiveFilesKotlin(@NotNull File file, @NotNull List<? extends File> files) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(files, "files");
        if (!file.exists() && !file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        ZipUtilExtKt.zipFrom(ZipUtilExtKt.zipOutputStream(file), files);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zipFile(@NotNull ZipOutputStream zipOutputStream, @NotNull File file, @NotNull byte[] byteArray) throws IOException {
        Intrinsics.checkNotNullParameter(zipOutputStream, "zipOutputStream");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(byteArray, "byteArray");
        if (!file.exists()) {
            return;
        }
        boolean z10 = true;
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                if (!(fileArrListFiles.length == 0)) {
                    z10 = false;
                }
            }
            if (z10) {
                return;
            }
            Iterator it2 = ArrayIteratorKt.iterator(fileArrListFiles);
            while (it2.hasNext()) {
                File file2 = (File) it2.next();
                Intrinsics.checkNotNull(file2);
                zipFile(zipOutputStream, file2, byteArray);
            }
            return;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        String absolutePath = file.getAbsolutePath();
        String strJ0 = k.f73277a.j0();
        Intrinsics.checkNotNull(absolutePath);
        if (StringsKt__StringsJVMKt.startsWith$default(absolutePath, strJ0, false, 2, null)) {
            Intrinsics.checkNotNull(absolutePath);
            absolutePath = StringsKt__StringsJVMKt.replace$default(absolutePath, strJ0 + '/', "", false, 4, (Object) null);
        }
        zipOutputStream.putNextEntry(new ZipEntry(absolutePath));
        BufferedInputStream bufferedInputStream = fileInputStream instanceof BufferedInputStream ? (BufferedInputStream) fileInputStream : new BufferedInputStream(fileInputStream, 8192);
        BufferedOutputStream bufferedOutputStream = zipOutputStream instanceof BufferedOutputStream ? (BufferedOutputStream) zipOutputStream : new BufferedOutputStream(zipOutputStream, 8192);
        while (true) {
            int i10 = bufferedInputStream.read(byteArray);
            if (!(i10 != -1)) {
                bufferedOutputStream.flush();
                fileInputStream.close();
                return;
            }
            bufferedOutputStream.write(byteArray, 0, i10);
        }
    }
}
