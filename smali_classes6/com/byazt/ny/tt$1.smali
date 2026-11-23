.class public Lcom/byazt/ny/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbc,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ny/tt;->c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/cq/c;

.field public final synthetic ve:Lcom/byazt/ny/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ny/tt;Ljava/util/Map;Lcom/byazt/cq/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ny/tt$1;->ve:Lcom/byazt/ny/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ny/tt$1;->c:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ny/tt$1;->tt:Lcom/byazt/cq/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ny/tt$1;->c:Ljava/util/Map;

    sget-object v1, Lcom/byazt/cr/ve;->ve:Lcom/byazt/cr/ve;

    invoke-static {v0, v1}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/ny/tt$1;->tt:Lcom/byazt/cq/c;

    iget-object v1, p0, Lcom/byazt/ny/tt$1;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/ny/tt$1;->c:Ljava/util/Map;

    const-string v1, "is_open_web_page"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/byazt/ny/tt$1;->tt:Lcom/byazt/cq/c;

    iget-object v0, p0, Lcom/byazt/ny/tt$1;->c:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return-void
.end method
