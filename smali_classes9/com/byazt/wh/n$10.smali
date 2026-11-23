.class public Lcom/byazt/wh/n$10;
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
        0x495
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/n;->c(Lcom/byazt/t/DownloadInfo;)Z
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
    iput-object p1, p0, Lcom/byazt/wh/n$10;->tt:Lcom/byazt/wh/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wh/n$10;->c:Lcom/byazt/t/DownloadInfo;

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
    iget-object v0, p0, Lcom/byazt/wh/n$10;->tt:Lcom/byazt/wh/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/wh/n$10;->c:Lcom/byazt/t/DownloadInfo;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Lcom/byazt/t/DownloadInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
