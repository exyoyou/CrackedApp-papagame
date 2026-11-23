package com.alibaba.fastjson.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f6619a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f6620b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f6621c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f6622d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f6623e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f6624f = 6;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f6625g = 7;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f6626h = 8;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f6627i = 9;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f6628j = 10;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f6629k = 11;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f6630l = 12;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f6631m = 13;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f6632n = 14;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f6633o = 15;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f6634p = 16;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f6635q = 17;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f6636r = 18;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f6637s = 19;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f6638t = 20;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f6639u = 21;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f6640v = 22;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f6641w = 23;

    public static String a(int i10) {
        switch (i10) {
            case 1:
                return "error";
            case 2:
                return "int";
            case 3:
                return "float";
            case 4:
                return TypedValues.Custom.S_STRING;
            case 5:
                return "iso8601";
            case 6:
                return "true";
            case 7:
                return "false";
            case 8:
                return "null";
            case 9:
                return "new";
            case 10:
                return "(";
            case 11:
                return ")";
            case 12:
                return "{";
            case 13:
                return "}";
            case 14:
                return "[";
            case 15:
                return "]";
            case 16:
                return ",";
            case 17:
                return ":";
            case 18:
                return "ident";
            case 19:
                return "fieldName";
            case 20:
                return "EOF";
            case 21:
                return "Set";
            case 22:
                return "TreeSet";
            case 23:
                return "undefined";
            default:
                return "Unkown";
        }
    }
}
