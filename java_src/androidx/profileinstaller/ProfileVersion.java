package androidx.profileinstaller;

import androidx.annotation.RestrictTo;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class ProfileVersion {
    public static final int MAX_SUPPORTED_SDK = 34;
    public static final int MIN_SUPPORTED_SDK = 24;
    static final byte[] V015_S = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.M, 0};
    static final byte[] V010_P = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.H, 0};
    static final byte[] V009_O_MR1 = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.H, 57, 0};
    static final byte[] V005_O = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.M, 0};
    static final byte[] V001_N = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, 0};
    static final byte[] METADATA_V001_N = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, 0};
    static final byte[] METADATA_V002 = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.J, 0};

    private ProfileVersion() {
    }

    static String dexKeySeparator(byte[] bArr) {
        return (Arrays.equals(bArr, V001_N) || Arrays.equals(bArr, V005_O)) ? ":" : "!";
    }
}
