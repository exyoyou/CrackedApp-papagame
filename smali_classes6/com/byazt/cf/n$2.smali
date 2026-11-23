.class public Lcom/byazt/cf/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vvt/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cf/n;->c(ILjava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Landroid/os/Bundle;Lcom/byazt/iu/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/vvt/tt$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic c:Ljava/util/List;

.field public final synthetic da:Lcom/byazt/cf/n;

.field public final synthetic i:Lcom/byazt/iu/sp;

.field public final synthetic n:Z

.field public final synthetic sp:J

.field public final synthetic tt:Z

.field public final synthetic uj:Lcom/byazt/ete/ic;

.field public final synthetic ve:Lcom/byazt/dj/tt;

.field public final synthetic x:Lcom/byazt/iu/n;


# direct methods
.method public constructor <init>(Lcom/byazt/cf/n;Ljava/util/List;ZLcom/byazt/dj/tt;Lcom/byazt/ete/ic;ZZJLcom/byazt/iu/n;Lcom/byazt/iu/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cf/n$2;->da:Lcom/byazt/cf/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cf/n$2;->c:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/cf/n$2;->tt:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/cf/n$2;->ve:Lcom/byazt/dj/tt;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/cf/n$2;->uj:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/byazt/cf/n$2;->n:Z

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/byazt/cf/n$2;->a:Z

    .line 14
    .line 15
    iput-wide p8, p0, Lcom/byazt/cf/n$2;->sp:J

    .line 16
    .line 17
    iput-object p10, p0, Lcom/byazt/cf/n$2;->x:Lcom/byazt/iu/n;

    .line 18
    .line 19
    iput-object p11, p0, Lcom/byazt/cf/n$2;->i:Lcom/byazt/iu/sp;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/cf/n$2;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byazt/ete/ic;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->bn()Lcom/byazt/ete/hd;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/byazt/ete/hd;->tt()V

    .line 24
    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/byazt/cf/n$2;->tt:Z

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/byazt/ete/ic;->da(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/byazt/cf/n$2;->da:Lcom/byazt/cf/n;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/cf/n$2;->ve:Lcom/byazt/dj/tt;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/byazt/cf/n$2;->c:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, p1}, Lcom/byazt/cf/n;->tt(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/byazt/cf/n$2$1;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lcom/byazt/cf/n$2$1;-><init>(Lcom/byazt/cf/n$2;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/byazt/cf/n$2;->i:Lcom/byazt/iu/sp;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-interface {p1, v0}, Lcom/byazt/iu/sp;->c(Lcom/byazt/iu/ve;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
