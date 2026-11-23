package com.join.kotlin.ui.cloudarchive.util;

import android.os.Build;
import com.sigmob.sdk.archives.d;
import d6.a;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0006\u001a\u0015\u0010\u0007\u001a\u00020\b*\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010\u0007\u001a\u00020\b*\u00020\u000b2\u0006\u0010\t\u001a\u00020\nH\u0086\u0004\u001a\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002\u001a#\u0010\r\u001a\u00020\b*\u00020\u00042\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u000f\"\u00020\n¢\u0006\u0002\u0010\u0010\u001a\u0018\u0010\r\u001a\u00020\b*\u00020\u00042\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012\u001a)\u0010\u0013\u001a\u00020\b*\u00020\u00042\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0002\u0010\u0014\u001a0\u0010\u0015\u001a\u00020\b*\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00062\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u0014\u0010\u001c\u001a\u00020\b*\u00020\u00042\u0006\u0010\u001d\u001a\u00020\nH\u0002\u001a\n\u0010\u001e\u001a\u00020\u001a*\u00020\u0002¨\u0006\u001f"}, d2 = {"zipInputStream", "Ljava/util/zip/ZipInputStream;", "Ljava/io/File;", "zipOutputStream", "Ljava/util/zip/ZipOutputStream;", "Ljava/io/InputStream;", "Ljava/io/OutputStream;", "unZipTo", "", "path", "", "Ljava/util/zip/ZipFile;", "checkUnzipFolder", "zipFrom", "srcs", "", "(Ljava/util/zip/ZipOutputStream;[Ljava/lang/String;)V", "files", "", d.f78712e, "(Ljava/util/zip/ZipOutputStream;[Ljava/io/File;Ljava/lang/String;)V", "writeTo", "outputStream", "bufferSize", "", "closeInput", "", "closeOutput", "createEmptyFolder", "location", "smartCreateNewFile", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipUtilExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipUtilExt.kt\ncom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n11228#2:154\n11563#2,3:155\n13472#2,2:162\n1869#3,2:158\n1869#3,2:160\n*S KotlinDebug\n*F\n+ 1 ZipUtilExt.kt\ncom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt\n*L\n60#1:154\n60#1:155,3\n92#1:162,2\n62#1:158,2\n76#1:160,2\n*E\n"})
public final class ZipUtilExtKt {
    private static final void checkUnzipFolder(String str) {
        File file = new File(str);
        if (file.isFile()) {
            throw new RuntimeException("路径不能是文件");
        }
        if (!file.exists() && !file.mkdirs()) {
            throw new RuntimeException("创建文件夹失败");
        }
    }

    private static final void createEmptyFolder(ZipOutputStream zipOutputStream, String str) throws IOException {
        zipOutputStream.putNextEntry(new ZipEntry(str));
        zipOutputStream.closeEntry();
    }

    public static final boolean smartCreateNewFile(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        if (file.exists()) {
            return true;
        }
        if (file.getParentFile().exists()) {
            return file.createNewFile();
        }
        return file.getParentFile().mkdirs() && file.createNewFile();
    }

