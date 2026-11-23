package com.googlecode.mp4parser;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f33772a = Logger.getLogger(k.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f33773b;

    static {
        String line;
        try {
            line = new LineNumberReader(new InputStreamReader(k.class.getResourceAsStream("/version.txt"))).readLine();
        } catch (IOException e10) {
            f33772a.warning(e10.getMessage());
            line = "unknown";
        }
        f33773b = line;
    }
}
