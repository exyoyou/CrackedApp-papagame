package f5;

import androidx.core.view.InputDeviceCompat;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f91083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f91084b;

    public static f a(com.googlecode.mp4parser.h264.read.b bVar, int i10) throws IOException {
        f fVar = new f();
        fVar.f91083a = new int[i10];
        int iT = 8;
        int i11 = 8;
        int i12 = 0;
        while (i12 < i10) {
            if (iT != 0) {
                iT = ((bVar.t("deltaScale") + i11) + 256) % 256;
                fVar.f91084b = i12 == 0 && iT == 0;
            }
            int[] iArr = fVar.f91083a;
            if (iT != 0) {
                i11 = iT;
            }
            iArr[i12] = i11;
            i12++;
        }
        return fVar;
    }

    public void b(g5.b bVar) throws IOException {
        int i10 = 0;
        if (this.f91084b) {
            bVar.i(0, "SPS: ");
            return;
        }
        int i11 = 8;
        while (true) {
            int[] iArr = this.f91083a;
            if (i10 >= iArr.length) {
                return;
            }
            bVar.i((iArr[i10] - i11) + InputDeviceCompat.SOURCE_ANY, "SPS: ");
            i11 = this.f91083a[i10];
            i10++;
        }
    }

    public String toString() {
        return "ScalingList{scalingList=" + this.f91083a + ", useDefaultScalingMatrixFlag=" + this.f91084b + '}';
    }
}
