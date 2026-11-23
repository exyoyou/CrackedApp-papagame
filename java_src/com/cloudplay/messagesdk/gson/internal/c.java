package com.cloudplay.messagesdk.gson.internal;

import com.cloudplay.messagesdk.gson.ExclusionStrategy;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class c implements TypeAdapterFactory, Cloneable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c f23785g = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f23789d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double f23786a = -1.0d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f23787b = 136;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23788c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<ExclusionStrategy> f23790e = Collections.emptyList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<ExclusionStrategy> f23791f = Collections.emptyList();

    private boolean b(Class<?> cls, boolean z10) {
        Iterator<ExclusionStrategy> it2 = (z10 ? this.f23790e : this.f23791f).iterator();
        while (it2.hasNext()) {
            if (it2.next().shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    private boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    public boolean a(Field field, boolean z10) {
        com.cloudplay.messagesdk.gson.i.a aVar;
        if ((this.f23787b & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f23786a != -1.0d && !a((com.cloudplay.messagesdk.gson.i.d) field.getAnnotation(com.cloudplay.messagesdk.gson.i.d.class), (com.cloudplay.messagesdk.gson.i.e) field.getAnnotation(com.cloudplay.messagesdk.gson.i.e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f23789d && ((aVar = (com.cloudplay.messagesdk.gson.i.a) field.getAnnotation(com.cloudplay.messagesdk.gson.i.a.class)) == null || (!z10 ? aVar.deserialize() : aVar.serialize()))) {
            return true;
        }
        if ((!this.f23788c && c(field.getType())) || b(field.getType())) {
            return true;
        }
        List<ExclusionStrategy> list = z10 ? this.f23790e : this.f23791f;
        if (list.isEmpty()) {
            return false;
        }
        com.cloudplay.messagesdk.gson.a aVar2 = new com.cloudplay.messagesdk.gson.a(field);
        Iterator<ExclusionStrategy> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next().shouldSkipField(aVar2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
    public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        boolean zA = a(clsA);
        boolean z10 = zA || b(clsA, true);
        boolean z11 = zA || b(clsA, false);
        if (z10 || z11) {
            return new a(z11, z10, bVar, aVar);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public c m21clone() {
        try {
            return (c) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> extends com.cloudplay.messagesdk.gson.h<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.cloudplay.messagesdk.gson.h<T> f23792a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f23793b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f23794c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.gson.b f23795d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.gson.j.a f23796e;

        a(boolean z10, boolean z11, com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a aVar) {
            this.f23793b = z10;
            this.f23794c = z11;
            this.f23795d = bVar;
            this.f23796e = aVar;
        }

        private com.cloudplay.messagesdk.gson.h<T> b() {
            com.cloudplay.messagesdk.gson.h<T> hVar = this.f23792a;
            if (hVar != null) {
                return hVar;
            }
            com.cloudplay.messagesdk.gson.h<T> hVarA = this.f23795d.a(c.this, this.f23796e);
            this.f23792a = hVarA;
            return hVarA;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public T a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (!this.f23793b) {
                return b().a2(aVar);
            }
            aVar.r();
            return null;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, T t10) throws IOException {
            if (this.f23794c) {
                bVar.h();
            } else {
                b().a(bVar, t10);
            }
        }
    }

    private boolean b(Class<?> cls) {
        return (Enum.class.isAssignableFrom(cls) || d(cls) || (!cls.isAnonymousClass() && !cls.isLocalClass())) ? false : true;
    }

    private boolean a(Class<?> cls) {
        if (this.f23786a == -1.0d || a((com.cloudplay.messagesdk.gson.i.d) cls.getAnnotation(com.cloudplay.messagesdk.gson.i.d.class), (com.cloudplay.messagesdk.gson.i.e) cls.getAnnotation(com.cloudplay.messagesdk.gson.i.e.class))) {
            return (!this.f23788c && c(cls)) || b(cls);
        }
        return true;
    }

    public boolean a(Class<?> cls, boolean z10) {
        return a(cls) || b(cls, z10);
    }

    private boolean a(com.cloudplay.messagesdk.gson.i.d dVar, com.cloudplay.messagesdk.gson.i.e eVar) {
        return a(dVar) && a(eVar);
    }

    private boolean a(com.cloudplay.messagesdk.gson.i.d dVar) {
        return dVar == null || dVar.value() <= this.f23786a;
    }

    private boolean a(com.cloudplay.messagesdk.gson.i.e eVar) {
        return eVar == null || eVar.value() > this.f23786a;
    }
}