    public static final void unZipTo(@NotNull File file, @NotNull String path) throws IOException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        checkUnzipFolder(path);
        Charset charsetForName = Charset.forName("GBK");
        if (Build.VERSION.SDK_INT >= 24) {
            unZipTo(a.a(file, charsetForName), path);
        } else {
            unZipTo(new ZipFile(file), path);
        }
    }

    public static final void writeTo(@NotNull InputStream inputStream, @NotNull OutputStream outputStream, int i10, boolean z10, boolean z11) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        byte[] bArr = new byte[i10];
        BufferedInputStream bufferedInputStream = inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, 8192);
        BufferedOutputStream bufferedOutputStream = outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, 8192);
        while (true) {
            int i11 = bufferedInputStream.read(bArr);
            if (!(i11 != -1)) {
                break;
            } else {
                bufferedOutputStream.write(bArr, 0, i11);
            }
        }
        bufferedOutputStream.flush();
        if (z10) {
            inputStream.close();
        }
        if (z11) {
            outputStream.close();
        }
    }

    public static /* synthetic */ void writeTo$default(InputStream inputStream, OutputStream outputStream, int i10, boolean z10, boolean z11, int i11, Object obj) throws IOException {
        if ((i11 & 2) != 0) {
            i10 = 2048;
        }
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        if ((i11 & 8) != 0) {
            z11 = true;
        }
        writeTo(inputStream, outputStream, i10, z10, z11);
    }

    private static final void zip(ZipOutputStream zipOutputStream, File[] fileArr, String str) throws IOException {
        String str2 = str == null ? "" : str + '/';
        if (fileArr.length == 0) {
            createEmptyFolder(zipOutputStream, str2);
        }
        for (File file : fileArr) {
            if (file.isFile()) {
                ZipEntry zipEntry = new ZipEntry(str2 + file.getName());
                InputStream fileInputStream = new FileInputStream(file);
                BufferedInputStream bufferedInputStream = fileInputStream instanceof BufferedInputStream ? (BufferedInputStream) fileInputStream : new BufferedInputStream(fileInputStream, 8192);
                zipOutputStream.putNextEntry(zipEntry);
                writeTo$default(bufferedInputStream, zipOutputStream, 8192, false, false, 4, null);
                zipOutputStream.closeEntry();
            } else {
                File[] fileArrListFiles = file.listFiles();
                Intrinsics.checkNotNullExpressionValue(fileArrListFiles, "listFiles(...)");
                zip(zipOutputStream, fileArrListFiles, str2 + file.getName());
            }
        }
    }

    public static final void zipFrom(@NotNull ZipOutputStream zipOutputStream, @NotNull List<? extends File> files) throws IOException {
        Intrinsics.checkNotNullParameter(zipOutputStream, "<this>");
        Intrinsics.checkNotNullParameter(files, "files");
        for (File file : files) {
            if (file.isFile()) {
                zip(zipOutputStream, new File[]{file}, null);
            } else if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                Intrinsics.checkNotNullExpressionValue(fileArrListFiles, "listFiles(...)");
                zip(zipOutputStream, fileArrListFiles, file.getName());
            }
        }
        zipOutputStream.close();
    }

    @NotNull
    public static final ZipInputStream zipInputStream(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return new ZipInputStream(new FileInputStream(file));
    }

    @NotNull
    public static final ZipOutputStream zipOutputStream(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return new ZipOutputStream(new FileOutputStream(file));
    }

    @NotNull
    public static final ZipInputStream zipInputStream(@NotNull InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        return new ZipInputStream(inputStream);
    }

    @NotNull
    public static final ZipOutputStream zipOutputStream(@NotNull OutputStream outputStream) {
        Intrinsics.checkNotNullParameter(outputStream, "<this>");
        return new ZipOutputStream(outputStream);
    }

    public static final void unZipTo(@NotNull ZipFile zipFile, @NotNull String path) throws IOException {
        Intrinsics.checkNotNullParameter(zipFile, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        checkUnzipFolder(path);
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        Intrinsics.checkNotNullExpressionValue(enumerationEntries, "entries(...)");
        Iterator it2 = CollectionsKt__IteratorsJVMKt.iterator(enumerationEntries);
        while (it2.hasNext()) {
            ZipEntry zipEntry = (ZipEntry) it2.next();
            if (zipEntry.isDirectory()) {
                new File(path + '/' + zipEntry.getName()).mkdirs();
            } else {
                InputStream inputStream = zipFile.getInputStream(zipEntry);
                File file = new File(path + '/' + zipEntry.getName());
                if (!file.exists()) {
                    smartCreateNewFile(file);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                Intrinsics.checkNotNull(inputStream);
                writeTo$default(inputStream, fileOutputStream, 8192, false, false, 12, null);
            }
        }
    }

    public static final void zipFrom(@NotNull ZipOutputStream zipOutputStream, @NotNull String... srcs) throws IOException {
        Intrinsics.checkNotNullParameter(zipOutputStream, "<this>");
        Intrinsics.checkNotNullParameter(srcs, "srcs");
        ArrayList<File> arrayList = new ArrayList(srcs.length);
        for (String str : srcs) {
            arrayList.add(new File(str));
        }
        for (File file : arrayList) {
            if (file.isFile()) {
                zip(zipOutputStream, new File[]{file}, null);
            } else if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                Intrinsics.checkNotNullExpressionValue(fileArrListFiles, "listFiles(...)");
                zip(zipOutputStream, fileArrListFiles, file.getName());
            }
        }
        zipOutputStream.close();
    }
}
