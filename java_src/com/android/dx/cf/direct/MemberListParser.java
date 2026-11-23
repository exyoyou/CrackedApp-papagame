package com.android.dx.cf.direct;

import com.android.dx.cf.iface.AttributeList;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.cf.iface.StdAttributeList;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;

/* JADX INFO: loaded from: classes7.dex */
abstract class MemberListParser {
    private final AttributeFactory attributeFactory;
    private final DirectClassFile cf;
    private final CstType definer;
    private int endOffset;
    private ParseObserver observer;
    private final int offset;

    public MemberListParser(DirectClassFile directClassFile, CstType cstType, int i10, AttributeFactory attributeFactory) {
        if (directClassFile == null) {
            throw new NullPointerException("cf == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("offset < 0");
        }
        if (attributeFactory == null) {
            throw new NullPointerException("attributeFactory == null");
        }
        this.cf = directClassFile;
        this.definer = cstType;
        this.offset = i10;
        this.attributeFactory = attributeFactory;
        this.endOffset = -1;
    }

    private void parse() {
        int i10;
        int attributeContext = getAttributeContext();
        int count = getCount();
        int endOffset = this.offset + 2;
        ByteArray bytes = this.cf.getBytes();
        ConstantPool constantPool = this.cf.getConstantPool();
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            parseObserver.parsed(bytes, this.offset, 2, humanName() + "s_count: " + Hex.u2(count));
        }
        int i11 = 0;
        while (i11 < count) {
            try {
                int unsignedShort = bytes.getUnsignedShort(endOffset);
                int i12 = endOffset + 2;
                int unsignedShort2 = bytes.getUnsignedShort(i12);
                int i13 = endOffset + 4;
                int unsignedShort3 = bytes.getUnsignedShort(i13);
                CstString cstString = (CstString) constantPool.get(unsignedShort2);
                CstString cstString2 = (CstString) constantPool.get(unsignedShort3);
                ParseObserver parseObserver2 = this.observer;
                int i14 = count;
                if (parseObserver2 != null) {
                    parseObserver2.startParsingMember(bytes, endOffset, cstString.getString(), cstString2.getString());
                    this.observer.parsed(bytes, endOffset, 0, "\n" + humanName() + "s[" + i11 + "]:\n");
                    this.observer.changeIndent(1);
                    ParseObserver parseObserver3 = this.observer;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("access_flags: ");
                    sb2.append(humanAccessFlags(unsignedShort));
                    parseObserver3.parsed(bytes, endOffset, 2, sb2.toString());
                    this.observer.parsed(bytes, i12, 2, "name: " + cstString.toHuman());
                    this.observer.parsed(bytes, i13, 2, "descriptor: " + cstString2.toHuman());
                }
                AttributeListParser attributeListParser = new AttributeListParser(this.cf, attributeContext, endOffset + 6, this.attributeFactory);
                attributeListParser.setObserver(this.observer);
                endOffset = attributeListParser.getEndOffset();
                StdAttributeList list = attributeListParser.getList();
                list.setImmutable();
                Member member = set(i11, unsignedShort, new CstNat(cstString, cstString2), list);
                ParseObserver parseObserver4 = this.observer;
                if (parseObserver4 != null) {
                    parseObserver4.changeIndent(-1);
                    this.observer.parsed(bytes, endOffset, 0, "end " + humanName() + "s[" + i11 + "]\n");
                    i10 = i11;
                    try {
                        this.observer.endParsingMember(bytes, endOffset, cstString.getString(), cstString2.getString(), member);
                    } catch (ParseException e10) {
                        e = e10;
                        e.addContext("...while parsing " + humanName() + "s[" + i10 + "]");
                        throw e;
                    } catch (RuntimeException e11) {
                        e = e11;
                        ParseException parseException = new ParseException(e);
                        parseException.addContext("...while parsing " + humanName() + "s[" + i10 + "]");
                        throw parseException;
                    }
                } else {
                    i10 = i11;
                }
                i11 = i10 + 1;
                count = i14;
                constantPool = constantPool;
            } catch (ParseException e12) {
                e = e12;
                i10 = i11;
            } catch (RuntimeException e13) {
                e = e13;
                i10 = i11;
            }
        }
        this.endOffset = endOffset;
    }

    protected abstract int getAttributeContext();

    protected final int getCount() {
        return this.cf.getBytes().getUnsignedShort(this.offset);
    }

    protected final CstType getDefiner() {
        return this.definer;
    }

    public int getEndOffset() {
        parseIfNecessary();
        return this.endOffset;
    }

    protected abstract String humanAccessFlags(int i10);

    protected abstract String humanName();

    protected final void parseIfNecessary() {
        if (this.endOffset < 0) {
            parse();
        }
    }

    protected abstract Member set(int i10, int i11, CstNat cstNat, AttributeList attributeList);

    public final void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }
}
