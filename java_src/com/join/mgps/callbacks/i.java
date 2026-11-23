package com.join.mgps.callbacks;

import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes3.dex */
public interface i {
    void onCommentCommitSuccess();

    void onHide(Fragment fragment);

    void onItemClick(int postId, int contentType, boolean isCollection);

    void onProgressItemClick(Object item);

    void onTimeClick(int t10);
}
