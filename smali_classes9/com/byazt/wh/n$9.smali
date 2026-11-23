.class public Lcom/byazt/wh/n$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0x24c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/n;->ve(Lcom/byazt/t/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/t/DownloadInfo;

.field public final synthetic tt:Lcom/byazt/wh/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wh/n;Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wh/n$9;->tt:Lcom/byazt/wh/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wh/n$9;->c:Lcom/byazt/t/DownloadInfo;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/n$9;->tt:Lcom/byazt/wh/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/wh/n$9;->c:Lcom/byazt/t/DownloadInfo;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/wh/n;->ve(Lcom/byazt/wh/n;)Lcom/byazt/wh/sp;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/byazt/wh/sp;->c()Landroid/database/sqlite/SQLiteStatement;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Lcom/byazt/t/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
