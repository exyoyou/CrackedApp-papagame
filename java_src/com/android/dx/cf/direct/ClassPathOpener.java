package com.android.dx.cf.direct;

import com.android.dex.util.FileUtils;
import com.join.mgps.Util.o0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes7.dex */
public class ClassPathOpener {
    public static final FileNameFilter acceptAll = new FileNameFilter() { // from class: com.android.dx.cf.direct.ClassPathOpener.1
        @Override // com.android.dx.cf.direct.ClassPathOpener.FileNameFilter
        public boolean accept(String str) {
            return true;
        }
    };
    private final Consumer consumer;
    private FileNameFilter filter;
    private final String pathname;
    private final boolean sort;

    public interface Consumer {
        void onException(Exception exc);

        void onProcessArchiveStart(File file);

        boolean processFileBytes(String str, long j10, byte[] bArr);
    }

    public interface FileNameFilter {
        boolean accept(String str);
    }

    public ClassPathOpener(String str, boolean z10, Consumer consumer) {
        this(str, z10, acceptAll, consumer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int compareClassNames(String str, String str2) {
        return str.replace('$', '0').replace("package-info", "").compareTo(str2.replace('$', '0').replace("package-info", ""));
    }

    private boolean processArchive(File file) throws IOException {
        byte[] byteArray;
        ZipFile zipFile = new ZipFile(file);
        ArrayList<ZipEntry> list = Collections.list(zipFile.entries());
        if (this.sort) {
            Collections.sort(list, new Comparator<ZipEntry>() { // from class: com.android.dx.cf.direct.ClassPathOpener.3
                @Override // java.util.Comparator
                public int compare(ZipEntry zipEntry, ZipEntry zipEntry2) {
                    return ClassPathOpener.compareClassNames(zipEntry.getName(), zipEntry2.getName());
                }
            });
        }
        this.consumer.onProcessArchiveStart(file);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(40000);
        byte[] bArr = new byte[20000];
        boolean zProcessFileBytes = false;
        for (ZipEntry zipEntry : list) {
            boolean zIsDirectory = zipEntry.isDirectory();
            String name = zipEntry.getName();
            if (this.filter.accept(name)) {
                if (zIsDirectory) {
                    byteArray = new byte[0];
                } else {
                    InputStream inputStream = zipFile.getInputStream(zipEntry);
                    byteArrayOutputStream.reset();
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i10);
                    }
                    inputStream.close();
                    byteArray = byteArrayOutputStream.toByteArray();
                }
                zProcessFileBytes |= this.consumer.processFileBytes(name, zipEntry.getTime(), byteArray);
            }
        }
        zipFile.close();
        return zProcessFileBytes;
    }

    private boolean processDirectory(File file, boolean z10) {
        if (z10) {
            file = new File(file, o0.f49827a);
        }
        File[] fileArrListFiles = file.listFiles();
        if (this.sort) {
            Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.android.dx.cf.direct.ClassPathOpener.2
                @Override // java.util.Comparator
                public int compare(File file2, File file3) {
                    return ClassPathOpener.compareClassNames(file2.getName(), file3.getName());
                }
            });
        }
        boolean zProcessOne = false;
        for (File file2 : fileArrListFiles) {
            zProcessOne |= processOne(file2, false);
        }
        return zProcessOne;
    }

    private boolean processOne(File file, boolean z10) {
        try {
            if (file.isDirectory()) {
                return processDirectory(file, z10);
            }
            String path = file.getPath();
            if (!path.endsWith(".zip") && !path.endsWith(".jar") && !path.endsWith(".apk")) {
                if (!this.filter.accept(path)) {
                    return false;
                }
                return this.consumer.processFileBytes(path, file.lastModified(), FileUtils.readFile(file));
            }
            return processArchive(file);
        } catch (Exception e10) {
            this.consumer.onException(e10);
            return false;
        }
    }

    public boolean process() {
        return processOne(new File(this.pathname), true);
    }

    public ClassPathOpener(String str, boolean z10, FileNameFilter fileNameFilter, Consumer consumer) {
        this.pathname = str;
        this.sort = z10;
        this.consumer = consumer;
        this.filter = fileNameFilter;
    }
}
