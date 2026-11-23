.class public Lcom/byazt/tjo/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fb/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0xa7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tjo/t;->c(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic uj:Lcom/byazt/tjo/t;

.field public final synthetic ve:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/byazt/tjo/t;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tjo/t$1;->uj:Lcom/byazt/tjo/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tjo/t$1;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tjo/t$1;->tt:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/tjo/t$1;->ve:Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/byazt/tjo/t$1;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v6

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-interface {v2, v3, v6, v7}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->longValue(IJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    cmp-long v6, v2, v0

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-long v0, v4, v2

    .line 23
    .line 24
    :try_start_1
    sput-wide v0, Lcom/byazt/tjo/a;->c:J

    .line 25
    .line 26
    sget-wide v0, Lcom/byazt/tjo/a;->x:J

    .line 27
    .line 28
    sub-long v0, v4, v0

    .line 29
    .line 30
    sput-wide v0, Lcom/byazt/tjo/a;->ve:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    nop

    .line 34
    move-wide v0, v2

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    nop

    .line 37
    :goto_0
    move-wide v2, v0

    .line 38
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 39
    .line 40
    new-instance p1, Lcom/byazt/tjo/t$1$1;

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    move-object v1, p0

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/byazt/tjo/t$1$1;-><init>(Lcom/byazt/tjo/t$1;JJ)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/byazt/dc/n;->c(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method
