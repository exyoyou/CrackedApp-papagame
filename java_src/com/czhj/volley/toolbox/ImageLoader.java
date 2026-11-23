package com.czhj.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.czhj.volley.Request;
import com.czhj.volley.RequestQueue;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class ImageLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RequestQueue f25803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ImageCache f25804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, BatchedImageRequest> f25805c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<String, BatchedImageRequest> f25806d = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f25807e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f25808f = 100;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Runnable f25809g;

    private static class BatchedImageRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Request<?> f25818a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<ImageContainer> f25819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Bitmap f25820c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private VolleyError f25821d;

        public BatchedImageRequest(Request<?> request, ImageContainer imageContainer) {
            ArrayList arrayList = new ArrayList();
            this.f25819b = arrayList;
            this.f25818a = request;
            arrayList.add(imageContainer);
        }

        public void addContainer(ImageContainer imageContainer) {
            this.f25819b.add(imageContainer);
        }

        public VolleyError getError() {
            return this.f25821d;
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.f25819b.remove(imageContainer);
            if (this.f25819b.size() != 0) {
                return false;
            }
            this.f25818a.cancel();
            return true;
        }

        public void setError(VolleyError volleyError) {
            this.f25821d = volleyError;
        }
    }

    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    public class ImageContainer {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ImageListener f25823b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f25824c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f25825d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Bitmap f25826e;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            this.f25826e = bitmap;
            this.f25825d = str;
            this.f25824c = str2;
            this.f25823b = imageListener;
        }

        public void cancelRequest() {
            HashMap map;
            Threads.a();
            if (this.f25823b == null) {
                return;
            }
            BatchedImageRequest batchedImageRequest = (BatchedImageRequest) ImageLoader.this.f25805c.get(this.f25824c);
            if (batchedImageRequest == null) {
                BatchedImageRequest batchedImageRequest2 = (BatchedImageRequest) ImageLoader.this.f25806d.get(this.f25824c);
                if (batchedImageRequest2 == null) {
                    return;
                }
                batchedImageRequest2.removeContainerAndCancelIfNecessary(this);
                if (batchedImageRequest2.f25819b.size() != 0) {
                    return;
                } else {
                    map = ImageLoader.this.f25806d;
                }
            } else if (!batchedImageRequest.removeContainerAndCancelIfNecessary(this)) {
                return;
            } else {
                map = ImageLoader.this.f25805c;
            }
            map.remove(this.f25824c);
        }

        public Bitmap getBitmap() {
            return this.f25826e;
        }

        public String getRequestUrl() {
            return this.f25825d;
        }
    }

    public interface ImageListener extends Response.ErrorListener {
        void onResponse(ImageContainer imageContainer, boolean z10);
    }

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.f25803a = requestQueue;
        this.f25804b = imageCache;
    }

    public static ImageListener getImageListener(final ImageView imageView, final int i10, final int i11) {
        return new ImageListener() { // from class: com.czhj.volley.toolbox.ImageLoader.1
            @Override // com.czhj.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                int i12 = i11;
                if (i12 != 0) {
                    imageView.setImageResource(i12);
                }
            }

            @Override // com.czhj.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageContainer imageContainer, boolean z10) {
                if (imageContainer.getBitmap() != null) {
                    imageView.setImageBitmap(imageContainer.getBitmap());
                    return;
                }
                int i12 = i10;
                if (i12 != 0) {
                    imageView.setImageResource(i12);
                }
            }
        };
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public boolean isCached(String str, int i10, int i11) {
        return isCached(str, i10, i11, ImageView.ScaleType.CENTER_INSIDE);
    }

    protected Request<Bitmap> makeImageRequest(String str, int i10, int i11, ImageView.ScaleType scaleType, final String str2) {
        return new ImageRequest(str, new Response.Listener<Bitmap>() { // from class: com.czhj.volley.toolbox.ImageLoader.2
            @Override // com.czhj.volley.Response.Listener
            public void onResponse(Bitmap bitmap) {
                ImageLoader.this.onGetImageSuccess(str2, bitmap);
            }
        }, i10, i11, scaleType, Bitmap.Config.RGB_565, new Response.ErrorListener() { // from class: com.czhj.volley.toolbox.ImageLoader.3
            @Override // com.czhj.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                ImageLoader.this.onGetImageError(str2, volleyError);
            }
        });
    }

    protected void onGetImageError(String str, VolleyError volleyError) {
        BatchedImageRequest batchedImageRequestRemove = this.f25805c.remove(str);
        if (batchedImageRequestRemove != null) {
            batchedImageRequestRemove.setError(volleyError);
            a(str, batchedImageRequestRemove);
        }
    }

    protected void onGetImageSuccess(String str, Bitmap bitmap) {
        this.f25804b.putBitmap(str, bitmap);
        BatchedImageRequest batchedImageRequestRemove = this.f25805c.remove(str);
        if (batchedImageRequestRemove != null) {
            batchedImageRequestRemove.f25820c = bitmap;
            a(str, batchedImageRequestRemove);
        }
    }

    public void setBatchedResponseDelay(int i10) {
        this.f25808f = i10;
    }

    private static String a(String str, int i10, int i11, ImageView.ScaleType scaleType) {
        StringBuilder sb2 = new StringBuilder(str.length() + 12);
        sb2.append("#W");
        sb2.append(i10);
        sb2.append("#H");
        sb2.append(i11);
        sb2.append("#S");
        sb2.append(scaleType.ordinal());
        sb2.append(str);
        return sb2.toString();
    }

    public ImageContainer get(String str, ImageListener imageListener, int i10, int i11) {
        return get(str, imageListener, i10, i11, ImageView.ScaleType.CENTER_INSIDE);
    }

    public boolean isCached(String str, int i10, int i11, ImageView.ScaleType scaleType) {
        Threads.a();
        return this.f25804b.getBitmap(a(str, i10, i11, scaleType)) != null;
    }

    public ImageContainer get(String str, ImageListener imageListener, int i10, int i11, ImageView.ScaleType scaleType) {
        Threads.a();
        String strA = a(str, i10, i11, scaleType);
        Bitmap bitmap = this.f25804b.getBitmap(strA);
        if (bitmap != null) {
            ImageContainer imageContainer = new ImageContainer(bitmap, str, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, str, strA, imageListener);
        imageListener.onResponse(imageContainer2, true);
        BatchedImageRequest batchedImageRequest = this.f25805c.get(strA);
        if (batchedImageRequest != null) {
            batchedImageRequest.addContainer(imageContainer2);
            return imageContainer2;
        }
        Request<Bitmap> requestMakeImageRequest = makeImageRequest(str, i10, i11, scaleType, strA);
        RequestQueue requestQueue = this.f25803a;
        if (requestQueue != null) {
            requestQueue.add(requestMakeImageRequest);
            this.f25805c.put(strA, new BatchedImageRequest(requestMakeImageRequest, imageContainer2));
        }
        return imageContainer2;
    }

    private void a(String str, BatchedImageRequest batchedImageRequest) {
        this.f25806d.put(str, batchedImageRequest);
        if (this.f25809g == null) {
            Runnable runnable = new Runnable() { // from class: com.czhj.volley.toolbox.ImageLoader.4
                @Override // java.lang.Runnable
                public void run() {
                    for (BatchedImageRequest batchedImageRequest2 : ImageLoader.this.f25806d.values()) {
                        for (ImageContainer imageContainer : batchedImageRequest2.f25819b) {
                            if (imageContainer.f25823b != null) {
                                if (batchedImageRequest2.getError() == null) {
                                    imageContainer.f25826e = batchedImageRequest2.f25820c;
                                    imageContainer.f25823b.onResponse(imageContainer, false);
                                } else {
                                    imageContainer.f25823b.onErrorResponse(batchedImageRequest2.getError());
                                }
                            }
                        }
                    }
                    ImageLoader.this.f25806d.clear();
                    ImageLoader.this.f25809g = null;
                }
            };
            this.f25809g = runnable;
            this.f25807e.postDelayed(runnable, this.f25808f);
        }
    }
}
