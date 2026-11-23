package com.aggmoread.sdk.z.a.j;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f3578a = "com.aggmoread.sdk.a.adcomm.amsdk.AMFilesProvider";

    public static Uri a(@NonNull Context context, @NonNull String str, @NonNull File file) {
        try {
            Class<?> cls = Class.forName(f3578a);
            com.aggmoread.sdk.z.a.d.d("adph_tag", "c " + cls + ", au " + str + ", file " + file.getAbsolutePath());
            return (Uri) cls.getMethod("getUriForFile", Context.class, String.class, File.class).invoke(cls, context, str, file);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
