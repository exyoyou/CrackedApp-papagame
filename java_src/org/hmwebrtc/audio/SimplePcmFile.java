package org.hmwebrtc.audio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes10.dex */
class SimplePcmFile {
    private static final String TAG = "AudioSimplePcmFile";
    private String mFilePath;
    private FileInputStream mInputFileStream;
    private SimpleReader mReader;
    private SimpleWriter mWriter;

    public interface Reader {
        int read(byte[] bArr, int i10, int i11);

        void seekBegin();
    }

    class SimpleReader implements Reader {
        private File mFile;
        private FileInputStream mFileStream;

        SimpleReader(String str) {
            this.mFile = new File(str);
            open();
        }

        private void open() {
            try {
                if (this.mFile.exists() && this.mFile.isFile() && this.mFile.canRead() && this.mFile.length() > 0) {
                    this.mFileStream = new FileInputStream(this.mFile);
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("open SimpleReader failed! ");
                sb2.append(e10.toString());
            }
        }

        public void close() {
            try {
                FileInputStream fileInputStream = this.mFileStream;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("close filed! ");
                sb2.append(e10.toString());
            }
        }

        public boolean isOpend() {
            return this.mFileStream != null;
        }

        @Override // org.hmwebrtc.audio.SimplePcmFile.Reader
        public int read(byte[] bArr, int i10, int i11) {
            try {
                FileInputStream fileInputStream = this.mFileStream;
                if (fileInputStream != null) {
                    return fileInputStream.read(bArr, i10, i11);
                }
                return -1;
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("read data filed! ");
                sb2.append(e10.toString());
                return 0;
            }
        }

        @Override // org.hmwebrtc.audio.SimplePcmFile.Reader
        public void seekBegin() {
            close();
            open();
        }
    }

    class SimpleWriter implements Writer {
        private File mFile;
        private FileOutputStream mFileStream;

        SimpleWriter(String str) {
            File file = new File(str);
            this.mFile = file;
            try {
                file.createNewFile();
                if (this.mFile.canWrite()) {
                    this.mFileStream = new FileOutputStream(this.mFile);
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("create SimpleWriter failed! ");
                sb2.append(e10.toString());
            }
        }

        public void close() {
            try {
                FileOutputStream fileOutputStream = this.mFileStream;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("close error! ");
                sb2.append(e10.toString());
            }
        }

        @Override // org.hmwebrtc.audio.SimplePcmFile.Writer
        public void write(byte[] bArr, int i10, int i11) {
            try {
                FileOutputStream fileOutputStream = this.mFileStream;
                if (fileOutputStream != null) {
                    fileOutputStream.write(bArr, i10, i11);
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("write error! ");
                sb2.append(e10.toString());
            }
        }
    }

    public interface Writer {
        void write(byte[] bArr, int i10, int i11);
    }

    public SimplePcmFile(String str) {
        this.mFilePath = str;
    }

    public void close() {
        SimpleReader simpleReader = this.mReader;
        if (simpleReader != null) {
            simpleReader.close();
            this.mReader = null;
        }
        SimpleWriter simpleWriter = this.mWriter;
        if (simpleWriter != null) {
            simpleWriter.close();
            this.mWriter = null;
        }
    }

    public Reader getReader() {
        if (this.mReader == null) {
            this.mReader = new SimpleReader(this.mFilePath);
        }
        return this.mReader;
    }

    public Writer getWriter() {
        if (this.mWriter == null) {
            this.mWriter = new SimpleWriter(this.mFilePath);
        }
        return this.mWriter;
    }
}
