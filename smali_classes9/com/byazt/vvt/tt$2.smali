.class public Lcom/byazt/vvt/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iu/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/tt;->c(ILcom/byazt/dj/tt;Ljava/lang/Object;Ljava/util/List;Landroid/os/Bundle;Lcom/byazt/iu/n;)Lcom/byazt/iu/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic c:Z

.field public final synthetic da:Lcom/byazt/vvt/tt;

.field public final synthetic i:Z

.field public final synthetic n:Lcom/byazt/ete/ic;

.field public final sl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic sp:J

.field public final synthetic tt:Lcom/byazt/dj/tt;

.field public final synthetic uj:Ljava/lang/Object;

.field public final synthetic ve:Ljava/util/List;

.field public final synthetic x:Lcom/byazt/iu/n;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/tt;ZLcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;Lcom/byazt/ete/ic;IJLcom/byazt/iu/n;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/tt$2;->da:Lcom/byazt/vvt/tt;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/vvt/tt$2;->c:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/vvt/tt$2;->tt:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/vvt/tt$2;->ve:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/vvt/tt$2;->uj:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/vvt/tt$2;->n:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    iput p7, p0, Lcom/byazt/vvt/tt$2;->a:I

    .line 14
    .line 15
    iput-wide p8, p0, Lcom/byazt/vvt/tt$2;->sp:J

    .line 16
    .line 17
    iput-object p10, p0, Lcom/byazt/vvt/tt$2;->x:Lcom/byazt/iu/n;

    .line 18
    .line 19
    iput-boolean p11, p0, Lcom/byazt/vvt/tt$2;->i:Z

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/byazt/vvt/tt$2;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/vvt/tt$2;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/vvt/tt$2;->da:Lcom/byazt/vvt/tt;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/vvt/tt$2;->tt:Lcom/byazt/dj/tt;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/vvt/tt$2;->ve:Ljava/util/List;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/byazt/vvt/tt$2;->uj:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/vvt/tt;->c(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/vvt/tt$2;->n:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    iget v1, p0, Lcom/byazt/vvt/tt$2;->a:I

    .line 19
    .line 20
    invoke-static {v1}, Lcom/byazt/aas/nb;->tt(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-wide v2, p0, Lcom/byazt/vvt/tt$2;->sp:J

    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/vvt/tt$2;->x:Lcom/byazt/iu/n;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/vvt/tt$2;->uj:Ljava/lang/Object;

    .line 34
    .line 35
    iget-boolean v2, p0, Lcom/byazt/vvt/tt$2;->i:Z

    .line 36
    .line 37
    iget-object v3, p0, Lcom/byazt/vvt/tt$2;->n:Lcom/byazt/ete/ic;

    .line 38
    .line 39
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/iu/n;->c(Ljava/lang/Object;ZLcom/byazt/ete/ic;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public tt()V
    .locals 0

    return-void
.end method

.method public ve()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/vvt/tt$2;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/vvt/tt$2;->da:Lcom/byazt/vvt/tt;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/byazt/vvt/tt$2;->i:Z

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/vvt/tt$2;->tt:Lcom/byazt/dj/tt;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/byazt/vvt/tt$2;->ve:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/vvt/tt;->c(ZLcom/byazt/dj/tt;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
