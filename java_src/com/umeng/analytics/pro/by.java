package com.umeng.analytics.pro;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class by {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cu f84505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final dh f84506b;

    public by() {
        this(new co.a());
    }

    private cp j(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        this.f84506b.a(bArr);
        int length = ccVarArr.length + 1;
        cc[] ccVarArr2 = new cc[length];
        int i10 = 0;
        ccVarArr2[0] = ccVar;
        int i11 = 0;
        while (i11 < ccVarArr.length) {
            int i12 = i11 + 1;
            ccVarArr2[i12] = ccVarArr[i11];
            i11 = i12;
        }
        this.f84505a.j();
        cp cpVarL = null;
        while (i10 < length) {
            cpVarL = this.f84505a.l();
            if (cpVarL.f84586b == 0 || cpVarL.f84587c > ccVarArr2[i10].a()) {
                return null;
            }
            if (cpVarL.f84587c != ccVarArr2[i10].a()) {
                cx.a(this.f84505a, cpVarL.f84586b);
                this.f84505a.m();
            } else {
                i10++;
                if (i10 < length) {
                    this.f84505a.j();
                }
            }
        }
        return cpVarL;
    }

    public void a(bv bvVar, byte[] bArr) throws cb {
        try {
            this.f84506b.a(bArr);
            bvVar.read(this.f84505a);
        } finally {
            this.f84506b.e();
            this.f84505a.B();
        }
    }

    public Byte b(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        return (Byte) a((byte) 3, bArr, ccVar, ccVarArr);
    }

    public Double c(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        return (Double) a((byte) 4, bArr, ccVar, ccVarArr);
    }

    public Short d(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        return (Short) a((byte) 6, bArr, ccVar, ccVarArr);
    }

    public Integer e(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        return (Integer) a((byte) 8, bArr, ccVar, ccVarArr);
    }

    public Long f(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        return (Long) a((byte) 10, bArr, ccVar, ccVarArr);
    }

    public String g(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        return (String) a((byte) 11, bArr, ccVar, ccVarArr);
    }

    public ByteBuffer h(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        return (ByteBuffer) a((byte) 100, bArr, ccVar, ccVarArr);
    }

    public Short i(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        try {
            try {
                if (j(bArr, ccVar, ccVarArr) == null) {
                    this.f84506b.e();
                    this.f84505a.B();
                    return null;
                }
                this.f84505a.j();
                Short shValueOf = Short.valueOf(this.f84505a.l().f84587c);
                this.f84506b.e();
                this.f84505a.B();
                return shValueOf;
            } catch (Exception e10) {
                throw new cb(e10);
            }
        } catch (Throwable th) {
            this.f84506b.e();
            this.f84505a.B();
            throw th;
        }
        this.f84506b.e();
        this.f84505a.B();
        throw th;
    }

    public by(cw cwVar) {
        dh dhVar = new dh();
        this.f84506b = dhVar;
        this.f84505a = cwVar.a(dhVar);
    }

    public void a(bv bvVar, String str, String str2) throws cb {
        try {
            try {
                a(bvVar, str.getBytes(str2));
                this.f84505a.B();
            } catch (UnsupportedEncodingException unused) {
                throw new cb("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } catch (Throwable th) {
            this.f84505a.B();
            throw th;
        }
    }

    public void a(bv bvVar, byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        try {
            try {
                if (j(bArr, ccVar, ccVarArr) != null) {
                    bvVar.read(this.f84505a);
                }
                this.f84506b.e();
                this.f84505a.B();
            } catch (Exception e10) {
                throw new cb(e10);
            }
        } catch (Throwable th) {
            this.f84506b.e();
            this.f84505a.B();
            throw th;
        }
    }

    public Boolean a(byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        return (Boolean) a((byte) 2, bArr, ccVar, ccVarArr);
    }

    private Object a(byte b10, byte[] bArr, cc ccVar, cc... ccVarArr) throws cb {
        try {
            try {
                cp cpVarJ = j(bArr, ccVar, ccVarArr);
                if (cpVarJ != null) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 != 6) {
                                    if (b10 != 8) {
                                        if (b10 != 100) {
                                            if (b10 != 10) {
                                                if (b10 == 11 && cpVarJ.f84586b == 11) {
                                                    String strZ = this.f84505a.z();
                                                    this.f84506b.e();
                                                    this.f84505a.B();
                                                    return strZ;
                                                }
                                            } else if (cpVarJ.f84586b == 10) {
                                                Long lValueOf = Long.valueOf(this.f84505a.x());
                                                this.f84506b.e();
                                                this.f84505a.B();
                                                return lValueOf;
                                            }
                                        } else if (cpVarJ.f84586b == 11) {
                                            ByteBuffer byteBufferA = this.f84505a.A();
                                            this.f84506b.e();
                                            this.f84505a.B();
                                            return byteBufferA;
                                        }
                                    } else if (cpVarJ.f84586b == 8) {
                                        Integer numValueOf = Integer.valueOf(this.f84505a.w());
                                        this.f84506b.e();
                                        this.f84505a.B();
                                        return numValueOf;
                                    }
                                } else if (cpVarJ.f84586b == 6) {
                                    Short shValueOf = Short.valueOf(this.f84505a.v());
                                    this.f84506b.e();
                                    this.f84505a.B();
                                    return shValueOf;
                                }
                            } else if (cpVarJ.f84586b == 4) {
                                Double dValueOf = Double.valueOf(this.f84505a.y());
                                this.f84506b.e();
                                this.f84505a.B();
                                return dValueOf;
                            }
                        } else if (cpVarJ.f84586b == 3) {
                            Byte bValueOf = Byte.valueOf(this.f84505a.u());
                            this.f84506b.e();
                            this.f84505a.B();
                            return bValueOf;
                        }
                    } else if (cpVarJ.f84586b == 2) {
                        Boolean boolValueOf = Boolean.valueOf(this.f84505a.t());
                        this.f84506b.e();
                        this.f84505a.B();
                        return boolValueOf;
                    }
                }
                this.f84506b.e();
                this.f84505a.B();
                return null;
            } catch (Exception e10) {
                throw new cb(e10);
            }
        } catch (Throwable th) {
            this.f84506b.e();
            this.f84505a.B();
            throw th;
        }
    }

    public void a(bv bvVar, String str) throws cb {
        a(bvVar, str.getBytes());
    }
}
