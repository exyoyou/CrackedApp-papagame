package kotlinx.coroutines.internal;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,157:1\n73#1,5:158\n73#1,5:164\n127#1,13:179\n1#2:163\n1360#3:169\n1446#3,5:170\n1549#3:175\n1620#3,3:176\n1064#4,2:192\n*S KotlinDebug\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n*L\n56#1:158,5\n57#1:164,5\n113#1:179,13\n95#1:169\n95#1:170,5\n97#1:175\n97#1:176,3\n149#1:192,2\n*E\n"})
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final o f93517a = new o();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final String f93518b = "META-INF/services/";

    private o() {
    }

    private final b0 a(Class<b0> cls, String str) {
        try {
            return cls.cast(Class.forName(str, true, cls.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private final <S> S b(String str, ClassLoader classLoader, Class<S> cls) throws ClassNotFoundException {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    private final <S> List<S> c(Class<S> cls, ClassLoader classLoader) {
        try {
            return e(cls, classLoader);
        } catch (Throwable unused) {
            return CollectionsKt___CollectionsKt.toList(ServiceLoader.load(cls, classLoader));
        }
    }

    private final List<String> f(URL url) throws IOException {
        String string = url.toString();
        if (!StringsKt__StringsJVMKt.startsWith$default(string, com.sigmob.sdk.archives.d.f78711d, false, 2, null)) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(url.openStream()));
            try {
                List<String> listG = f93517a.g(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                return listG;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedReader, th);
                    throw th2;
                }
            }
        }
        String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringAfter$default(string, "jar:file:", (String) null, 2, (Object) null), '!', (String) null, 2, (Object) null);
        String strSubstringAfter$default = StringsKt__StringsKt.substringAfter$default(string, "!/", (String) null, 2, (Object) null);
        JarFile jarFile = new JarFile(strSubstringBefore$default, false);
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(strSubstringAfter$default)), "UTF-8"));
            try {
                List<String> listG2 = f93517a.g(bufferedReader2);
                CloseableKt.closeFinally(bufferedReader2, null);
                jarFile.close();
                return listG2;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(bufferedReader2, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                try {
                    jarFile.close();
                    throw th6;
                } catch (Throwable th7) {
                    ExceptionsKt__ExceptionsKt.addSuppressed(th5, th7);
                    throw th5;
                }
            }
        }
    }

    private final List<String> g(BufferedReader bufferedReader) throws IOException {
        boolean z10;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return CollectionsKt___CollectionsKt.toList(linkedHashSet);
            }
            String string = StringsKt__StringsKt.trim((CharSequence) StringsKt__StringsKt.substringBefore$default(line, "#", (String) null, 2, (Object) null)).toString();
            int i10 = 0;
            while (true) {
                if (i10 >= string.length()) {
                    z10 = true;
                    break;
                }
                char cCharAt = string.charAt(i10);
                if (!(cCharAt == '.' || Character.isJavaIdentifierPart(cCharAt))) {
                    z10 = false;
                    break;
                }
                i10++;
            }
            if (!z10) {
                throw new IllegalArgumentException(("Illegal service provider class name: " + string).toString());
            }
            if (string.length() > 0) {
                linkedHashSet.add(string);
            }
        }
    }

    private final <R> R h(JarFile jarFile, Function1<? super JarFile, ? extends R> function1) throws IOException {
        try {
            R rInvoke = function1.invoke(jarFile);
            InlineMarker.finallyStart(1);
            jarFile.close();
            InlineMarker.finallyEnd(1);
            return rInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                try {
                    jarFile.close();
                    InlineMarker.finallyEnd(1);
                    throw th2;
                } catch (Throwable th3) {
                    ExceptionsKt__ExceptionsKt.addSuppressed(th, th3);
                    throw th;
                }
            }
        }
    }

    @NotNull
    public final List<b0> d() {
        b0 b0Var;
        if (!p.a()) {
            return c(b0.class, b0.class.getClassLoader());
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            b0 b0Var2 = null;
            try {
                b0Var = (b0) b0.class.cast(Class.forName("kotlinx.coroutines.android.a", true, b0.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused) {
                b0Var = null;
            }
            if (b0Var != null) {
                arrayList.add(b0Var);
            }
            try {
                b0Var2 = (b0) b0.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, b0.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused2) {
            }
            if (b0Var2 == null) {
                return arrayList;
            }
            arrayList.add(b0Var2);
            return arrayList;
        } catch (Throwable unused3) {
            return c(b0.class, b0.class.getClassLoader());
        }
    }

    @NotNull
    public final <S> List<S> e(@NotNull Class<S> cls, @NotNull ClassLoader classLoader) {
        ArrayList list = Collections.list(classLoader.getResources(f93518b + cls.getName()));
        Intrinsics.checkNotNullExpressionValue(list, "list(...)");
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, f93517a.f((URL) it2.next()));
        }
        Set set = CollectionsKt___CollectionsKt.toSet(arrayList);
        if (!(!set.isEmpty())) {
            throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10));
        Iterator it3 = set.iterator();
        while (it3.hasNext()) {
            arrayList2.add(f93517a.b((String) it3.next(), classLoader, cls));
        }
        return arrayList2;
    }
}
