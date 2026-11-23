package com.airbnb.lottie.network;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.c1;
import com.airbnb.lottie.d0;
import com.airbnb.lottie.j;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final f f5928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final e f5929b;

    public g(@Nullable f fVar, @NonNull e eVar) {
        this.f5928a = fVar;
        this.f5929b = eVar;
    }

    @Nullable
    @WorkerThread
    private j a(Context context, @NonNull String str, @Nullable String str2) {
        f fVar;
        Pair<FileExtension, InputStream> pairB;
        if (str2 == null || (fVar = this.f5928a) == null || (pairB = fVar.b(str)) == null) {
            return null;
        }
        FileExtension fileExtension = (FileExtension) pairB.first;
        InputStream inputStream = (InputStream) pairB.second;
        c1<j> c1VarX = fileExtension == FileExtension.ZIP ? d0.X(context, new ZipInputStream(inputStream), str2) : d0.C(inputStream, str2);
        if (c1VarX.b() != null) {
            return c1VarX.b();
        }
        return null;
    }

    @NonNull
    @WorkerThread
    private c1<j> b(Context context, @NonNull String str, @Nullable String str2) {
        com.airbnb.lottie.utils.f.a("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                c cVarA = this.f5929b.a(str);
                if (!cVarA.isSuccessful()) {
                    c1<j> c1Var = new c1<>(new IllegalArgumentException(cVarA.error()));
                    try {
                        cVarA.close();
                    } catch (IOException e10) {
                        com.airbnb.lottie.utils.f.f("LottieFetchResult close failed ", e10);
                    }
                    return c1Var;
                }
                c1<j> c1VarD = d(context, str, cVarA.T(), cVarA.contentType(), str2);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Completed fetch from network. Success: ");
                sb2.append(c1VarD.b() != null);
                com.airbnb.lottie.utils.f.a(sb2.toString());
                try {
                    cVarA.close();
                } catch (IOException e11) {
                    com.airbnb.lottie.utils.f.f("LottieFetchResult close failed ", e11);
                }
                return c1VarD;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e12) {
                        com.airbnb.lottie.utils.f.f("LottieFetchResult close failed ", e12);
                    }
                }
                throw th;
            }
        } catch (Exception e13) {
            c1<j> c1Var2 = new c1<>(e13);
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e14) {
                    com.airbnb.lottie.utils.f.f("LottieFetchResult close failed ", e14);
                }
            }
            return c1Var2;
        }
    }

    @NonNull
    private c1<j> d(Context context, @NonNull String str, @NonNull InputStream inputStream, @Nullable String str2, @Nullable String str3) throws IOException {
        c1<j> c1VarF;
        FileExtension fileExtension;
        f fVar;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            com.airbnb.lottie.utils.f.a("Handling zip response.");
            FileExtension fileExtension2 = FileExtension.ZIP;
            c1VarF = f(context, str, inputStream, str3);
            fileExtension = fileExtension2;
        } else {
            com.airbnb.lottie.utils.f.a("Received json response.");
            fileExtension = FileExtension.JSON;
            c1VarF = e(str, inputStream, str3);
        }
        if (str3 != null && c1VarF.b() != null && (fVar = this.f5928a) != null) {
            fVar.g(str, fileExtension);
        }
        return c1VarF;
    }

    @NonNull
    private c1<j> e(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) throws IOException {
        f fVar;
        return (str2 == null || (fVar = this.f5928a) == null) ? d0.C(inputStream, null) : d0.C(new FileInputStream(fVar.h(str, inputStream, FileExtension.JSON).getAbsolutePath()), str);
    }

    @NonNull
    private c1<j> f(Context context, @NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) throws IOException {
        f fVar;
        return (str2 == null || (fVar = this.f5928a) == null) ? d0.X(context, new ZipInputStream(inputStream), null) : d0.X(context, new ZipInputStream(new FileInputStream(fVar.h(str, inputStream, FileExtension.ZIP))), str);
    }

    @NonNull
    @WorkerThread
    public c1<j> c(Context context, @NonNull String str, @Nullable String str2) {
        j jVarA = a(context, str, str2);
        if (jVarA != null) {
            return new c1<>(jVarA);
        }
        com.airbnb.lottie.utils.f.a("Animation for " + str + " not found in cache. Fetching from network.");
        return b(context, str, str2);
    }
}
