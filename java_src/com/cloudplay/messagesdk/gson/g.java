package com.cloudplay.messagesdk.gson;

import com.cloudplay.messagesdk.gson.internal.LazilyParsedNumber;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes9.dex */
public final class g extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f23755a;

    public g(Boolean bool) {
        this.f23755a = com.cloudplay.messagesdk.gson.internal.a.a(bool);
    }

    private static boolean a(g gVar) {
        Object obj = gVar.f23755a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f23755a == null) {
            return gVar.f23755a == null;
        }
        if (a(this) && a(gVar)) {
            return l().longValue() == gVar.l().longValue();
        }
        Object obj2 = this.f23755a;
        if (!(obj2 instanceof Number) || !(gVar.f23755a instanceof Number)) {
            return obj2.equals(gVar.f23755a);
        }
        double dDoubleValue = l().doubleValue();
        double dDoubleValue2 = gVar.l().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public boolean h() {
        return n() ? ((Boolean) this.f23755a).booleanValue() : Boolean.parseBoolean(m());
    }

    public int hashCode() {
        long jDoubleToLongBits;
        if (this.f23755a == null) {
            return 31;
        }
        if (a(this)) {
            jDoubleToLongBits = l().longValue();
        } else {
            Object obj = this.f23755a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(l().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public double i() {
        return o() ? l().doubleValue() : Double.parseDouble(m());
    }

    public int j() {
        return o() ? l().intValue() : Integer.parseInt(m());
    }

    public long k() {
        return o() ? l().longValue() : Long.parseLong(m());
    }

    public Number l() {
        Object obj = this.f23755a;
        return obj instanceof String ? new LazilyParsedNumber((String) obj) : (Number) obj;
    }

    public String m() {
        if (o()) {
            return l().toString();
        }
        return n() ? ((Boolean) this.f23755a).toString() : (String) this.f23755a;
    }

    public boolean n() {
        return this.f23755a instanceof Boolean;
    }

    public boolean o() {
        return this.f23755a instanceof Number;
    }

    public boolean p() {
        return this.f23755a instanceof String;
    }

    public g(Number number) {
        this.f23755a = com.cloudplay.messagesdk.gson.internal.a.a(number);
    }

    public g(String str) {
        this.f23755a = com.cloudplay.messagesdk.gson.internal.a.a(str);
    }
}
