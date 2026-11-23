package io.netty.handler.codec.spdy;

import io.netty.channel.ChannelPromise;
import io.netty.util.internal.PlatformDependent;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class SpdySession {
    private final AtomicInteger receiveWindowSize;
    private final AtomicInteger sendWindowSize;
    private final AtomicInteger activeLocalStreams = new AtomicInteger();
    private final AtomicInteger activeRemoteStreams = new AtomicInteger();
    private final Map<Integer, StreamState> activeStreams = PlatformDependent.newConcurrentHashMap();
    private final StreamComparator streamComparator = new StreamComparator();

    public static final class PendingWrite {
        final ChannelPromise promise;
        final SpdyDataFrame spdyDataFrame;

        PendingWrite(SpdyDataFrame spdyDataFrame, ChannelPromise channelPromise) {
            this.spdyDataFrame = spdyDataFrame;
            this.promise = channelPromise;
        }

        void fail(Throwable th) {
            this.spdyDataFrame.release();
            this.promise.setFailure(th);
        }
    }

    private final class StreamComparator implements Comparator<Integer> {
        StreamComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Integer num, Integer num2) {
            int priority = ((StreamState) SpdySession.this.activeStreams.get(num)).getPriority() - ((StreamState) SpdySession.this.activeStreams.get(num2)).getPriority();
            return priority != 0 ? priority : num.intValue() - num2.intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class StreamState {
        private boolean localSideClosed;
        private final Queue<PendingWrite> pendingWriteQueue = new ConcurrentLinkedQueue();
        private final byte priority;
        private final AtomicInteger receiveWindowSize;
        private int receiveWindowSizeLowerBound;
        private boolean receivedReply;
        private boolean remoteSideClosed;
        private final AtomicInteger sendWindowSize;

        StreamState(byte b10, boolean z10, boolean z11, int i10, int i11) {
            this.priority = b10;
            this.remoteSideClosed = z10;
            this.localSideClosed = z11;
            this.sendWindowSize = new AtomicInteger(i10);
            this.receiveWindowSize = new AtomicInteger(i11);
        }

        void clearPendingWrites(Throwable th) {
            while (true) {
                PendingWrite pendingWritePoll = this.pendingWriteQueue.poll();
                if (pendingWritePoll == null) {
                    return;
                } else {
                    pendingWritePoll.fail(th);
                }
            }
        }

        void closeLocalSide() {
            this.localSideClosed = true;
        }

        void closeRemoteSide() {
            this.remoteSideClosed = true;
        }

        PendingWrite getPendingWrite() {
            return this.pendingWriteQueue.peek();
        }

        byte getPriority() {
            return this.priority;
        }

        int getReceiveWindowSizeLowerBound() {
            return this.receiveWindowSizeLowerBound;
        }

        int getSendWindowSize() {
            return this.sendWindowSize.get();
        }

        boolean hasReceivedReply() {
            return this.receivedReply;
        }

        boolean isLocalSideClosed() {
            return this.localSideClosed;
        }

        boolean isRemoteSideClosed() {
            return this.remoteSideClosed;
        }

        boolean putPendingWrite(PendingWrite pendingWrite) {
            return this.pendingWriteQueue.offer(pendingWrite);
        }

        void receivedReply() {
            this.receivedReply = true;
        }

        PendingWrite removePendingWrite() {
            return this.pendingWriteQueue.poll();
        }

        void setReceiveWindowSizeLowerBound(int i10) {
            this.receiveWindowSizeLowerBound = i10;
        }

        int updateReceiveWindowSize(int i10) {
            return this.receiveWindowSize.addAndGet(i10);
        }

        int updateSendWindowSize(int i10) {
            return this.sendWindowSize.addAndGet(i10);
        }
    }

    SpdySession(int i10, int i11) {
        this.sendWindowSize = new AtomicInteger(i10);
        this.receiveWindowSize = new AtomicInteger(i11);
    }

    private StreamState removeActiveStream(int i10, boolean z10) {
        StreamState streamStateRemove = this.activeStreams.remove(Integer.valueOf(i10));
        if (streamStateRemove != null) {
            if (z10) {
                this.activeRemoteStreams.decrementAndGet();
            } else {
                this.activeLocalStreams.decrementAndGet();
            }
        }
        return streamStateRemove;
    }

    void acceptStream(int i10, byte b10, boolean z10, boolean z11, int i11, int i12, boolean z12) {
        if (!(z10 && z11) && this.activeStreams.put(Integer.valueOf(i10), new StreamState(b10, z10, z11, i11, i12)) == null) {
            if (z12) {
                this.activeRemoteStreams.incrementAndGet();
            } else {
                this.activeLocalStreams.incrementAndGet();
            }
        }
    }

    Map<Integer, StreamState> activeStreams() {
        TreeMap treeMap = new TreeMap(this.streamComparator);
        treeMap.putAll(this.activeStreams);
        return treeMap;
    }

    void closeLocalSide(int i10, boolean z10) {
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        if (streamState != null) {
            streamState.closeLocalSide();
            if (streamState.isRemoteSideClosed()) {
                removeActiveStream(i10, z10);
            }
        }
    }

    void closeRemoteSide(int i10, boolean z10) {
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        if (streamState != null) {
            streamState.closeRemoteSide();
            if (streamState.isLocalSideClosed()) {
                removeActiveStream(i10, z10);
            }
        }
    }

    PendingWrite getPendingWrite(int i10) {
        PendingWrite pendingWrite;
        if (i10 != 0) {
            StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
            if (streamState != null) {
                return streamState.getPendingWrite();
            }
            return null;
        }
        Iterator<Map.Entry<Integer, StreamState>> it2 = activeStreams().entrySet().iterator();
        while (it2.hasNext()) {
            StreamState value = it2.next().getValue();
            if (value.getSendWindowSize() > 0 && (pendingWrite = value.getPendingWrite()) != null) {
                return pendingWrite;
            }
        }
        return null;
    }

    int getReceiveWindowSizeLowerBound(int i10) {
        StreamState streamState;
        if (i10 == 0 || (streamState = this.activeStreams.get(Integer.valueOf(i10))) == null) {
            return 0;
        }
        return streamState.getReceiveWindowSizeLowerBound();
    }

    int getSendWindowSize(int i10) {
        if (i10 == 0) {
            return this.sendWindowSize.get();
        }
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        if (streamState != null) {
            return streamState.getSendWindowSize();
        }
        return -1;
    }

    boolean hasReceivedReply(int i10) {
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        return streamState != null && streamState.hasReceivedReply();
    }

    boolean isActiveStream(int i10) {
        return this.activeStreams.containsKey(Integer.valueOf(i10));
    }

    boolean isLocalSideClosed(int i10) {
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        return streamState == null || streamState.isLocalSideClosed();
    }

    boolean isRemoteSideClosed(int i10) {
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        return streamState == null || streamState.isRemoteSideClosed();
    }

    boolean noActiveStreams() {
        return this.activeStreams.isEmpty();
    }

    int numActiveStreams(boolean z10) {
        return z10 ? this.activeRemoteStreams.get() : this.activeLocalStreams.get();
    }

    boolean putPendingWrite(int i10, PendingWrite pendingWrite) {
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        return streamState != null && streamState.putPendingWrite(pendingWrite);
    }

    void receivedReply(int i10) {
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        if (streamState != null) {
            streamState.receivedReply();
        }
    }

    PendingWrite removePendingWrite(int i10) {
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        if (streamState != null) {
            return streamState.removePendingWrite();
        }
        return null;
    }

    void removeStream(int i10, Throwable th, boolean z10) {
        StreamState streamStateRemoveActiveStream = removeActiveStream(i10, z10);
        if (streamStateRemoveActiveStream != null) {
            streamStateRemoveActiveStream.clearPendingWrites(th);
        }
    }

    void updateAllReceiveWindowSizes(int i10) {
        for (StreamState streamState : this.activeStreams.values()) {
            streamState.updateReceiveWindowSize(i10);
            if (i10 < 0) {
                streamState.setReceiveWindowSizeLowerBound(i10);
            }
        }
    }

    void updateAllSendWindowSizes(int i10) {
        Iterator<StreamState> it2 = this.activeStreams.values().iterator();
        while (it2.hasNext()) {
            it2.next().updateSendWindowSize(i10);
        }
    }

    int updateReceiveWindowSize(int i10, int i11) {
        if (i10 == 0) {
            return this.receiveWindowSize.addAndGet(i11);
        }
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        if (streamState == null) {
            return -1;
        }
        if (i11 > 0) {
            streamState.setReceiveWindowSizeLowerBound(0);
        }
        return streamState.updateReceiveWindowSize(i11);
    }

    int updateSendWindowSize(int i10, int i11) {
        if (i10 == 0) {
            return this.sendWindowSize.addAndGet(i11);
        }
        StreamState streamState = this.activeStreams.get(Integer.valueOf(i10));
        if (streamState != null) {
            return streamState.updateSendWindowSize(i11);
        }
        return -1;
    }
}
