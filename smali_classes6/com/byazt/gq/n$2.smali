.class public Lcom/byazt/gq/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gq/n;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/n$2;->c:Lcom/byazt/gq/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/n$2;->c:Lcom/byazt/gq/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/gq/n;->uj(Lcom/byazt/gq/n;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/gq/x;->c(Ljava/util/Map;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/byazt/su/DownloadStatusChangeListener;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/byazt/gq/n$2;->c:Lcom/byazt/gq/n;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/byazt/gq/n;->n(Lcom/byazt/gq/n;)Lcom/byazt/e/DownloadShortInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Lcom/byazt/su/DownloadStatusChangeListener;->onInstalled(Lcom/byazt/e/DownloadShortInfo;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method
