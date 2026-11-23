.class public Lcom/byazt/di/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/e/tt$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x159,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/tt;->tt(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZLcom/byazt/ou/IDownloadButtonClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/su/DownloadModel;

.field public final synthetic tt:Lcom/byazt/su/DownloadEventConfig;

.field public final synthetic uj:Lcom/byazt/di/tt;

.field public final synthetic ve:Lcom/byazt/su/DownloadController;


# direct methods
.method public constructor <init>(Lcom/byazt/di/tt;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/tt$2;->uj:Lcom/byazt/di/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/di/tt$2;->c:Lcom/byazt/su/DownloadModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/di/tt$2;->tt:Lcom/byazt/su/DownloadEventConfig;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/di/tt$2;->ve:Lcom/byazt/su/DownloadController;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Landroid/content/DialogInterface;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/di/tt$2;->uj:Lcom/byazt/di/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/di/tt;->c(Lcom/byazt/di/tt;)Lcom/byazt/di/da;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p0, Lcom/byazt/di/tt$2;->c:Lcom/byazt/su/DownloadModel;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, p0, Lcom/byazt/di/tt$2;->c:Lcom/byazt/su/DownloadModel;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getId()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    const/4 v5, 0x2

    .line 20
    iget-object v6, p0, Lcom/byazt/di/tt$2;->tt:Lcom/byazt/su/DownloadEventConfig;

    .line 21
    .line 22
    iget-object v7, p0, Lcom/byazt/di/tt$2;->ve:Lcom/byazt/su/DownloadController;

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/di/da;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/byazt/di/tt$2;->c:Lcom/byazt/su/DownloadModel;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/di/tt$2;->tt:Lcom/byazt/su/DownloadEventConfig;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/byazt/di/tt$2;->ve:Lcom/byazt/su/DownloadController;

    .line 36
    .line 37
    const-string v4, "landing_download_dialog_confirm"

    .line 38
    .line 39
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public tt(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/di/tt$2;->c:Lcom/byazt/su/DownloadModel;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/di/tt$2;->tt:Lcom/byazt/su/DownloadEventConfig;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/di/tt$2;->ve:Lcom/byazt/su/DownloadController;

    .line 10
    .line 11
    const-string v4, "landing_download_dialog_cancel"

    .line 12
    .line 13
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public ve(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/byazt/di/tt$2;->c:Lcom/byazt/su/DownloadModel;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/di/tt$2;->tt:Lcom/byazt/su/DownloadEventConfig;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/di/tt$2;->ve:Lcom/byazt/su/DownloadController;

    .line 10
    .line 11
    const-string v3, "landing_download_dialog_cancel"

    .line 12
    .line 13
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
