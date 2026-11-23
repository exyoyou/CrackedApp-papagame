.class public Lcom/byazt/zz/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbd,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zz/uj;->c(Lcom/byazt/t/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zz/u;

.field public final synthetic tt:Lcom/byazt/t/DownloadTask;

.field public final synthetic ve:Lcom/byazt/zz/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/zz/uj;Lcom/byazt/zz/u;Lcom/byazt/t/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/uj$1;->ve:Lcom/byazt/zz/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zz/uj$1;->c:Lcom/byazt/zz/u;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/zz/uj$1;->tt:Lcom/byazt/t/DownloadTask;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/uj$1;->c:Lcom/byazt/zz/u;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/zz/uj$1;->tt:Lcom/byazt/t/DownloadTask;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/byazt/zz/u;->c(Lcom/byazt/t/DownloadTask;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
