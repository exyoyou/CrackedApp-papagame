.class public Lcom/byazt/di/ve$2;
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
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/ve;->c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/k/c;

.field public final synthetic tt:Lcom/byazt/su/DownloadModel;

.field public final synthetic ve:Lcom/byazt/di/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/di/ve;Lcom/byazt/k/c;Lcom/byazt/su/DownloadModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/ve$2;->ve:Lcom/byazt/di/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/di/ve$2;->c:Lcom/byazt/k/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/di/ve$2;->tt:Lcom/byazt/su/DownloadModel;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/di/ve$2;->c:Lcom/byazt/k/c;

    .line 2
    .line 3
    const-string v1, "no_enough_space_toast_text"

    .line 4
    .line 5
    const-string v2, "\u60a8\u7684\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u540e\u518d\u8bd5"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    invoke-static {}, Lcom/byazt/gq/t;->ve()Lcom/byazt/ou/u;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iget-object v6, p0, Lcom/byazt/di/ve$2;->tt:Lcom/byazt/su/DownloadModel;

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    invoke-interface/range {v3 .. v9}, Lcom/byazt/ou/u;->c(ILandroid/content/Context;Lcom/byazt/su/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
