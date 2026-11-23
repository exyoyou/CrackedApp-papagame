.class public Lcom/byazt/di/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dm/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x159,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/tt;->c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZLcom/byazt/ou/IDownloadButtonClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/dm/tt$c<",
        "Landroid/app/Dialog;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/su/DownloadController;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic da:Lcom/byazt/ou/IDownloadButtonClickListener;

.field public final synthetic i:Z

.field public final synthetic n:Lcom/byazt/su/DownloadEventConfig;

.field public final synthetic sl:Lcom/byazt/di/tt;

.field public final synthetic sp:Lcom/byazt/su/DownloadStatusChangeListener;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/su/DownloadModel;

.field public final synthetic ve:Z

.field public final synthetic x:I


# direct methods
.method public constructor <init>(Lcom/byazt/di/tt;Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZLcom/byazt/ou/IDownloadButtonClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/tt$1;->sl:Lcom/byazt/di/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/di/tt$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/di/tt$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/byazt/di/tt$1;->ve:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/di/tt$1;->uj:Lcom/byazt/su/DownloadModel;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/di/tt$1;->n:Lcom/byazt/su/DownloadEventConfig;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/di/tt$1;->a:Lcom/byazt/su/DownloadController;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/byazt/di/tt$1;->sp:Lcom/byazt/su/DownloadStatusChangeListener;

    .line 16
    .line 17
    iput p9, p0, Lcom/byazt/di/tt$1;->x:I

    .line 18
    .line 19
    iput-boolean p10, p0, Lcom/byazt/di/tt$1;->i:Z

    .line 20
    .line 21
    iput-object p11, p0, Lcom/byazt/di/tt$1;->da:Lcom/byazt/ou/IDownloadButtonClickListener;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public c()Landroid/app/Dialog;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/di/tt$1;->sl:Lcom/byazt/di/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/di/tt$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/di/tt$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/byazt/di/tt$1;->ve:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/di/tt$1;->uj:Lcom/byazt/su/DownloadModel;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/byazt/di/tt$1;->n:Lcom/byazt/su/DownloadEventConfig;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/byazt/di/tt$1;->a:Lcom/byazt/su/DownloadController;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/byazt/di/tt$1;->sp:Lcom/byazt/su/DownloadStatusChangeListener;

    .line 16
    .line 17
    iget v8, p0, Lcom/byazt/di/tt$1;->x:I

    .line 18
    .line 19
    iget-boolean v9, p0, Lcom/byazt/di/tt$1;->i:Z

    .line 20
    .line 21
    iget-object v10, p0, Lcom/byazt/di/tt$1;->da:Lcom/byazt/ou/IDownloadButtonClickListener;

    .line 22
    .line 23
    invoke-virtual/range {v0 .. v10}, Lcom/byazt/di/tt;->tt(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZLcom/byazt/ou/IDownloadButtonClickListener;)Landroid/app/Dialog;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public synthetic tt()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/di/tt$1;->c()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
