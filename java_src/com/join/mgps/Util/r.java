package com.join.mgps.Util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;

/* JADX INFO: loaded from: classes4.dex */
public class r {
    public static long a(File file) {
        long length;
        CheckedInputStream checkedInputStream;
        long value = 0;
        CheckedInputStream checkedInputStream2 = null;
        try {
            try {
                checkedInputStream = new CheckedInputStream(new FileInputStream(file), new CRC32());
                try {
                    length = file.length();
                } catch (FileNotFoundException unused) {
                    checkedInputStream2 = checkedInputStream;
                    System.err.println("File not found.");
                    System.exit(1);
                    length = 0;
                    checkedInputStream = checkedInputStream2;
                }
            } catch (FileNotFoundException unused2) {
            }
            while (checkedInputStream.read(new byte[128]) >= 0) {
            }
            value = checkedInputStream.getChecksum().getValue();
            System.out.println(value + " " + length + " " + file.getName());
            return value;
        } catch (IOException e10) {
            e10.printStackTrace();
            return value;
        }
    }
}
