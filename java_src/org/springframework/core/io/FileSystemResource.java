package org.springframework.core.io;

import androidx.annotation.NonNull;
import java.io.File;
import java.net.URI;

/* JADX INFO: loaded from: classes10.dex */
public class FileSystemResource extends File {
    public FileSystemResource(@NonNull String pathname) {
        super(pathname);
    }

    public FileSystemResource(String parent, @NonNull String child) {
        super(parent, child);
    }

    public FileSystemResource(File parent, @NonNull String child) {
        super(parent, child);
    }

    public FileSystemResource(@NonNull URI uri) {
        super(uri);
    }
}
