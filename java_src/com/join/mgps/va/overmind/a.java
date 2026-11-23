package com.join.mgps.va.overmind;

import android.content.Context;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.Util.z;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final C0752a f73246a = new C0752a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f73247b;

    /* JADX INFO: renamed from: com.join.mgps.va.overmind.a$a, reason: collision with other inner class name */
    @SourceDebugExtension({"SMAP\nArchiveUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArchiveUtils.kt\ncom/join/mgps/va/overmind/ArchiveUtils$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,165:1\n37#2:166\n36#2,3:167\n*S KotlinDebug\n*F\n+ 1 ArchiveUtils.kt\ncom/join/mgps/va/overmind/ArchiveUtils$Companion\n*L\n102#1:166\n102#1:167,3\n*E\n"})
    public static final class C0752a {
        public /* synthetic */ C0752a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a(List<ArchiveData> list, String str, int i10, String str2, String str3) {
            File[] fileArrListFiles = new File(str).listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                return;
            }
            if (i10 != 0) {
                Iterator it2 = ArrayIteratorKt.iterator(fileArrListFiles);
                while (it2.hasNext()) {
                    File file = (File) it2.next();
                    Intrinsics.checkNotNull(file);
                    if (b(str2, file)) {
                        ArchiveData archiveData = new ArchiveData();
                        archiveData.setArchiveLocalPath(file.getAbsolutePath());
                        archiveData.setAddTime(d(new File(archiveData.getArchiveLocalPath())));
                        archiveData.setPackageName(str3);
                        list.add(archiveData);
                    }
                }
                return;
            }
            ArchiveData archiveData2 = new ArchiveData();
            archiveData2.setArchiveLocalPath(str);
            Iterator it3 = ArrayIteratorKt.iterator(fileArrListFiles);
            boolean zB = false;
            while (it3.hasNext()) {
                File file2 = (File) it3.next();
                Intrinsics.checkNotNull(file2);
                zB = b(str2, file2);
                if (zB) {
                    zB = true;
                    break;
                }
            }
            if (zB) {
                archiveData2.setAddTime(d(new File(archiveData2.getArchiveLocalPath())));
                archiveData2.setPackageName(str3);
                list.add(archiveData2);
            }
        }

        private final boolean b(String str, File file) {
            if (str == null || Intrinsics.areEqual(str, "")) {
                return true;
            }
            String[] strArr = (String[]) StringsKt__StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null).toArray(new String[0]);
            if (strArr.length <= 0) {
                return true;
            }
            for (String str2 : strArr) {
                if (str2 == file.getName()) {
                    return true;
                }
                String name = file.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (StringsKt__StringsJVMKt.startsWith$default(name, str2, false, 2, null)) {
                    return true;
                }
                String name2 = file.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                if (StringsKt__StringsJVMKt.endsWith$default(name2, str2, false, 2, null)) {
                    return true;
                }
            }
            return false;
        }

        private final void c(File file) {
            long millis;
            if (Build.VERSION.SDK_INT < 26) {
                if (!file.isDirectory()) {
                    long jLastModified = file.lastModified();
                    if (jLastModified > e()) {
                        g(jLastModified);
                        return;
                    }
                    return;
                }
                Iterator it2 = ArrayIteratorKt.iterator(file.listFiles());
                while (it2.hasNext()) {
                    File file2 = (File) it2.next();
                    Intrinsics.checkNotNull(file2);
                    c(file2);
                }
                return;
            }
            if (file.isDirectory()) {
                Iterator it3 = ArrayIteratorKt.iterator(file.listFiles());
                while (it3.hasNext()) {
                    File file3 = (File) it3.next();
                    Intrinsics.checkNotNull(file3);
                    c(file3);
                }
                return;
            }
            try {
                millis = Files.readAttributes(file.toPath(), cn.fly.tools.utils.n.a(), new LinkOption[0]).lastModifiedTime().toMillis();
            } catch (IOException e10) {
                e10.printStackTrace();
                millis = 0;
            }
            if (millis > e()) {
                g(millis);
            }
        }

        private final long d(File file) {
            g(0L);
            c(file);
            return e();
        }

        public final long e() {
            return a.f73247b;
        }

        @Nullable
        public final ArrayList<ArchiveData> f(@NotNull Context context, @NotNull String packageName, @NotNull String path, @NotNull String archiveFileSuffix, int i10) {
            String str;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(archiveFileSuffix, "archiveFileSuffix");
            ArrayList<ArchiveData> arrayList = new ArrayList<>();
            if (StringsKt__StringsJVMKt.startsWith$default(path, "/Android/data", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(path, "Android/data", false, 2, null)) {
                if (StringsKt__StringsJVMKt.startsWith$default(path, "Android/data", false, 2, null)) {
                    str = '/' + path;
                } else {
                    str = path;
                }
                String absolutePath = com.xinzhu.overmind.a.b0().getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                a(arrayList, absolutePath + str, i10, archiveFileSuffix, packageName);
            } else if (StringsKt__StringsJVMKt.startsWith$default(path, "/data/data", false, 2, null)) {
                String absolutePath2 = com.xinzhu.overmind.a.s(packageName, 0).getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(absolutePath2);
                sb2.append(StringsKt__StringsJVMKt.replace$default(path, "/data/data/" + packageName, "", false, 4, (Object) null));
                a(arrayList, sb2.toString(), i10, archiveFileSuffix, packageName);
            } else {
                if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74785i) == 0) {
                    a(arrayList, z.f50165d + path, i10, archiveFileSuffix, packageName);
                }
                a(arrayList, context.getExternalFilesDir("") + "/cloudArchive/" + path, i10, archiveFileSuffix, packageName);
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(arrayList.size());
            sb3.append("");
            return arrayList;
        }

        public final void g(long j10) {
            a.f73247b = j10;
        }

        private C0752a() {
        }
    }
}
