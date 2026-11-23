package com.xinzhu.overmind.server.accounts;

import android.accounts.Account;
import android.util.LruCache;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes8.dex */
class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f89599b = 64000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f89600a = new b();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Account f89601a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f89602b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f89603c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f89604d;

        public a(Account account, String str, String str2, byte[] bArr) {
            this.f89601a = account;
            this.f89603c = str;
            this.f89602b = str2;
            this.f89604d = bArr;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Objects.equals(this.f89601a, aVar.f89601a) && Objects.equals(this.f89602b, aVar.f89602b) && Objects.equals(this.f89603c, aVar.f89603c) && Arrays.equals(this.f89604d, aVar.f89604d);
        }

        public int hashCode() {
            return ((this.f89601a.hashCode() ^ this.f89602b.hashCode()) ^ this.f89603c.hashCode()) ^ Arrays.hashCode(this.f89604d);
        }
    }

    private static class b extends LruCache<a, c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private HashMap<Pair<String, String>, a> f89605a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private HashMap<Account, a> f89606b;

        private class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final List<a> f89607a = new ArrayList();

            public a() {
            }

            public void a(a aVar) {
                this.f89607a.add(aVar);
            }

            public void b() {
                Iterator<a> it2 = this.f89607a.iterator();
                while (it2.hasNext()) {
                    b.this.remove(it2.next());
                }
            }
        }

        public b() {
            super(i.f89599b);
            this.f89605a = new HashMap<>();
            this.f89606b = new HashMap<>();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void entryRemoved(boolean z10, a aVar, c cVar, c cVar2) {
            a aVarRemove;
            if (cVar == null || cVar2 != null || (aVarRemove = this.f89605a.remove(new Pair(aVar.f89601a.type, cVar.f89609a))) == null) {
                return;
            }
            aVarRemove.b();
        }

        public void b(Account account) {
            a aVar = this.f89606b.get(account);
            if (aVar != null) {
                aVar.b();
            }
        }

        public void c(String str, String str2) {
            a aVar = this.f89605a.get(new Pair(str, str2));
            if (aVar != null) {
                aVar.b();
            }
        }

        public void d(a aVar, c cVar) {
            Pair<String, String> pair = new Pair<>(aVar.f89601a.type, cVar.f89609a);
            a aVar2 = this.f89605a.get(pair);
            if (aVar2 == null) {
                aVar2 = new a();
            }
            aVar2.a(aVar);
            this.f89605a.put(pair, aVar2);
            a aVar3 = this.f89606b.get(aVar.f89601a);
            if (aVar3 == null) {
                aVar3 = new a();
            }
            aVar3.a(aVar);
            this.f89606b.put(aVar.f89601a, aVar3);
            put(aVar, cVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public int sizeOf(a aVar, c cVar) {
            return cVar.f89609a.length();
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f89609a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f89610b;

        public c(String str, long j10) {
            this.f89609a = str;
            this.f89610b = j10;
        }
    }

    i() {
    }

    public String a(Account account, String str, String str2, byte[] bArr) {
        c cVar = this.f89600a.get(new a(account, str, str2, bArr));
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (cVar != null && jCurrentTimeMillis < cVar.f89610b) {
            return cVar.f89609a;
        }
        if (cVar == null) {
            return null;
        }
        d(account.type, cVar.f89609a);
        return null;
    }

    public void b(Account account, String str, String str2, String str3, byte[] bArr, long j10) {
        Objects.requireNonNull(account);
        if (str == null || System.currentTimeMillis() > j10) {
            return;
        }
        this.f89600a.d(new a(account, str2, str3, bArr), new c(str, j10));
    }

    public void c(Account account) {
        this.f89600a.b(account);
    }

    public void d(String str, String str2) {
        this.f89600a.c(str, str2);
    }
}
