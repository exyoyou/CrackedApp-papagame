package io.socket.backo;

import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public class Backoff {
    private int attempts;
    private double jitter;

    /* JADX INFO: renamed from: ms, reason: collision with root package name */
    private long f91807ms = 100;
    private long max = 10000;
    private int factor = 2;

    public long duration() {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(this.f91807ms);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(this.factor);
        int i10 = this.attempts;
        this.attempts = i10 + 1;
        BigInteger bigIntegerMultiply = bigIntegerValueOf.multiply(bigIntegerValueOf2.pow(i10));
        if (this.jitter != 0.0d) {
            double dRandom = Math.random();
            BigInteger bigInteger = BigDecimal.valueOf(dRandom).multiply(BigDecimal.valueOf(this.jitter)).multiply(new BigDecimal(bigIntegerMultiply)).toBigInteger();
            bigIntegerMultiply = (((int) Math.floor(dRandom * 10.0d)) & 1) == 0 ? bigIntegerMultiply.subtract(bigInteger) : bigIntegerMultiply.add(bigInteger);
        }
        return bigIntegerMultiply.min(BigInteger.valueOf(this.max)).longValue();
    }

    public int getAttempts() {
        return this.attempts;
    }

    public void reset() {
        this.attempts = 0;
    }

    public Backoff setFactor(int i10) {
        this.factor = i10;
        return this;
    }

    public Backoff setJitter(double d10) {
        this.jitter = d10;
        return this;
    }

    public Backoff setMax(long j10) {
        this.max = j10;
        return this;
    }

    public Backoff setMin(long j10) {
        this.f91807ms = j10;
        return this;
    }
}
