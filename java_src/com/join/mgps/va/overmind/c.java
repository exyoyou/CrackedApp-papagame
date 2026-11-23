package com.join.mgps.va.overmind;

import android.annotation.TargetApi;
import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final a f73257a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String d(String str) {
            int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str, '/', 0, false, 6, (Object) null) + 1;
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, '/', iLastIndexOf$default, false, 4, (Object) null);
            if (iIndexOf$default != -1) {
                String strSubstring = str.substring(iLastIndexOf$default, iIndexOf$default);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                return strSubstring;
            }
            String strSubstring2 = str.substring(iLastIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            return strSubstring2;
        }

        @JvmStatic
        public final boolean a(@NotNull Set<String> abiList) {
            Intrinsics.checkNotNullParameter(abiList, "abiList");
            Iterator<String> it2 = abiList.iterator();
            while (it2.hasNext()) {
                if (g(it2.next())) {
                    return true;
                }
            }
            return false;
        }

        @JvmStatic
        @TargetApi(21)
        public final boolean b(@NotNull Set<String> supportedAbis) {
            Intrinsics.checkNotNullParameter(supportedAbis, "supportedAbis");
            Iterator<String> it2 = supportedAbis.iterator();
            while (it2.hasNext()) {
                if (h(it2.next())) {
                    return true;
                }
            }
            return false;
        }

        @JvmStatic
        @Nullable
        public final String c(@NotNull String[] supportAbis, @NotNull Set<String> abis) {
            Intrinsics.checkNotNullParameter(supportAbis, "supportAbis");
            Intrinsics.checkNotNullParameter(abis, "abis");
            for (String str : supportAbis) {
                if (abis.contains(str)) {
                    return str;
                }
            }
            return null;
        }

        @JvmStatic
        @NotNull
        public final Set<String> e(@Nullable String str) {
            try {
                if (new File(str).exists()) {
                    Enumeration<? extends ZipEntry> enumerationEntries = new ZipFile(str).entries();
                    HashSet hashSet = new HashSet();
                    while (enumerationEntries.hasMoreElements()) {
                        ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                        String name = zipEntryNextElement.getName();
                        Intrinsics.checkNotNull(name);
                        if (!StringsKt__StringsKt.contains$default((CharSequence) name, (CharSequence) "../", false, 2, (Object) null) && StringsKt__StringsJVMKt.startsWith$default(name, "lib/", false, 2, null) && !zipEntryNextElement.isDirectory() && StringsKt__StringsJVMKt.endsWith$default(name, ".so", false, 2, null)) {
                            String strSubstring = name.substring(StringsKt__StringsKt.indexOf$default((CharSequence) name, net.lingala.zip4j.util.e.F0, 0, false, 6, (Object) null) + 1, StringsKt__StringsKt.lastIndexOf$default((CharSequence) name, net.lingala.zip4j.util.e.F0, 0, false, 6, (Object) null));
                            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                            hashSet.add(strSubstring);
                        }
                    }
                    return hashSet;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return SetsKt__SetsKt.emptySet();
        }

        @NotNull
        public final List<String> f(@NotNull String apkFilePath, @NotNull String targetAbi) {
            Intrinsics.checkNotNullParameter(apkFilePath, "apkFilePath");
            Intrinsics.checkNotNullParameter(targetAbi, "targetAbi");
            try {
                File file = new File(apkFilePath);
                ArrayList arrayList = new ArrayList();
                Enumeration<? extends ZipEntry> enumerationEntries = new ZipFile(file).entries();
                while (enumerationEntries.hasMoreElements()) {
                    String name = enumerationEntries.nextElement().getName();
                    Intrinsics.checkNotNull(name);
                    if (StringsKt__StringsJVMKt.endsWith$default(name, ".so", false, 2, null) && Intrinsics.areEqual(d(name), targetAbi)) {
                        String name2 = new File(name).getName();
                        Intrinsics.checkNotNull(name2);
                        arrayList.add(name2);
                    }
                }
                return arrayList;
            } catch (Exception e10) {
                e10.printStackTrace();
                return CollectionsKt__CollectionsKt.emptyList();
            }
        }

        @JvmStatic
        public final boolean g(@NotNull String abi) {
            Intrinsics.checkNotNullParameter(abi, "abi");
            return Intrinsics.areEqual(com.join.mgps.mod.utils.d.f71903e, abi) || Intrinsics.areEqual("armeabi-v7a", abi) || Intrinsics.areEqual(com.join.mgps.mod.utils.d.f71905g, abi) || Intrinsics.areEqual(com.join.mgps.mod.utils.d.f71904f, abi);
        }

        @JvmStatic
        @TargetApi(21)
        public final boolean h(@NotNull String abi) {
            Intrinsics.checkNotNullParameter(abi, "abi");
            return Intrinsics.areEqual("arm64-v8a", abi) || Intrinsics.areEqual("x86_64", abi) || Intrinsics.areEqual("mips64", abi);
        }

        private a() {
        }
    }

    @JvmStatic
    public static final boolean a(@NotNull Set<String> set) {
        return f73257a.a(set);
    }

    @JvmStatic
    @TargetApi(21)
    public static final boolean b(@NotNull Set<String> set) {
        return f73257a.b(set);
    }

    @JvmStatic
    @Nullable
    public static final String c(@NotNull String[] strArr, @NotNull Set<String> set) {
        return f73257a.c(strArr, set);
    }

    @JvmStatic
    @NotNull
    public static final Set<String> d(@Nullable String str) {
        return f73257a.e(str);
    }

    @JvmStatic
    public static final boolean e(@NotNull String str) {
        return f73257a.g(str);
    }

    @JvmStatic
    @TargetApi(21)
    public static final boolean f(@NotNull String str) {
        return f73257a.h(str);
    }
}
