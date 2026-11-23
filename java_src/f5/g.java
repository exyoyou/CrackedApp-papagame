package f5;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f[] f91085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f[] f91086b;

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ScalingMatrix{ScalingList4x4=");
        f[] fVarArr = this.f91085a;
        sb2.append(fVarArr == null ? null : Arrays.asList(fVarArr));
        sb2.append("\n");
        sb2.append(", ScalingList8x8=");
        f[] fVarArr2 = this.f91086b;
        sb2.append(fVarArr2 != null ? Arrays.asList(fVarArr2) : null);
        sb2.append("\n");
        sb2.append('}');
        return sb2.toString();
    }
}
