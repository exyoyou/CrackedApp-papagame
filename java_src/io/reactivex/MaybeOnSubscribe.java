package io.reactivex;

import io.reactivex.annotations.NonNull;

/* JADX INFO: loaded from: classes.dex */
public interface MaybeOnSubscribe<T> {
    void subscribe(@NonNull MaybeEmitter<T> maybeEmitter) throws Exception;
}
