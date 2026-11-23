.class public Lcom/byazt/di/da$6;
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
        0x1eb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/da;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/di/da;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lcom/byazt/su/DownloadController;

.field public final synthetic tt:J

.field public final synthetic uj:Lcom/byazt/su/DownloadEventConfig;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/di/da;Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/da$6;->a:Lcom/byazt/di/da;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/di/da$6;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/di/da$6;->tt:J

    .line 6
    .line 7
    iput p5, p0, Lcom/byazt/di/da$6;->ve:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/di/da$6;->uj:Lcom/byazt/su/DownloadEventConfig;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/byazt/di/da$6;->n:Lcom/byazt/su/DownloadController;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/di/da$6;->a:Lcom/byazt/di/da;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/di/da;->tt(Lcom/byazt/di/da;)Lcom/byazt/di/x;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/byazt/di/da$6;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/byazt/di/da$6;->tt:J

    .line 10
    .line 11
    iget v5, p0, Lcom/byazt/di/da$6;->ve:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/byazt/di/da$6;->uj:Lcom/byazt/su/DownloadEventConfig;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/byazt/di/da$6;->n:Lcom/byazt/su/DownloadController;

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/di/x;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
