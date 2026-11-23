.class public Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f6,
        0x71e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;


# direct methods
.method public constructor <init>(Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl$1;->c:Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "topListener"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl$1;->c:Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;->c(Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;)Lcom/byazt/ge/tt;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "topImpl"

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    nop

    .line 25
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl$1;->c:Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;->tt(Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;)Lcom/byazt/ete/ic;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "stats_reward_full_click_native_close"

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl$1;->c:Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;->c(Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;)Lcom/byazt/ge/tt;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl$1;->c:Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;->c(Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;)Lcom/byazt/ge/tt;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0, p1}, Lcom/byazt/ge/tt;->c(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method
