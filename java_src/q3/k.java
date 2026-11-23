package q3;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class k {
    private k() {
    }

    public static String a(int imageLoadStatus) {
        if (imageLoadStatus == 0) {
            return "requested";
        }
        if (imageLoadStatus == 1) {
            return "origin_available";
        }
        if (imageLoadStatus == 2) {
            return "intermediate_available";
        }
        if (imageLoadStatus == 3) {
            return "success";
        }
        if (imageLoadStatus != 4) {
            return imageLoadStatus != 5 ? "unknown" : "error";
        }
        return "canceled";
    }
}
