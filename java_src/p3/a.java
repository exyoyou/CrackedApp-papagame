package p3;

import android.util.SparseIntArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.facebook.infer.annotation.Nullsafe;
import com.haima.hmcp.Constants;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f96178a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(7);
        f96178a = sparseIntArray;
        sparseIntArray.append(1, -7829368);
        sparseIntArray.append(2, SupportMenu.CATEGORY_MASK);
        sparseIntArray.append(3, InputDeviceCompat.SOURCE_ANY);
        sparseIntArray.append(4, InputDeviceCompat.SOURCE_ANY);
        sparseIntArray.append(5, Constants.LEVEL_SDK);
        sparseIntArray.append(6, Constants.LEVEL_SDK);
        sparseIntArray.append(7, Constants.LEVEL_SDK);
    }

    public static int a(int imageOrigin) {
        return f96178a.get(imageOrigin, -1);
    }
}
