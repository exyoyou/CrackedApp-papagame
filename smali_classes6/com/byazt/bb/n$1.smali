.class public Lcom/byazt/bb/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ysz/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/n;->c(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/bb/n;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/n;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/n$1;->tt:Lcom/byazt/bb/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bb/n$1;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/bb/n$1;->tt:Lcom/byazt/bb/n;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/bb/n;->c(Lcom/byazt/bb/n;)Lcom/byazt/hl/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/bb/n$1;->tt:Lcom/byazt/bb/n;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/bb/n;->c(Lcom/byazt/bb/n;)Lcom/byazt/hl/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/byazt/bb/n$1;->c:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/byazt/bb/n$1;->tt:Lcom/byazt/bb/n;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/byazt/bb/n;->ve(Lcom/byazt/bb/n;)Lcom/byazt/cq/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/byazt/bb/n$1;->tt:Lcom/byazt/bb/n;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/bb/n;->tt(Lcom/byazt/bb/n;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
