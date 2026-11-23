.class public Lcom/byazt/wz/n$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/av/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x248
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/n;->c(Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/wrq/c;

.field public final synthetic ve:Lcom/byazt/wz/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/n;Ljava/util/Map;Lcom/byazt/wrq/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/n$7;->ve:Lcom/byazt/wz/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/n$7;->c:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/wz/n$7;->tt:Lcom/byazt/wrq/c;

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
    iget-object v0, p0, Lcom/byazt/wz/n$7;->ve:Lcom/byazt/wz/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/wz/n;->uj()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/wz/n$7;->ve:Lcom/byazt/wz/n;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/wz/n$7;->c:Ljava/util/Map;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/wz/n$7;->tt:Lcom/byazt/wrq/c;

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/byazt/wz/n;->c(Lcom/byazt/wz/n;Ljava/util/Map;Lcom/byazt/wrq/c;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/n$7;->ve:Lcom/byazt/wz/n;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/wz/n$7;->tt:Lcom/byazt/wrq/c;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/wz/n$7;->c:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/byazt/wz/n;->c(Lcom/byazt/wz/n;Lcom/byazt/wrq/c;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
