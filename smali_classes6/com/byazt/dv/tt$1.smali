.class public Lcom/byazt/dv/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x66b,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dv/tt;->c(Ljava/util/List;Lcom/byazt/nbs/da;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic tt:Lcom/byazt/nbs/da;

.field public final synthetic ve:Lcom/byazt/dv/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/dv/tt;Ljava/util/List;Lcom/byazt/nbs/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dv/tt$1;->ve:Lcom/byazt/dv/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dv/tt$1;->c:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/dv/tt$1;->tt:Lcom/byazt/nbs/da;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dv/tt$1;->ve:Lcom/byazt/dv/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/dv/tt;->c(Lcom/byazt/dv/tt;)Lcom/byazt/pq/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/dv/tt$1;->ve:Lcom/byazt/dv/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/dv/tt;->c(Lcom/byazt/dv/tt;)Lcom/byazt/pq/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/dv/tt$1;->c:Ljava/util/List;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/byazt/dv/tt$1;->tt:Lcom/byazt/nbs/da;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lcom/byazt/pq/c;->c(Ljava/util/List;Lcom/byazt/nbs/da;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
