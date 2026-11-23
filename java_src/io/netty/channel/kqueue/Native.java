package io.netty.channel.kqueue;

import io.netty.channel.unix.Errors;
import io.netty.channel.unix.FileDescriptor;
import io.netty.channel.unix.Socket;
import io.netty.util.internal.NativeLibraryLoader;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.ThrowableUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class Native {
    static final short EVFILT_READ;
    static final short EVFILT_SOCK;
    static final short EVFILT_USER;
    static final short EVFILT_WRITE;
    static final short EV_ADD;
    static final short EV_ADD_CLEAR_ENABLE;
    static final short EV_CLEAR;
    static final short EV_DELETE;
    static final short EV_DELETE_DISABLE;
    static final short EV_DISABLE;
    static final short EV_ENABLE;
    static final short EV_EOF;
    static final short EV_ERROR;
    static final int NOTE_CONNRESET;
    static final int NOTE_DISCONNECTED;
    static final int NOTE_RDHUP;
    static final int NOTE_READCLOSED;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) Native.class);

    static {
        try {
            sizeofKEvent();
        } catch (UnsatisfiedLinkError unused) {
            loadNativeLibrary();
        }
        Socket.initialize();
        short sEvAdd = KQueueStaticallyReferencedJniMethods.evAdd();
        EV_ADD = sEvAdd;
        short sEvEnable = KQueueStaticallyReferencedJniMethods.evEnable();
        EV_ENABLE = sEvEnable;
        short sEvDisable = KQueueStaticallyReferencedJniMethods.evDisable();
        EV_DISABLE = sEvDisable;
        short sEvDelete = KQueueStaticallyReferencedJniMethods.evDelete();
        EV_DELETE = sEvDelete;
        short sEvClear = KQueueStaticallyReferencedJniMethods.evClear();
        EV_CLEAR = sEvClear;
        EV_ERROR = KQueueStaticallyReferencedJniMethods.evError();
        EV_EOF = KQueueStaticallyReferencedJniMethods.evEOF();
        short sNoteReadClosed = KQueueStaticallyReferencedJniMethods.noteReadClosed();
        NOTE_READCLOSED = sNoteReadClosed;
        short sNoteConnReset = KQueueStaticallyReferencedJniMethods.noteConnReset();
        NOTE_CONNRESET = sNoteConnReset;
        short sNoteDisconnected = KQueueStaticallyReferencedJniMethods.noteDisconnected();
        NOTE_DISCONNECTED = sNoteDisconnected;
        NOTE_RDHUP = sNoteReadClosed | sNoteConnReset | sNoteDisconnected;
        EV_ADD_CLEAR_ENABLE = (short) (sEvAdd | sEvClear | sEvEnable);
        EV_DELETE_DISABLE = (short) (sEvDelete | sEvDisable);
        EVFILT_READ = KQueueStaticallyReferencedJniMethods.evfiltRead();
        EVFILT_WRITE = KQueueStaticallyReferencedJniMethods.evfiltWrite();
        EVFILT_USER = KQueueStaticallyReferencedJniMethods.evfiltUser();
        EVFILT_SOCK = KQueueStaticallyReferencedJniMethods.evfiltSock();
    }

    private Native() {
    }

    static native int keventAddUserEvent(int i10, int i11);

    static native int keventTriggerUserEvent(int i10, int i11);

    private static native int keventWait(int i10, long j10, int i11, long j11, int i12, int i13, int i14);

    static int keventWait(int i10, KQueueEventArray kQueueEventArray, KQueueEventArray kQueueEventArray2, int i11, int i12) throws IOException {
        int iKeventWait = keventWait(i10, kQueueEventArray.memoryAddress(), kQueueEventArray.size(), kQueueEventArray2.memoryAddress(), kQueueEventArray2.capacity(), i11, i12);
        if (iKeventWait >= 0) {
            return iKeventWait;
        }
        throw Errors.newIOException("kevent", iKeventWait);
    }

    private static native int kqueueCreate();

    private static void loadNativeLibrary() throws Throwable {
        String strTrim = SystemPropertyUtil.get("os.name").toLowerCase(Locale.UK).trim();
        if (!strTrim.startsWith("mac") && !strTrim.contains("bsd") && !strTrim.startsWith("darwin")) {
            throw new IllegalStateException("Only supported on BSD");
        }
        String str = "netty_transport_native_kqueue_" + PlatformDependent.normalizedArch();
        ClassLoader classLoader = PlatformDependent.getClassLoader(Native.class);
        try {
            NativeLibraryLoader.load(str, classLoader);
        } catch (UnsatisfiedLinkError e10) {
            try {
                NativeLibraryLoader.load("netty_transport_native_kqueue", classLoader);
                logger.debug("Failed to load {}", str, e10);
            } catch (UnsatisfiedLinkError e11) {
                ThrowableUtil.addSuppressed(e10, e11);
                throw e10;
            }
        }
    }

    static FileDescriptor newKQueue() {
        return new FileDescriptor(kqueueCreate());
    }

    static native int offsetofKEventFFlags();

    static native int offsetofKEventFilter();

    static native int offsetofKEventFlags();

    static native int offsetofKEventIdent();

    static native int offsetofKeventData();

    static native int sizeofKEvent();
}
