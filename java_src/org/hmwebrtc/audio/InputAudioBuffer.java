package org.hmwebrtc.audio;

import com.haima.hmcp.ConstantsInternal;
import java.nio.ByteBuffer;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class InputAudioBuffer implements InputAudioWriter {
    private static final int MIN_CAPACITY_BYTES = 160;
    private static final String TAG = "InputAudioBuffe";
    private int mCapacity;
    private byte[] mDataBuffer;
    private int mDelayBytes;
    private boolean mFirstRead;
    private int mSize;
    private Object mDataLock = new Object();
    private boolean mStarted = false;
    private int mReadPos = 0;
    private int mWritePos = 0;

    public InputAudioBuffer(int i10, int i11) {
        this.mDelayBytes = i11 <= 0 ? 0 : i11;
        this.mSize = 0;
        i10 = i10 < 160 ? 160 : i10;
        this.mCapacity = i10;
        this.mDataBuffer = new byte[i10];
        this.mFirstRead = true;
    }

    private static void assertTrue(boolean z10) {
        if (!z10) {
            throw new AssertionError("Expected condition to be true");
        }
    }

    private void onErrorReport(String str) {
        Logging.d(TAG, "error report: " + str);
    }

    private void onReadUnderrun() {
        Logging.d(TAG, "read underrun!");
    }

    private void onWriteOverrun() {
        Logging.d(TAG, "write overrun!");
    }

    public int read(ByteBuffer byteBuffer, int i10) {
        assertTrue(i10 < this.mCapacity);
        synchronized (this.mDataLock) {
            int i11 = -1;
            if (!this.mStarted) {
                return -1;
            }
            int i12 = i10;
            do {
                try {
                    int i13 = (this.mFirstRead ? this.mDelayBytes : 0) + i10;
                    if (this.mSize < i13) {
                        this.mDataLock.wait();
                    }
                    if (this.mSize >= i13) {
                        byteBuffer.clear();
                        int i14 = this.mReadPos;
                        int i15 = i14 + i10;
                        int i16 = this.mCapacity;
                        if (i15 <= i16) {
                            byteBuffer.put(this.mDataBuffer, i14, i10);
                        } else {
                            int i17 = i16 - i14;
                            byteBuffer.put(this.mDataBuffer, i14, i17);
                            byteBuffer.put(this.mDataBuffer, 0, i10 - i17);
                            i12 = i10;
                        }
                        this.mReadPos = (this.mReadPos + i10) % this.mCapacity;
                        this.mSize -= i10;
                        break;
                    }
                } catch (Exception e10) {
                    onErrorReport("read " + e10.toString());
                }
            } while (this.mStarted);
            if (this.mStarted) {
                this.mFirstRead = false;
                i11 = i12;
            }
            return i11;
        }
    }

    public boolean resize(int i10) {
        if (i10 < 160) {
            return false;
        }
        synchronized (this.mDataLock) {
            if (this.mStarted) {
                return false;
            }
            this.mCapacity = i10;
            this.mDataBuffer = new byte[i10];
            this.mReadPos = 0;
            this.mWritePos = 0;
            this.mSize = 0;
            this.mFirstRead = true;
            return true;
        }
    }

    public int size() {
        int i10;
        synchronized (this.mDataLock) {
            i10 = this.mSize;
        }
        return i10;
    }

    public void start() {
        Logging.w(TAG, "start");
        synchronized (this.mDataLock) {
            this.mStarted = true;
            this.mFirstRead = true;
        }
    }

    public void stop() {
        Logging.w(TAG, ConstantsInternal.STOP);
        synchronized (this.mDataLock) {
            this.mStarted = false;
            this.mReadPos = 0;
            this.mWritePos = 0;
            this.mSize = 0;
            this.mFirstRead = true;
        }
    }

    @Override // org.hmwebrtc.audio.InputAudioWriter
    public int write(byte[] bArr, int i10, int i11) {
        assertTrue(i11 < this.mCapacity && i11 > 0);
        synchronized (this.mDataLock) {
            if (!this.mStarted) {
                return -1;
            }
            int i12 = this.mWritePos;
            if (i12 != 0) {
                int i13 = i12 + i11;
                int i14 = this.mCapacity;
                if (i13 <= i14) {
                    System.arraycopy(bArr, i10, this.mDataBuffer, i12, i11);
                } else {
                    int i15 = i14 - i12;
                    System.arraycopy(bArr, i10, this.mDataBuffer, i12, i15);
                    System.arraycopy(bArr, i10 + i15, this.mDataBuffer, 0, i11 - i15);
                }
            } else {
                System.arraycopy(bArr, i10, this.mDataBuffer, i12, i11);
            }
            int i16 = this.mWritePos + i11;
            int i17 = this.mCapacity;
            int i18 = i16 % i17;
            this.mWritePos = i18;
            int i19 = this.mSize + i11;
            this.mSize = i19;
            if (i19 >= i17) {
                this.mSize = i17;
                this.mReadPos = ((i18 + 1) + i17) % i17;
                onWriteOverrun();
            }
            this.mDataLock.notify();
            return i11;
        }
    }
}
