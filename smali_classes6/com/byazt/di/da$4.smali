.class public Lcom/byazt/di/da$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x159,
        0x1ed
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/da;->c(Landroid/content/Context;ILcom/byazt/su/DownloadStatusChangeListener;Lcom/byazt/su/DownloadModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic n:Lcom/byazt/di/da;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/su/DownloadModel;

.field public final synthetic ve:Lcom/byazt/su/DownloadStatusChangeListener;


# direct methods
.method public constructor <init>(Lcom/byazt/di/da;Landroid/content/Context;ILcom/byazt/su/DownloadStatusChangeListener;Lcom/byazt/su/DownloadModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/da$4;->n:Lcom/byazt/di/da;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/di/da$4;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/di/da$4;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/di/da$4;->ve:Lcom/byazt/su/DownloadStatusChangeListener;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/di/da$4;->uj:Lcom/byazt/su/DownloadModel;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/di/da$4;->n:Lcom/byazt/di/da;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/di/da;->tt(Lcom/byazt/di/da;)Lcom/byazt/di/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/di/da$4;->c:Landroid/content/Context;

    .line 8
    .line 9
    iget v2, p0, Lcom/byazt/di/da$4;->tt:I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/byazt/di/da$4;->ve:Lcom/byazt/su/DownloadStatusChangeListener;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/byazt/di/da$4;->uj:Lcom/byazt/su/DownloadModel;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/di/x;->c(Landroid/content/Context;ILcom/byazt/su/DownloadStatusChangeListener;Lcom/byazt/su/DownloadModel;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
