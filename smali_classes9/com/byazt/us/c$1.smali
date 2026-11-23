.class public final Lcom/byazt/us/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/us/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfb,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/us/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/dd/c;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/byazt/dd/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/us/c$1;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/us/c$1;->tt:Lcom/byazt/dd/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v1, "deeplink_success"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "deeplink_failed"

    .line 11
    .line 12
    :goto_0
    iget-object v2, p0, Lcom/byazt/us/c$1;->c:Lorg/json/JSONObject;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/byazt/us/c$1;->tt:Lcom/byazt/dd/c;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/byazt/gq/t;->rl()Lcom/byazt/ou/gt;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object p1, p0, Lcom/byazt/us/c$1;->tt:Lcom/byazt/dd/c;

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/byazt/dd/c;->rl()Lcom/byazt/su/DownloadModel;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object p1, p0, Lcom/byazt/us/c$1;->tt:Lcom/byazt/dd/c;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/byazt/dd/c;->gu()Lcom/byazt/su/DownloadController;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-object p1, p0, Lcom/byazt/us/c$1;->tt:Lcom/byazt/dd/c;

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/byazt/dd/c;->qy()Lcom/byazt/su/DownloadEventConfig;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-object p1, p0, Lcom/byazt/us/c$1;->tt:Lcom/byazt/dd/c;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/byazt/dd/c;->n()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const/4 v10, 0x0

    .line 54
    invoke-interface/range {v4 .. v10}, Lcom/byazt/ou/gt;->c(Landroid/content/Context;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadEventConfig;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
