package s3;

import android.net.Uri;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface d {
    d a(Object callerContext);

    d b(Uri uri);

    a build();

    d c(@Nullable a oldController);

    d setUri(@Nullable String uriString);
}
