.class public Lcom/byazt/di/da$5;
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
        0x1ea
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/da;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/OnItemClickListener;Lcom/byazt/ou/IDownloadButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/ou/OnItemClickListener;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lcom/byazt/su/DownloadController;

.field public final synthetic sp:Lcom/byazt/ou/IDownloadButtonClickListener;

.field public final synthetic tt:J

.field public final synthetic uj:Lcom/byazt/su/DownloadEventConfig;

.field public final synthetic ve:I

.field public final synthetic x:Lcom/byazt/di/da;


# direct methods
.method public constructor <init>(Lcom/byazt/di/da;Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/OnItemClickListener;Lcom/byazt/ou/IDownloadButtonClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/da$5;->x:Lcom/byazt/di/da;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/di/da$5;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/di/da$5;->tt:J

    .line 6
    .line 7
    iput p5, p0, Lcom/byazt/di/da$5;->ve:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/di/da$5;->uj:Lcom/byazt/su/DownloadEventConfig;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/byazt/di/da$5;->n:Lcom/byazt/su/DownloadController;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/byazt/di/da$5;->a:Lcom/byazt/ou/OnItemClickListener;

    .line 14
    .line 15
    iput-object p9, p0, Lcom/byazt/di/da$5;->sp:Lcom/byazt/ou/IDownloadButtonClickListener;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/di/da$5;->x:Lcom/byazt/di/da;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/di/da;->tt(Lcom/byazt/di/da;)Lcom/byazt/di/x;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/byazt/di/da$5;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/byazt/di/da$5;->tt:J

    .line 10
    .line 11
    iget v5, p0, Lcom/byazt/di/da$5;->ve:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/byazt/di/da$5;->uj:Lcom/byazt/su/DownloadEventConfig;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/byazt/di/da$5;->n:Lcom/byazt/su/DownloadController;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/byazt/di/da$5;->a:Lcom/byazt/ou/OnItemClickListener;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/byazt/di/da$5;->sp:Lcom/byazt/ou/IDownloadButtonClickListener;

    .line 20
    .line 21
    invoke-virtual/range {v1 .. v9}, Lcom/byazt/di/x;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/OnItemClickListener;Lcom/byazt/ou/IDownloadButtonClickListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
