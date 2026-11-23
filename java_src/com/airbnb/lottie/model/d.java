package com.airbnb.lottie.model;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f5850c = new d("COMPOSITION");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f5851a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private e f5852b;

    public d(String... strArr) {
        this.f5851a = Arrays.asList(strArr);
    }

    private boolean b() {
        List<String> list = this.f5851a;
        return list.get(list.size() - 1).equals("**");
    }

    private boolean f(String str) {
        return "__container".equals(str);
    }

    @CheckResult
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public d a(String str) {
        d dVar = new d(this);
        dVar.f5851a.add(str);
        return dVar;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean c(String str, int i10) {
        if (i10 >= this.f5851a.size()) {
            return false;
        }
        boolean z10 = i10 == this.f5851a.size() - 1;
        String str2 = this.f5851a.get(i10);
        if (!str2.equals("**")) {
            return (z10 || (i10 == this.f5851a.size() + (-2) && b())) && (str2.equals(str) || str2.equals(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD));
        }
        if (!z10 && this.f5851a.get(i10 + 1).equals(str)) {
            return i10 == this.f5851a.size() + (-2) || (i10 == this.f5851a.size() + (-3) && b());
        }
        if (z10) {
            return true;
        }
        int i11 = i10 + 1;
        if (i11 < this.f5851a.size() - 1) {
            return false;
        }
        return this.f5851a.get(i11).equals(str);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public e d() {
        return this.f5852b;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int e(String str, int i10) {
        if (f(str)) {
            return 0;
        }
        if (this.f5851a.get(i10).equals("**")) {
            return (i10 != this.f5851a.size() - 1 && this.f5851a.get(i10 + 1).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (!this.f5851a.equals(dVar.f5851a)) {
            return false;
        }
        e eVar = this.f5852b;
        e eVar2 = dVar.f5852b;
        if (eVar != null) {
            return eVar.equals(eVar2);
        }
        return eVar2 == null;
    }

    public String g() {
        return this.f5851a.toString();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean h(String str, int i10) {
        if (f(str)) {
            return true;
        }
        if (i10 >= this.f5851a.size()) {
            return false;
        }
        return this.f5851a.get(i10).equals(str) || this.f5851a.get(i10).equals("**") || this.f5851a.get(i10).equals(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD);
    }

    public int hashCode() {
        int iHashCode = this.f5851a.hashCode() * 31;
        e eVar = this.f5852b;
        return iHashCode + (eVar != null ? eVar.hashCode() : 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean i(String str, int i10) {
        return "__container".equals(str) || i10 < this.f5851a.size() - 1 || this.f5851a.get(i10).equals("**");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public d j(e eVar) {
        d dVar = new d(this);
        dVar.f5852b = eVar;
        return dVar;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("KeyPath{keys=");
        sb2.append(this.f5851a);
        sb2.append(",resolved=");
        sb2.append(this.f5852b != null);
        sb2.append('}');
        return sb2.toString();
    }

    private d(d dVar) {
        this.f5851a = new ArrayList(dVar.f5851a);
        this.f5852b = dVar.f5852b;
    }
}
