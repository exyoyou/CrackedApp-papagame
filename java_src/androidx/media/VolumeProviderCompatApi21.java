package androidx.media;

import android.media.VolumeProvider;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi(21)
class VolumeProviderCompatApi21 {

    public interface Delegate {
        void onAdjustVolume(int i10);

        void onSetVolumeTo(int i10);
    }

    private VolumeProviderCompatApi21() {
    }

    public static Object createVolumeProvider(int i10, int i11, int i12, final Delegate delegate) {
        return new VolumeProvider(i10, i11, i12) { // from class: androidx.media.VolumeProviderCompatApi21.1
            @Override // android.media.VolumeProvider
            public void onAdjustVolume(int i13) {
                delegate.onAdjustVolume(i13);
            }

            @Override // android.media.VolumeProvider
            public void onSetVolumeTo(int i13) {
                delegate.onSetVolumeTo(i13);
            }
        };
    }

    public static void setCurrentVolume(Object obj, int i10) {
        ((VolumeProvider) obj).setCurrentVolume(i10);
    }
}
