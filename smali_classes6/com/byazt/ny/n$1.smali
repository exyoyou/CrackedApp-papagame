.class public Lcom/byazt/ny/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ny/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbc,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ny/n;->c(Lcom/byazt/bb/sp;Ljava/util/Map;Lcom/byazt/cq/c;)Lcom/byazt/bb/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/cq/c;

.field public final synthetic ve:Lcom/byazt/ny/n;


# direct methods
.method public constructor <init>(Lcom/byazt/ny/n;Ljava/util/Map;Lcom/byazt/cq/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ny/n$1;->ve:Lcom/byazt/ny/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ny/n$1;->c:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ny/n$1;->tt:Lcom/byazt/cq/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/ny/n$1;->c:Ljava/util/Map;

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/cr/n;->ve:Lcom/byazt/cr/n;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/byazt/ny/n$1;->tt:Lcom/byazt/cq/c;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ny/n$1;->c:Ljava/util/Map;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/byazt/ny/n$1;->tt:Lcom/byazt/cq/c;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/ny/n$1;->c:Ljava/util/Map;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
