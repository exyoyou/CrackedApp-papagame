package io.netty.util.internal.shaded.org.jctools.queues;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseLinkedQueue<E> extends BaseLinkedQueuePad2<E> {
    BaseLinkedQueue() {
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int capacity() {
        return -1;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int drain(MessagePassingQueue.Consumer<E> consumer, int i10) {
        if (consumer == null) {
            throw new IllegalArgumentException("c is null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("limit is negative: " + i10);
        }
        int i11 = 0;
        if (i10 == 0) {
            return 0;
        }
        LinkedQueueNode<E> linkedQueueNodeLpConsumerNode = lpConsumerNode();
        while (i11 < i10) {
            LinkedQueueNode<E> linkedQueueNodeLvNext = linkedQueueNodeLpConsumerNode.lvNext();
            if (linkedQueueNodeLvNext == null) {
                return i11;
            }
            consumer.accept(getSingleConsumerNodeValue(linkedQueueNodeLpConsumerNode, linkedQueueNodeLvNext));
            i11++;
            linkedQueueNodeLpConsumerNode = linkedQueueNodeLvNext;
        }
        return i10;
    }

    protected E getSingleConsumerNodeValue(LinkedQueueNode<E> linkedQueueNode, LinkedQueueNode<E> linkedQueueNode2) {
        E andNullValue = linkedQueueNode2.getAndNullValue();
        linkedQueueNode.soNext(linkedQueueNode);
        spConsumerNode(linkedQueueNode2);
        return andNullValue;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean isEmpty() {
        return lvConsumerNode() == lvProducerNode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    protected final LinkedQueueNode<E> newNode() {
        return new LinkedQueueNode<>();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean relaxedOffer(E e10) {
        return offer(e10);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPeek() {
        LinkedQueueNode<E> linkedQueueNodeLvNext = lpConsumerNode().lvNext();
        if (linkedQueueNodeLvNext != null) {
            return linkedQueueNodeLvNext.lpValue();
        }
        return null;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPoll() {
        LinkedQueueNode<E> linkedQueueNodeLpConsumerNode = lpConsumerNode();
        LinkedQueueNode<E> linkedQueueNodeLvNext = linkedQueueNodeLpConsumerNode.lvNext();
        if (linkedQueueNodeLvNext != null) {
            return getSingleConsumerNodeValue(linkedQueueNodeLpConsumerNode, linkedQueueNodeLvNext);
        }
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public final int size() {
        LinkedQueueNode<E> linkedQueueNodeLvConsumerNode = lvConsumerNode();
        LinkedQueueNode<E> linkedQueueNodeLvProducerNode = lvProducerNode();
        int i10 = 0;
        while (linkedQueueNodeLvConsumerNode != linkedQueueNodeLvProducerNode && linkedQueueNodeLvConsumerNode != null && i10 < Integer.MAX_VALUE) {
            LinkedQueueNode<E> linkedQueueNodeLvNext = linkedQueueNodeLvConsumerNode.lvNext();
            if (linkedQueueNodeLvNext == linkedQueueNodeLvConsumerNode) {
                return i10;
            }
            i10++;
            linkedQueueNodeLvConsumerNode = linkedQueueNodeLvNext;
        }
        return i10;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return getClass().getName();
    }

    protected final LinkedQueueNode<E> newNode(E e10) {
        return new LinkedQueueNode<>(e10);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int drain(MessagePassingQueue.Consumer<E> consumer) {
        return MessagePassingQueueUtil.drain(this, consumer);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public void drain(MessagePassingQueue.Consumer<E> consumer, MessagePassingQueue.WaitStrategy waitStrategy, MessagePassingQueue.ExitCondition exitCondition) {
        MessagePassingQueueUtil.drain(this, consumer, waitStrategy, exitCondition);
    }
}
