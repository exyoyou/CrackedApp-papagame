package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.JsonSyntaxException;
import com.cloudplay.messagesdk.gson.ToNumberPolicy;
import com.cloudplay.messagesdk.gson.ToNumberStrategy;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public final class i extends com.cloudplay.messagesdk.gson.h<Number> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final TypeAdapterFactory f23834b = b(ToNumberPolicy.LAZILY_PARSED_NUMBER);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ToNumberStrategy f23835a;

    static class a implements TypeAdapterFactory {
        a() {
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            if (aVar.a() == Number.class) {
                return i.this;
            }
            return null;
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23837a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f23837a = iArr;
            try {
                iArr[JsonToken.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23837a[JsonToken.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23837a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private i(ToNumberStrategy toNumberStrategy) {
        this.f23835a = toNumberStrategy;
    }

    private static TypeAdapterFactory b(ToNumberStrategy toNumberStrategy) {
        return new i(toNumberStrategy).new a();
    }

    public static TypeAdapterFactory a(ToNumberStrategy toNumberStrategy) {
        if (toNumberStrategy == ToNumberPolicy.LAZILY_PARSED_NUMBER) {
            return f23834b;
        }
        return b(toNumberStrategy);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.cloudplay.messagesdk.gson.h
    /* JADX INFO: renamed from: a */
    public Number a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
        JsonToken jsonTokenQ = aVar.q();
        int i10 = b.f23837a[jsonTokenQ.ordinal()];
        if (i10 == 1) {
            aVar.o();
            return null;
        }
        if (i10 != 2 && i10 != 3) {
            throw new JsonSyntaxException("Expecting number, got: " + jsonTokenQ);
        }
        return this.f23835a.readNumber(aVar);
    }

    @Override // com.cloudplay.messagesdk.gson.h
    public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
        bVar.a(number);
    }
}
