.class public Lcom/j256/ormlite/dao/StreamableLazyForeignCollection;
.super Lcom/j256/ormlite/dao/LazyForeignCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/dao/LazyForeignCollection<",
        "TT;TID;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x11e054398e10aab3L


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/j256/ormlite/dao/LazyForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public spliterator()Lcom/j256/ormlite/dao/CloseableSpliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableSpliterator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;

    invoke-direct {v1, v0}, Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;-><init>(Lcom/j256/ormlite/dao/CloseableIterator;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 4
    :goto_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->closeQuietly()V

    .line 5
    throw v1
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/StreamableLazyForeignCollection;->spliterator()Lcom/j256/ormlite/dao/CloseableSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/a;->a(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2, v1}, Lcom/j256/ormlite/dao/f;->a(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/j256/ormlite/dao/StreamableLazyForeignCollection$1;

    .line 15
    .line 16
    invoke-direct {v2, p0, v0}, Lcom/j256/ormlite/dao/StreamableLazyForeignCollection$1;-><init>(Lcom/j256/ormlite/dao/StreamableLazyForeignCollection;Lcom/j256/ormlite/dao/CloseableIterator;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/j256/ormlite/dao/g;->a(Ljava/util/stream/Stream;Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/j256/ormlite/dao/h;->a(Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception v1

    .line 31
    :goto_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->closeQuietly()V

    .line 32
    .line 33
    .line 34
    throw v1
.end method
