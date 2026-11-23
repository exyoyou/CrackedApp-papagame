.class public final Lcom/byazt/gq/z$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/de/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x1e6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/z;->c(Lcom/byazt/dd/tt;Lcom/byazt/t/DownloadInfo;ILcom/byazt/tg/x;ZLcom/byazt/de/ve;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dd/tt;

.field public final synthetic tt:Lcom/byazt/de/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/dd/tt;Lcom/byazt/de/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/z$2;->c:Lcom/byazt/dd/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gq/z$2;->tt:Lcom/byazt/de/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "cancel_pause_reserve_wifi_delete"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/gq/z$2;->c:Lcom/byazt/dd/tt;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lcom/byazt/dd/c;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/gq/z$2;->tt:Lcom/byazt/de/ve;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/byazt/de/ve;->delete()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
