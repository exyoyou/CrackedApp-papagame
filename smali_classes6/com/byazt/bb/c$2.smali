.class public Lcom/byazt/bb/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/av/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/c;->c(Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Ljava/util/Map;

.field public final synthetic uj:Lcom/byazt/bb/c;

.field public final synthetic ve:Lcom/byazt/wrq/c;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/c;ILjava/util/Map;Lcom/byazt/wrq/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/c$2;->uj:Lcom/byazt/bb/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/bb/c$2;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/bb/c$2;->tt:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/bb/c$2;->ve:Lcom/byazt/wrq/c;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/bb/c$2;->uj:Lcom/byazt/bb/c;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/bb/c$2;->c:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/bb/c;->ve(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/bb/c$2;->uj:Lcom/byazt/bb/c;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iget v2, p0, Lcom/byazt/bb/c$2;->c:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/byazt/bb/c;->c(ZI)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/bb/c$2;->uj:Lcom/byazt/bb/c;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/bb/c$2;->tt:Ljava/util/Map;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/bb/c$2;->ve:Lcom/byazt/wrq/c;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/byazt/bb/c;->c(Lcom/byazt/bb/c;Ljava/util/Map;Lcom/byazt/wrq/c;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/bb/c$2;->uj:Lcom/byazt/bb/c;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/byazt/bb/c$2;->ve:Lcom/byazt/wrq/c;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/bb/c$2;->tt:Ljava/util/Map;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/byazt/bb/c;->c(Lcom/byazt/wrq/c;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
