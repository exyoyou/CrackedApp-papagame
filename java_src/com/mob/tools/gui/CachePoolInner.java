package com.mob.tools.gui;

import com.mob.tools.MobLog;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class CachePoolInner<K, V> {
    private int capacity;
    private OnRemoveListener<K, V> listener;
    private LinkedList<CachePoolInner<K, V>.Node<K, V>> pool = new LinkedList<>();
    private int poolSize;

    private class Node<K, V> {
        private long cacheTime;
        public K key;
        private int size;
        public V value;

        private Node() {
        }
    }

    public interface OnRemoveListener<K, V> {
        void onRemove(K k10, V v10);
    }

    public CachePoolInner(int i10) {
        this.capacity = i10;
    }

    public synchronized void clear() {
        LinkedList<CachePoolInner<K, V>.Node<K, V>> linkedList = this.pool;
        if (linkedList != null && this.capacity > 0) {
            if (this.listener == null) {
                linkedList.clear();
            } else {
                while (this.pool.size() > 0) {
                    CachePoolInner<K, V>.Node<K, V> nodeRemoveLast = this.pool.removeLast();
                    if (nodeRemoveLast != null) {
                        this.poolSize -= ((Node) nodeRemoveLast).size;
                        OnRemoveListener<K, V> onRemoveListener = this.listener;
                        if (onRemoveListener != null) {
                            onRemoveListener.onRemove(nodeRemoveLast.key, nodeRemoveLast.value);
                        }
                    }
                }
            }
            this.poolSize = 0;
        }
    }

    public synchronized V get(K k10) {
        CachePoolInner<K, V>.Node<K, V> next;
        if (this.pool != null && this.capacity > 0) {
            while (this.poolSize > this.capacity) {
                try {
                    CachePoolInner<K, V>.Node<K, V> nodeRemoveLast = this.pool.removeLast();
                    if (nodeRemoveLast != null) {
                        this.poolSize -= ((Node) nodeRemoveLast).size;
                        OnRemoveListener<K, V> onRemoveListener = this.listener;
                        if (onRemoveListener != null) {
                            onRemoveListener.onRemove(nodeRemoveLast.key, nodeRemoveLast.value);
                        }
                    }
                } catch (Throwable th) {
                    MobLog.getInstance().w(th);
                }
            }
            Iterator<CachePoolInner<K, V>.Node<K, V>> it2 = this.pool.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                if (next != null && ((k10 == null && next.key == null) || (k10 != null && k10.equals(next.key)))) {
                    break;
                    break;
                }
            }
            if (next != null) {
                this.pool.set(0, next);
                ((Node) next).cacheTime = System.currentTimeMillis();
                return next.value;
            }
        }
        return null;
    }

    public synchronized boolean put(K k10, V v10, int i10) {
        if (this.pool != null && this.capacity > 0) {
            try {
                CachePoolInner<K, V>.Node<K, V> node = new Node<>();
                node.key = k10;
                node.value = v10;
                ((Node) node).cacheTime = System.currentTimeMillis();
                ((Node) node).size = i10;
                this.pool.add(0, node);
                this.poolSize += i10;
                while (this.poolSize > this.capacity) {
                    CachePoolInner<K, V>.Node<K, V> nodeRemoveLast = this.pool.removeLast();
                    if (nodeRemoveLast != null) {
                        this.poolSize -= ((Node) nodeRemoveLast).size;
                        OnRemoveListener<K, V> onRemoveListener = this.listener;
                        if (onRemoveListener != null) {
                            onRemoveListener.onRemove(nodeRemoveLast.key, nodeRemoveLast.value);
                        } else {
                            continue;
                        }
                    }
                }
                return true;
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
                return false;
            }
        }
        return false;
    }

    public void setOnRemoveListener(OnRemoveListener<K, V> onRemoveListener) {
        this.listener = onRemoveListener;
    }

    public synchronized int size() {
        return this.poolSize;
    }

    public synchronized void trimBeforeTime(long j10) {
        LinkedList<CachePoolInner<K, V>.Node<K, V>> linkedList = this.pool;
        if (linkedList != null && this.capacity > 0) {
            int size = linkedList.size() - 1;
            while (size >= 0) {
                if (((Node) this.pool.get(size)).cacheTime < j10) {
                    CachePoolInner<K, V>.Node<K, V> nodeRemove = this.pool.remove(size);
                    if (nodeRemove != null) {
                        this.poolSize -= ((Node) nodeRemove).size;
                        OnRemoveListener<K, V> onRemoveListener = this.listener;
                        if (onRemoveListener != null) {
                            onRemoveListener.onRemove(nodeRemove.key, nodeRemove.value);
                        }
                    }
                } else {
                    size--;
                }
            }
            while (this.poolSize > this.capacity) {
                CachePoolInner<K, V>.Node<K, V> nodeRemoveLast = this.pool.removeLast();
                if (nodeRemoveLast != null) {
                    this.poolSize -= ((Node) nodeRemoveLast).size;
                    OnRemoveListener<K, V> onRemoveListener2 = this.listener;
                    if (onRemoveListener2 != null) {
                        onRemoveListener2.onRemove(nodeRemoveLast.key, nodeRemoveLast.value);
                    }
                }
            }
        }
    }

    public synchronized boolean put(K k10, V v10) {
        return put(k10, v10, 1);
    }
}
