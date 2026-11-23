.class public final Lcom/byazt/w/sp$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/yp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x737
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/a;)Lcom/byazt/c/yp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/a;


# direct methods
.method public constructor <init>(Lcom/byazt/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$13;->c:Lcom/byazt/c/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$13;->c:Lcom/byazt/c/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/c/a;->c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
