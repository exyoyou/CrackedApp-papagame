package com.fasterxml.jackson.core.util;

import io.netty.util.internal.StringUtil;
import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class Separators implements Serializable {
    private static final long serialVersionUID = 1;
    private final char arrayValueSeparator;
    private final char objectEntrySeparator;
    private final char objectFieldValueSeparator;

    public Separators() {
        this(':', StringUtil.COMMA, StringUtil.COMMA);
    }

    public static Separators createDefaultInstance() {
        return new Separators();
    }

    public char getArrayValueSeparator() {
        return this.arrayValueSeparator;
    }

    public char getObjectEntrySeparator() {
        return this.objectEntrySeparator;
    }

    public char getObjectFieldValueSeparator() {
        return this.objectFieldValueSeparator;
    }

    public Separators withArrayValueSeparator(char c10) {
        return this.arrayValueSeparator == c10 ? this : new Separators(this.objectFieldValueSeparator, this.objectEntrySeparator, c10);
    }

    public Separators withObjectEntrySeparator(char c10) {
        return this.objectEntrySeparator == c10 ? this : new Separators(this.objectFieldValueSeparator, c10, this.arrayValueSeparator);
    }

    public Separators withObjectFieldValueSeparator(char c10) {
        return this.objectFieldValueSeparator == c10 ? this : new Separators(c10, this.objectEntrySeparator, this.arrayValueSeparator);
    }

    public Separators(char c10, char c11, char c12) {
        this.objectFieldValueSeparator = c10;
        this.objectEntrySeparator = c11;
        this.arrayValueSeparator = c12;
    }
}
