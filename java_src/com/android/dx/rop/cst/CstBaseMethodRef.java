package com.android.dx.rop.cst;

import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CstBaseMethodRef extends CstMemberRef {
    private Prototype instancePrototype;
    private final Prototype prototype;

    CstBaseMethodRef(CstType cstType, CstNat cstNat) {
        super(cstType, cstNat);
        String string = getNat().getDescriptor().getString();
        if (isSignaturePolymorphic()) {
            this.prototype = Prototype.fromDescriptor(string);
        } else {
            this.prototype = Prototype.intern(string);
        }
        this.instancePrototype = null;
    }

    @Override // com.android.dx.rop.cst.CstMemberRef, com.android.dx.rop.cst.Constant
    protected final int compareTo0(Constant constant) {
        int iCompareTo0 = super.compareTo0(constant);
        return iCompareTo0 != 0 ? iCompareTo0 : this.prototype.compareTo(((CstBaseMethodRef) constant).prototype);
    }

    public final int getParameterWordCount(boolean z10) {
        return getPrototype(z10).getParameterTypes().getWordCount();
    }

    public final Prototype getPrototype() {
        return this.prototype;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public final Type getType() {
        return this.prototype.getReturnType();
    }

    public final boolean isClassInit() {
        return getNat().isClassInit();
    }

    public final boolean isInstanceInit() {
        return getNat().isInstanceInit();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final boolean isSignaturePolymorphic() {
        CstType definingClass = getDefiningClass();
        if (definingClass.equals(CstType.METHOD_HANDLE)) {
            String string = getNat().getName().getString();
            string.hashCode();
            if (string.equals("invoke") || string.equals("invokeExact")) {
                return true;
            }
        } else if (definingClass.equals(CstType.VAR_HANDLE)) {
            String string2 = getNat().getName().getString();
            string2.hashCode();
            byte b10 = -1;
            switch (string2.hashCode()) {
                case -1946504908:
                    if (string2.equals("getAndBitwiseOrRelease")) {
                        b10 = 0;
                    }
                    break;
                case -1686727776:
                    if (string2.equals("getAndBitwiseAndRelease")) {
                        b10 = 1;
                    }
                    break;
                case -1671098288:
                    if (string2.equals("compareAndSet")) {
                        b10 = 2;
                    }
                    break;
                case -1292078254:
                    if (string2.equals("compareAndExchangeRelease")) {
                        b10 = 3;
                    }
                    break;
                case -1117944904:
                    if (string2.equals("weakCompareAndSet")) {
                        b10 = 4;
                    }
                    break;
                case -1103072857:
                    if (string2.equals("getAndAddRelease")) {
                        b10 = 5;
                    }
                    break;
                case -1032914329:
                    if (string2.equals("getAndBitwiseAnd")) {
                        b10 = 6;
                    }
                    break;
                case -1032892181:
                    if (string2.equals("getAndBitwiseXor")) {
                        b10 = 7;
                    }
                    break;
                case -794517348:
                    if (string2.equals("getAndBitwiseXorRelease")) {
                        b10 = 8;
                    }
                    break;
                case -567150350:
                    if (string2.equals("weakCompareAndSetPlain")) {
                        b10 = 9;
                    }
                    break;
                case -240822786:
                    if (string2.equals("weakCompareAndSetAcquire")) {
                        b10 = 10;
                    }
                    break;
                case -230706875:
                    if (string2.equals("setRelease")) {
                        b10 = 11;
                    }
                    break;
                case -127361888:
                    if (string2.equals("getAcquire")) {
                        b10 = 12;
                    }
                    break;
                case -37641530:
                    if (string2.equals("getAndSetRelease")) {
                        b10 = 13;
                    }
                    break;
                case 102230:
                    if (string2.equals("get")) {
                        b10 = 14;
                    }
                    break;
                case 113762:
                    if (string2.equals("set")) {
                        b10 = 15;
                    }
                    break;
                case 93645315:
                    if (string2.equals("getAndBitwiseOrAcquire")) {
                        b10 = 16;
                    }
                    break;
                case 101293086:
                    if (string2.equals("setVolatile")) {
                        b10 = BinaryMemcacheOpcodes.SETQ;
                    }
                    break;
                case 189872914:
                    if (string2.equals("getVolatile")) {
                        b10 = BinaryMemcacheOpcodes.ADDQ;
                    }
                    break;
                case 282707520:
                    if (string2.equals("getAndAdd")) {
                        b10 = BinaryMemcacheOpcodes.REPLACEQ;
                    }
                    break;
                case 282724865:
                    if (string2.equals("getAndSet")) {
                        b10 = BinaryMemcacheOpcodes.DELETEQ;
                    }
                    break;
                case 353422447:
                    if (string2.equals("getAndBitwiseAndAcquire")) {
                        b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                    }
                    break;
                case 470702883:
                    if (string2.equals("setOpaque")) {
                        b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                    }
                    break;
                case 685319959:
                    if (string2.equals("getOpaque")) {
                        b10 = BinaryMemcacheOpcodes.QUITQ;
                    }
                    break;
                case 748071969:
                    if (string2.equals("compareAndExchangeAcquire")) {
                        b10 = BinaryMemcacheOpcodes.FLUSHQ;
                    }
                    break;
                case 937077366:
                    if (string2.equals("getAndAddAcquire")) {
                        b10 = BinaryMemcacheOpcodes.APPENDQ;
                    }
                    break;
                case 1245632875:
                    if (string2.equals("getAndBitwiseXorAcquire")) {
                        b10 = 26;
                    }
                    break;
                case 1352153939:
                    if (string2.equals("getAndBitwiseOr")) {
                        b10 = 27;
                    }
                    break;
                case 1483964149:
                    if (string2.equals("compareAndExchange")) {
                        b10 = BinaryMemcacheOpcodes.TOUCH;
                    }
                    break;
                case 2002508693:
                    if (string2.equals("getAndSetAcquire")) {
                        b10 = BinaryMemcacheOpcodes.GAT;
                    }
                    break;
                case 2013994287:
                    if (string2.equals("weakCompareAndSetRelease")) {
                        b10 = BinaryMemcacheOpcodes.GATQ;
                    }
                    break;
            }
            switch (b10) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                    return true;
            }
        }
        return false;
    }

    public final Prototype getPrototype(boolean z10) {
        if (z10) {
            return this.prototype;
        }
        if (this.instancePrototype == null) {
            this.instancePrototype = this.prototype.withFirstParameter(getDefiningClass().getClassType());
        }
        return this.instancePrototype;
    }
}
