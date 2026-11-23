package com.android.dx.cf.direct;

import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.cf.iface.StdAttributeList;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;

/* JADX INFO: loaded from: classes7.dex */
final class AttributeListParser {
    private final AttributeFactory attributeFactory;
    private final DirectClassFile cf;
    private final int context;
    private int endOffset;
    private final StdAttributeList list;
    private ParseObserver observer;
    private final int offset;

    public AttributeListParser(DirectClassFile directClassFile, int i10, int i11, AttributeFactory attributeFactory) {
        if (directClassFile == null) {
            throw new NullPointerException("cf == null");
        }
        if (attributeFactory == null) {
            throw new NullPointerException("attributeFactory == null");
        }
        int unsignedShort = directClassFile.getBytes().getUnsignedShort(i11);
        this.cf = directClassFile;
        this.context = i10;
        this.offset = i11;
        this.attributeFactory = attributeFactory;
        this.list = new StdAttributeList(unsignedShort);
        this.endOffset = -1;
    }

    private void parse() {
        int size = this.list.size();
        int iByteLength = this.offset + 2;
        ByteArray bytes = this.cf.getBytes();
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            parseObserver.parsed(bytes, this.offset, 2, "attributes_count: " + Hex.u2(size));
        }
        for (int i10 = 0; i10 < size; i10++) {
            try {
                ParseObserver parseObserver2 = this.observer;
                if (parseObserver2 != null) {
                    parseObserver2.parsed(bytes, iByteLength, 0, "\nattributes[" + i10 + "]:\n");
                    this.observer.changeIndent(1);
                }
                Attribute attribute = this.attributeFactory.parse(this.cf, this.context, iByteLength, this.observer);
                iByteLength += attribute.byteLength();
                this.list.set(i10, attribute);
                ParseObserver parseObserver3 = this.observer;
                if (parseObserver3 != null) {
                    parseObserver3.changeIndent(-1);
                    this.observer.parsed(bytes, iByteLength, 0, "end attributes[" + i10 + "]\n");
                }
            } catch (ParseException e10) {
                e10.addContext("...while parsing attributes[" + i10 + "]");
                throw e10;
            } catch (RuntimeException e11) {
                ParseException parseException = new ParseException(e11);
                parseException.addContext("...while parsing attributes[" + i10 + "]");
                throw parseException;
            }
        }
        this.endOffset = iByteLength;
    }

    private void parseIfNecessary() {
        if (this.endOffset < 0) {
            parse();
        }
    }

    public int getEndOffset() {
        parseIfNecessary();
        return this.endOffset;
    }

    public StdAttributeList getList() {
        parseIfNecessary();
        return this.list;
    }

    public void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }
}
