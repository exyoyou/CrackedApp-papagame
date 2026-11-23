package com.join.kotlin.module.hmcloud.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/join/kotlin/module/hmcloud/bean/GuideState;", "", "<init>", "()V", "None", "Done", "Page", "Lcom/join/kotlin/module/hmcloud/bean/GuideState$Done;", "Lcom/join/kotlin/module/hmcloud/bean/GuideState$None;", "Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class GuideState {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/kotlin/module/hmcloud/bean/GuideState$Done;", "Lcom/join/kotlin/module/hmcloud/bean/GuideState;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Done extends GuideState {

        @NotNull
        public static final Done INSTANCE = new Done();

        private Done() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/kotlin/module/hmcloud/bean/GuideState$None;", "Lcom/join/kotlin/module/hmcloud/bean/GuideState;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class None extends GuideState {

        @NotNull
        public static final None INSTANCE = new None();

        private None() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;", "Lcom/join/kotlin/module/hmcloud/bean/GuideState;", "index", "", "next", "<init>", "(ILjava/lang/Integer;)V", "getIndex", "()I", "getNext", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Page extends GuideState {
        private final int index;

        @Nullable
        private final Integer next;

        public Page(int i10, @Nullable Integer num) {
            super(null);
            this.index = i10;
            this.next = num;
        }

        public final int getIndex() {
            return this.index;
        }

        @Nullable
        public final Integer getNext() {
            return this.next;
        }

        public /* synthetic */ Page(int i10, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(i10, (i11 & 2) != 0 ? null : num);
        }
    }

    public /* synthetic */ GuideState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private GuideState() {
    }
}
