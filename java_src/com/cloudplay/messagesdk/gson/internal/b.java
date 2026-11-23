package com.cloudplay.messagesdk.gson.internal;

import com.cloudplay.messagesdk.gson.InstanceCreator;
import com.cloudplay.messagesdk.gson.JsonIOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Type, InstanceCreator<?>> f23774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.internal.k.b f23775b = com.cloudplay.messagesdk.gson.internal.k.b.a();

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> implements ObjectConstructor<T> {
        a(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ConcurrentHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.cloudplay.messagesdk.gson.internal.b$b, reason: collision with other inner class name */
    class C0520b<T> implements ObjectConstructor<T> {
        C0520b(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new TreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class c<T> implements ObjectConstructor<T> {
        c(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class d<T> implements ObjectConstructor<T> {
        d(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedTreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class e<T> implements ObjectConstructor<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.cloudplay.messagesdk.gson.internal.i f23776a = com.cloudplay.messagesdk.gson.internal.i.a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f23777b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Type f23778c;

        e(b bVar, Class cls, Type type) {
            this.f23777b = cls;
            this.f23778c = type;
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            try {
                return (T) this.f23776a.a(this.f23777b);
            } catch (Exception e10) {
                throw new RuntimeException("Unable to invoke no-args constructor for " + this.f23778c + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e10);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class f<T> implements ObjectConstructor<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ InstanceCreator f23779a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Type f23780b;

        f(b bVar, InstanceCreator instanceCreator, Type type) {
            this.f23779a = instanceCreator;
            this.f23780b = type;
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) this.f23779a.createInstance(this.f23780b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class g<T> implements ObjectConstructor<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ InstanceCreator f23781a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Type f23782b;

        g(b bVar, InstanceCreator instanceCreator, Type type) {
            this.f23781a = instanceCreator;
            this.f23782b = type;
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) this.f23781a.createInstance(this.f23782b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class h<T> implements ObjectConstructor<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Constructor f23783a;

        h(b bVar, Constructor constructor) {
            this.f23783a = constructor;
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            try {
                return (T) this.f23783a.newInstance(null);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Failed to invoke " + this.f23783a + " with no args", e11);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException("Failed to invoke " + this.f23783a + " with no args", e12.getTargetException());
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class i<T> implements ObjectConstructor<T> {
        i(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new TreeSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class j<T> implements ObjectConstructor<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f23784a;

        j(b bVar, Type type) {
            this.f23784a = type;
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            Type type = this.f23784a;
            if (!(type instanceof ParameterizedType)) {
                throw new JsonIOException("Invalid EnumSet type: " + this.f23784a.toString());
            }
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return (T) EnumSet.noneOf((Class) type2);
            }
            throw new JsonIOException("Invalid EnumSet type: " + this.f23784a.toString());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class k<T> implements ObjectConstructor<T> {
        k(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedHashSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class l<T> implements ObjectConstructor<T> {
        l(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ArrayDeque();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class m<T> implements ObjectConstructor<T> {
        m(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class n<T> implements ObjectConstructor<T> {
        n(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ConcurrentSkipListMap();
        }
    }

    public b(Map<Type, InstanceCreator<?>> map) {
        this.f23774a = map;
    }

    private <T> ObjectConstructor<T> b(Type type, Class<? super T> cls) {
        return new e(this, cls, type);
    }

    public <T> ObjectConstructor<T> a(com.cloudplay.messagesdk.gson.j.a<T> aVar) {
        Type typeB = aVar.b();
        Class<? super T> clsA = aVar.a();
        InstanceCreator<?> instanceCreator = this.f23774a.get(typeB);
        if (instanceCreator != null) {
            return new f(this, instanceCreator, typeB);
        }
        InstanceCreator<?> instanceCreator2 = this.f23774a.get(clsA);
        if (instanceCreator2 != null) {
            return new g(this, instanceCreator2, typeB);
        }
        ObjectConstructor<T> objectConstructorA = a(clsA);
        if (objectConstructorA != null) {
            return objectConstructorA;
        }
        ObjectConstructor<T> objectConstructorA2 = a(typeB, clsA);
        return objectConstructorA2 != null ? objectConstructorA2 : b(typeB, clsA);
    }

    public String toString() {
        return this.f23774a.toString();
    }

    private <T> ObjectConstructor<T> a(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f23775b.a(declaredConstructor);
            }
            return new h(this, declaredConstructor);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private <T> ObjectConstructor<T> a(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new i(this);
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new j(this, type);
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new k(this);
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new l(this);
            }
            return new m(this);
        }
        if (!Map.class.isAssignableFrom(cls)) {
            return null;
        }
        if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
            return new n(this);
        }
        if (ConcurrentMap.class.isAssignableFrom(cls)) {
            return new a(this);
        }
        if (SortedMap.class.isAssignableFrom(cls)) {
            return new C0520b(this);
        }
        if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(com.cloudplay.messagesdk.gson.j.a.a(((ParameterizedType) type).getActualTypeArguments()[0]).a())) {
            return new c(this);
        }
        return new d(this);
    }
}
