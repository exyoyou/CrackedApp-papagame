package io.netty.handler.codec.http.multipart;

/* JADX INFO: loaded from: classes.dex */
final class FileUploadUtil {
    private FileUploadUtil() {
    }

    static int compareTo(FileUpload fileUpload, FileUpload fileUpload2) {
        return fileUpload.getName().compareToIgnoreCase(fileUpload2.getName());
    }

    static boolean equals(FileUpload fileUpload, FileUpload fileUpload2) {
        return fileUpload.getName().equalsIgnoreCase(fileUpload2.getName());
    }

    static int hashCode(FileUpload fileUpload) {
        return fileUpload.getName().hashCode();
    }
}
