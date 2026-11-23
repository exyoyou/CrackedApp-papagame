.class public Lcom/byazt/bog/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a7,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bog/c;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/rl/ve;

.field public final synthetic ve:Lcom/byazt/bog/c;


# direct methods
.method public constructor <init>(Lcom/byazt/bog/c;Landroid/content/Context;Lcom/byazt/rl/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bog/c$1;->ve:Lcom/byazt/bog/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bog/c$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/bog/c$1;->tt:Lcom/byazt/rl/ve;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/bog/c$1;->ve:Lcom/byazt/bog/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/bog/c$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/bog/c$1;->tt:Lcom/byazt/rl/ve;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/byazt/bog/c;->tt(Landroid/content/Context;Lcom/byazt/rl/ve;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
