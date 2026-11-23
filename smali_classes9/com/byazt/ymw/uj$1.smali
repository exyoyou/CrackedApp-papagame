.class public Lcom/byazt/ymw/uj$1;
.super Lcom/byazt/ed/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ce,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ymw/uj;->c(I)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic tt:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic ve:Lcom/byazt/ymw/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ymw/uj;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ymw/uj$1;->ve:Lcom/byazt/ymw/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ymw/uj$1;->c:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ymw/uj$1;->tt:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/ed/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onConditionReturn(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ymw/uj$1;->c:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/ymw/uj$1;->tt:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
