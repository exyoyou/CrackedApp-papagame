.class public Lcom/byazt/b/DownloadHandleService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x4d1
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/DownloadHandleService;->c(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/b/DownloadHandleService;


# direct methods
.method public constructor <init>(Lcom/byazt/b/DownloadHandleService;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/DownloadHandleService$1;->tt:Lcom/byazt/b/DownloadHandleService;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/b/DownloadHandleService$1;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/byazt/b/DownloadHandleService$1;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/zz/uj;->z(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
