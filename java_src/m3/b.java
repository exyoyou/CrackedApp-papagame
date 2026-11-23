package m3;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileDescriptor;
import java.io.InputStream;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface b {

    public interface a {
        void a(String message, @Nullable String extra);
    }

    void a(final m3.a bitmapCreator);

    @Nullable
    Bitmap b(InputStream inputStream, @Nullable Rect outPadding, @Nullable BitmapFactory.Options opts);

    @Nullable
    Bitmap c(String pathName, @Nullable BitmapFactory.Options opts);

    void d(a logger);

    @Nullable
    Bitmap e(FileDescriptor fd2, @Nullable Rect outPadding, @Nullable BitmapFactory.Options opts);

    @Nullable
    Bitmap f(byte[] array, int offset, int length, @Nullable BitmapFactory.Options opts);
}
