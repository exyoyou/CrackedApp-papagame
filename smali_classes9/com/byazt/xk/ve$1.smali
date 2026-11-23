.class public Lcom/byazt/xk/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/s/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x110,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xk/ve;->c(Lcom/byazt/t/DownloadInfo;ILcom/byazt/s/da;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/t/DownloadInfo;

.field public final synthetic uj:Lcom/byazt/xk/ve;

.field public final synthetic ve:Lcom/byazt/s/da;


# direct methods
.method public constructor <init>(Lcom/byazt/xk/ve;ILcom/byazt/t/DownloadInfo;Lcom/byazt/s/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xk/ve$1;->uj:Lcom/byazt/xk/ve;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/xk/ve$1;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/xk/ve$1;->tt:Lcom/byazt/t/DownloadInfo;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/xk/ve$1;->ve:Lcom/byazt/s/da;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/byazt/xk/ve$1;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/xk/ve$1;->uj:Lcom/byazt/xk/ve;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/xk/ve$1;->tt:Lcom/byazt/t/DownloadInfo;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/xk/ve$1;->ve:Lcom/byazt/s/da;

    .line 10
    .line 11
    invoke-static {v1, v2, v0, v3}, Lcom/byazt/xk/ve;->c(Lcom/byazt/xk/ve;Lcom/byazt/t/DownloadInfo;ILcom/byazt/s/da;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
