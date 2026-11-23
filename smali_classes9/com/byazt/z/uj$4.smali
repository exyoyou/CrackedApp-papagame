.class public Lcom/byazt/z/uj$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/yp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x65
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/z/uj;->c(Lcom/byazt/z/n;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/z/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/z/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/z/uj$4;->c:Lcom/byazt/z/uj;

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
    iget-object v0, p0, Lcom/byazt/z/uj$4;->c:Lcom/byazt/z/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/z/uj;->tt(Lcom/byazt/z/uj;)Lcom/byazt/s/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/z/uj$4;->c:Lcom/byazt/z/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/z/uj;->tt(Lcom/byazt/z/uj;)Lcom/byazt/s/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/s/i;->c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
