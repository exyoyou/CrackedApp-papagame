.class public Lcom/byazt/bb/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/wdw/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/tt;->c(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/bb/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/tt;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/tt$1;->tt:Lcom/byazt/bb/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bb/tt$1;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/bb/tt$1;->tt:Lcom/byazt/bb/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/bb/tt;->c(Lcom/byazt/bb/tt;)Lcom/byazt/hl/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/bb/tt$1;->c:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/bb/tt$1;->tt:Lcom/byazt/bb/tt;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/bb/tt;->ve(Lcom/byazt/bb/tt;)Lcom/byazt/cq/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/byazt/bb/tt$1;->tt:Lcom/byazt/bb/tt;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/byazt/bb/tt;->tt(Lcom/byazt/bb/tt;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
