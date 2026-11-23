package com.byazt.fh;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.nr.m;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_SIZE_PERCENT, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<Integer, SoftReference<Bitmap>> f14187c = new ConcurrentHashMap();
    public static String tt;
    public static String ve;

    private static String c() {
        try {
            if (tt == null) {
                tt = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAAAcCAMAAAD1LAmUAAAAV1BMVEUUGSPo6Onk5OSWmJz09PRobHOztbekp6lDRk7s7e25u76Hio/g4OLV1thydXzw8fHJys3BwsWusLNaXmXj4+UAACrX2dmYmp4VGyUVHCPu7u7a2tzR0tKDGP4aAAAAHXRSTlMzuK1c1kdxZTzCdVSnl0zMhXxuRLAEmVwwJMGYj5jRgTUAAAEDSURBVDjL7dPbboQgEIDhGQcQxFUOe+i2ff/nLGxkC0g1bbzZpN+VMeZ3BiMc4n65wDHejgrBHY4aCV4a51CQEv7GdFlk5CA62CInWOtFYJkRURxEvMNOqD8PvYOawu5bCHE1KzUzFUGLPyEOA45THaJyarwSkUGKWls5jY8Q4iS3QtewVFqtudX4DGnjfg5J4pFF/gClKWyVhU5pv0aIWKF8iUWsQojgYVE8vP2tsBUaXQrV89OTrLZqhnDZjzMJBc66xUz5PMkthM43H668i6F4LyZohjpUnV5No03v9gazn+O3IanzQSHp7CokFtlq+3g6650z2idWk3+kq08N/17WFxmyCdKhvUIPAAAAAElFTkSuQmCC";
            }
        } catch (OutOfMemoryError unused) {
        }
        return tt;
    }

    private static String tt() {
        try {
            if (ve == null) {
                ve = "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAcHBwcIBwgJCQgMDAsMDBEQDg4QERoSFBIUEhonGB0YGB0YJyMqIiAiKiM+MSsrMT5IPDk8SFdOTldtaG2Pj8ABBwcHBwgHCAkJCAwMCwwMERAODhARGhIUEhQSGicYHRgYHRgnIyoiICIqIz4xKysxPkg8OTxIV05OV21obY+PwP/CABEIACgAVgMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAABBQACBAYD/9oACAEBAAAAAGVoCRYyo99mTO69Vb/AmPRNkaVmmZdDn5jQyv4Y7YPXohzUNYDBDb//xAAVAQEBAAAAAAAAAAAAAAAAAAAAAf/aAAgBAhAAAAALFiywX//EABUBAQEAAAAAAAAAAAAAAAAAAAAB/9oACAEDEAAAAIAAD//EACoQAAIBAwMDAwQDAQAAAAAAAAECAwAEEQUhURITQSIxcSMyUoEVocHR/9oACAEBAAE/AOd6FAmuaXzXj91zQoUdx8V00M+KtoXuJe2gyT/nNXWmSwTpEHV+oZzU9u0LlWo7AkUNJ7aI8l5EhZQ2Dwan02zLkwXsQUj2Y+alsiswjjlWUsRjp5NJoURmgRpkIx9T179XGKfR5k7hWWDAycde9CgmW9JydgB81pskdgkgmhZbhvsBH3A8U6Rw2zzzjrnl9h8+BVxaFUczoe62CB/ynikQlWUg+f3WsAGS2H426ZpfNadPHDP1sjHHt0++TUFtFFOLgabcmTkuKlsbRFknfTrgAbn10/aeR+lSE6jgHfFWM8VtcpNInWq+Pnijq8ct8s8kZKL9o80dYDXwuHTKDZU/HPn5q41Vprvvsh6QMIOBzTzC4nVnbCMwB+M1qcyzXspQgqoC55xXk1AfqJn8hn9Gr3+PkuJHOouucelQcCons4rO9Ed60paPZWz/AFQG5z71tRGK23oD3zvQwKzQzWa2rwaFf//EABQRAQAAAAAAAAAAAAAAAAAAAED/2gAIAQIBAT8AF//EABQRAQAAAAAAAAAAAAAAAAAAAED/2gAIAQMBAT8AF//Z";
            }
        } catch (OutOfMemoryError unused) {
        }
        return ve;
    }

    public static void c(Context context, int i10, View view) {
        try {
            Bitmap bitmapC = c(i10);
            if (bitmapC != null) {
                view.setBackground(new BitmapDrawable(context.getResources(), bitmapC));
            }
        } catch (Exception e10) {
            m.tt("imgbase64", "setBg err: " + e10.getMessage());
        }
    }

    private static String tt(int i10) {
        if (i10 == 1) {
            return c();
        }
        if (i10 == 2) {
            return tt();
        }
        return null;
    }

    public static Bitmap c(int i10) {
        Bitmap bitmap;
        Map<Integer, SoftReference<Bitmap>> map = f14187c;
        SoftReference<Bitmap> softReference = map == null ? null : map.get(Integer.valueOf(i10));
        if (softReference != null && (bitmap = softReference.get()) != null && !bitmap.isRecycled()) {
            return bitmap;
        }
        String strTt = tt(i10);
        if (TextUtils.isEmpty(strTt)) {
            return null;
        }
        try {
            if (strTt.startsWith("data:image/")) {
                strTt = strTt.substring(strTt.indexOf(",") + 1);
            }
            byte[] bArrDecode = Base64.decode(strTt, 0);
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
            bitmapDecodeByteArray.setDensity(320);
            f14187c.put(Integer.valueOf(i10), new SoftReference<>(bitmapDecodeByteArray));
            return bitmapDecodeByteArray;
        } catch (Exception e10) {
            m.c(e10);
            return null;
        } catch (OutOfMemoryError e11) {
            m.c(e11);
            return null;
        }
    }
}
