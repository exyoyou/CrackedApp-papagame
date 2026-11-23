package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.ToNumberPolicy;
import com.cloudplay.messagesdk.gson.ToNumberStrategy;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.internal.LinkedTreeMap;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public final class j extends com.cloudplay.messagesdk.gson.h<Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final TypeAdapterFactory f23838c = b(ToNumberPolicy.DOUBLE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.b f23839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ToNumberStrategy f23840b;

    static class a implements TypeAdapterFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ToNumberStrategy f23841a;

        a(ToNumberStrategy toNumberStrategy) {
            this.f23841a = toNumberStrategy;
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            a aVar2 = null;
            if (aVar.a() == Object.class) {
                return new j(bVar, this.f23841a, aVar2);
            }
            return null;
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23842a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f23842a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23842a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23842a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23842a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23842a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f23842a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* synthetic */ j(com.cloudplay.messagesdk.gson.b bVar, ToNumberStrategy toNumberStrategy, a aVar) {
        this(bVar, toNumberStrategy);
    }

    public static TypeAdapterFactory a(ToNumberStrategy toNumberStrategy) {
        return toNumberStrategy == ToNumberPolicy.DOUBLE ? f23838c : b(toNumberStrategy);
    }

    private static TypeAdapterFactory b(ToNumberStrategy toNumberStrategy) {
        return new a(toNumberStrategy);
    }

    private j(com.cloudplay.messagesdk.gson.b bVar, ToNumberStrategy toNumberStrategy) {
        this.f23839a = bVar;
        this.f23840b = toNumberStrategy;
    }

    @Override // com.cloudplay.messagesdk.gson.h
    /* JADX INFO: renamed from: a */
    public Object a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
        switch (b.f23842a[aVar.q().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.g()) {
                    arrayList.add(a2(aVar));
                }
                aVar.d();
                return arrayList;
            case 2:
                LinkedTreeMap linkedTreeMap = new LinkedTreeMap();
                aVar.b();
                while (aVar.g()) {
                    linkedTreeMap.put(aVar.n(), a2(aVar));
                }
                aVar.e();
                return linkedTreeMap;
            case 3:
                return aVar.p();
            case 4:
                return this.f23840b.readNumber(aVar);
            case 5:
                return Boolean.valueOf(aVar.j());
            case 6:
                aVar.o();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.cloudplay.messagesdk.gson.h
    public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.h();
            return;
        }
        com.cloudplay.messagesdk.gson.h hVarA = this.f23839a.a((Class) obj.getClass());
        if (hVarA instanceof j) {
            bVar.b();
            bVar.d();
        } else {
            hVarA.a(bVar, obj);
        }
    }
}
