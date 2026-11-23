.class public Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableSpliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final iterator:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/CloseableIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lcom/j256/ormlite/dao/a;->a(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;->delegate:Ljava/util/Spliterator;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;->iterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;->delegate:Ljava/util/Spliterator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/j256/ormlite/dao/e;->a(Ljava/util/Spliterator;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;->iterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public closeQuietly()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public estimateSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;->delegate:Ljava/util/Spliterator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/j256/ormlite/dao/b;->a(Ljava/util/Spliterator;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;->delegate:Ljava/util/Spliterator;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/j256/ormlite/dao/c;->a(Ljava/util/Spliterator;Ljava/util/function/Consumer;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableSpliteratorImpl;->delegate:Ljava/util/Spliterator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/j256/ormlite/dao/d;->a(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
