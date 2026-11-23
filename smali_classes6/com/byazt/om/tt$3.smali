.class public Lcom/byazt/om/tt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pl/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/om/tt;->tt(Lcom/byazt/om/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/om/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/om/tt;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/om/tt$3;->tt:Lcom/byazt/om/tt;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/om/tt$3;->c:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/pl/tt;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/om/tt$3;->tt:Lcom/byazt/om/tt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/om/tt;->c:Ljava/util/Map;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/List;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    move-object v3, v0

    .line 21
    iget-object v1, p0, Lcom/byazt/om/tt$3;->tt:Lcom/byazt/om/tt;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/byazt/om/tt;->c(Lcom/byazt/om/tt;)Lcom/byazt/ll/tt;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-wide v5, p0, Lcom/byazt/om/tt$3;->c:J

    .line 28
    .line 29
    move-object v4, p1

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/byazt/om/tt;->c(Lcom/byazt/om/tt;Lcom/byazt/ll/tt;Ljava/util/List;Lcom/byazt/pl/tt;J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
