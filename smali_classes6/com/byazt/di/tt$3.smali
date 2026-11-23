.class public Lcom/byazt/di/tt$3;
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
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/tt;->c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/dm/tt$c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/ou/IDownloadButtonClickListener;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic n:Lcom/byazt/su/DownloadController;

.field public final synthetic sp:Lcom/byazt/di/tt;

.field public final synthetic tt:Landroid/net/Uri;

.field public final synthetic uj:Lcom/byazt/su/DownloadEventConfig;

.field public final synthetic ve:Lcom/byazt/su/DownloadModel;


# direct methods
.method public constructor <init>(Lcom/byazt/di/tt;Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/tt$3;->sp:Lcom/byazt/di/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/di/tt$3;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/di/tt$3;->tt:Landroid/net/Uri;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/di/tt$3;->ve:Lcom/byazt/su/DownloadModel;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/di/tt$3;->uj:Lcom/byazt/su/DownloadEventConfig;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/di/tt$3;->n:Lcom/byazt/su/DownloadController;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/di/tt$3;->a:Lcom/byazt/ou/IDownloadButtonClickListener;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Boolean;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/di/tt$3;->sp:Lcom/byazt/di/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/di/tt$3;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/di/tt$3;->tt:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/di/tt$3;->ve:Lcom/byazt/su/DownloadModel;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/di/tt$3;->uj:Lcom/byazt/su/DownloadEventConfig;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/byazt/di/tt$3;->n:Lcom/byazt/su/DownloadController;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/byazt/di/tt$3;->a:Lcom/byazt/ou/IDownloadButtonClickListener;

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lcom/byazt/di/tt;->c(Lcom/byazt/di/tt;Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public synthetic tt()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/di/tt$3;->c()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
