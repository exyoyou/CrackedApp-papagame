package com.cloudplay.messagesdk.gson;

import com.cloudplay.messagesdk.gson.internal.LazilyParsedNumber;
import com.cloudplay.messagesdk.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes9.dex */
public enum ToNumberPolicy implements ToNumberStrategy {
    DOUBLE { // from class: com.cloudplay.messagesdk.gson.ToNumberPolicy.1
        @Override // com.cloudplay.messagesdk.gson.ToNumberStrategy
        public Double readNumber(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            return Double.valueOf(aVar.k());
        }
    },
    LAZILY_PARSED_NUMBER { // from class: com.cloudplay.messagesdk.gson.ToNumberPolicy.2
        @Override // com.cloudplay.messagesdk.gson.ToNumberStrategy
        public Number readNumber(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            return new LazilyParsedNumber(aVar.p());
        }
    },
    LONG_OR_DOUBLE { // from class: com.cloudplay.messagesdk.gson.ToNumberPolicy.3
        @Override // com.cloudplay.messagesdk.gson.ToNumberStrategy
        public Number readNumber(com.cloudplay.messagesdk.gson.stream.a aVar) throws JsonParseException, IOException {
            String strP = aVar.p();
            try {
                try {
                    return Long.valueOf(Long.parseLong(strP));
                } catch (NumberFormatException e10) {
                    throw new JsonParseException("Cannot parse " + strP + "; at path " + aVar.f(), e10);
                }
            } catch (NumberFormatException unused) {
                Double dValueOf = Double.valueOf(strP);
                if ((!dValueOf.isInfinite() && !dValueOf.isNaN()) || aVar.h()) {
                    return dValueOf;
                }
                throw new MalformedJsonException("JSON forbids NaN and infinities: " + dValueOf + "; at path " + aVar.f());
            }
        }
    },
    BIG_DECIMAL { // from class: com.cloudplay.messagesdk.gson.ToNumberPolicy.4
        @Override // com.cloudplay.messagesdk.gson.ToNumberStrategy
        public BigDecimal readNumber(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            String strP = aVar.p();
            try {
                return new BigDecimal(strP);
            } catch (NumberFormatException e10) {
                throw new JsonParseException("Cannot parse " + strP + "; at path " + aVar.f(), e10);
            }
        }
    }
}
