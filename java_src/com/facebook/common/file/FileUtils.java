package com.facebook.common.file;

import com.facebook.common.internal.i;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class FileUtils {

    public static class CreateDirectoryException extends IOException {
        public CreateDirectoryException(String message) {
            super(message);
        }

        public CreateDirectoryException(String message, Throwable innerException) {
            super(message);
            initCause(innerException);
        }
    }

    public static class FileDeleteException extends IOException {
        public FileDeleteException(String message) {
            super(message);
        }
    }

    public static class ParentDirNotFoundException extends FileNotFoundException {
        public ParentDirNotFoundException(String message) {
            super(message);
        }
    }

    public static class RenameException extends IOException {
        public RenameException(String message) {
            super(message);
        }

        public RenameException(String message, @Nullable Throwable innerException) {
            super(message);
            initCause(innerException);
        }
    }

    public static void a(File directory) throws CreateDirectoryException {
        if (directory.exists()) {
            if (directory.isDirectory()) {
                return;
            }
            if (!directory.delete()) {
                throw new CreateDirectoryException(directory.getAbsolutePath(), new FileDeleteException(directory.getAbsolutePath()));
            }
        }
        if (!directory.mkdirs() && !directory.isDirectory()) {
            throw new CreateDirectoryException(directory.getAbsolutePath());
        }
    }

    public static void b(File source, File target) throws RenameException {
        Throwable fileDeleteException;
        i.i(source);
        i.i(target);
        target.delete();
        if (source.renameTo(target)) {
            return;
        }
        if (target.exists()) {
            fileDeleteException = new FileDeleteException(target.getAbsolutePath());
        } else if (source.getParentFile().exists()) {
            fileDeleteException = !source.exists() ? new FileNotFoundException(source.getAbsolutePath()) : null;
        } else {
            fileDeleteException = new ParentDirNotFoundException(source.getAbsolutePath());
        }
        throw new RenameException("Unknown error renaming " + source.getAbsolutePath() + " to " + target.getAbsolutePath(), fileDeleteException);
    }
}
