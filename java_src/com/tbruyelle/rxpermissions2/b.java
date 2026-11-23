package com.tbruyelle.rxpermissions2;

import io.reactivex.Observable;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f83018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f83019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f83020c;

    class a implements BiConsumer<StringBuilder, String> {
        a() {
        }

        @Override // io.reactivex.functions.BiConsumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(StringBuilder sb2, String str) throws Exception {
            if (sb2.length() == 0) {
                sb2.append(str);
            } else {
                sb2.append(", ");
                sb2.append(str);
            }
        }
    }

    /* JADX INFO: renamed from: com.tbruyelle.rxpermissions2.b$b, reason: collision with other inner class name */
    class C1044b implements Function<b, String> {
        C1044b() {
        }

        @Override // io.reactivex.functions.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String apply(b bVar) throws Exception {
            return bVar.f83018a;
        }
    }

    class c implements Predicate<b> {
        c() {
        }

        @Override // io.reactivex.functions.Predicate
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean test(b bVar) throws Exception {
            return bVar.f83019b;
        }
    }

    class d implements Predicate<b> {
        d() {
        }

        @Override // io.reactivex.functions.Predicate
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean test(b bVar) throws Exception {
            return bVar.f83020c;
        }
    }

    public b(String str, boolean z10) {
        this(str, z10, false);
    }

    private Boolean a(List<b> list) {
        return Observable.fromIterable(list).all(new c()).blockingGet();
    }

    private String b(List<b> list) {
        return ((StringBuilder) Observable.fromIterable(list).map(new C1044b()).collectInto(new StringBuilder(), new a()).blockingGet()).toString();
    }

    private Boolean c(List<b> list) {
        return Observable.fromIterable(list).any(new d()).blockingGet();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f83019b == bVar.f83019b && this.f83020c == bVar.f83020c) {
            return this.f83018a.equals(bVar.f83018a);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f83018a.hashCode() * 31) + (this.f83019b ? 1 : 0)) * 31) + (this.f83020c ? 1 : 0);
    }

    public String toString() {
        return "Permission{name='" + this.f83018a + "', granted=" + this.f83019b + ", shouldShowRequestPermissionRationale=" + this.f83020c + '}';
    }

    public b(String str, boolean z10, boolean z11) {
        this.f83018a = str;
        this.f83019b = z10;
        this.f83020c = z11;
    }

    public b(List<b> list) {
        this.f83018a = b(list);
        this.f83019b = a(list).booleanValue();
        this.f83020c = c(list).booleanValue();
    }
}
