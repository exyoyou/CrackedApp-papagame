package com.vincent.videocompressor;

import android.os.AsyncTask;

/* JADX INFO: loaded from: classes9.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85800a = "h";

    public interface a {
        void onFail();

        void onProgress(float percent);

        void onStart();

        void onSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static class b extends AsyncTask<String, Float, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private a f85801a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f85802b;

        class a implements VideoController.b {
            a() {
            }

            @Override // com.vincent.videocompressor.VideoController.b
            public void onProgress(float percent) {
                b.this.publishProgress(Float.valueOf(percent));
            }
        }

        public b(a listener, int quality) {
            this.f85801a = listener;
            this.f85802b = quality;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground(String... paths) {
            return Boolean.valueOf(VideoController.d().a(paths[0], paths[1], this.f85802b, new a()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean result) {
            super.onPostExecute(result);
            if (this.f85801a != null) {
                if (result.booleanValue()) {
                    this.f85801a.onSuccess();
                } else {
                    this.f85801a.onFail();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onProgressUpdate(Float... percent) {
            super.onProgressUpdate(percent);
            a aVar = this.f85801a;
            if (aVar != null) {
                aVar.onProgress(percent[0].floatValue());
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            a aVar = this.f85801a;
            if (aVar != null) {
                aVar.onStart();
            }
        }
    }

    public static b a(String srcPath, String destPath, a listener) {
        b bVar = new b(listener, 1);
        bVar.execute(srcPath, destPath);
        return bVar;
    }

    public static b b(String srcPath, String destPath, a listener) {
        b bVar = new b(listener, 3);
        bVar.execute(srcPath, destPath);
        return bVar;
    }

    public static b c(String srcPath, String destPath, a listener) {
        b bVar = new b(listener, 2);
        bVar.execute(srcPath, destPath);
        return bVar;
    }
}
