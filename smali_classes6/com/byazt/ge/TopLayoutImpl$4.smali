.class public Lcom/byazt/ge/TopLayoutImpl$4;
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
        0x7bd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ge/TopLayoutImpl;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ge/TopLayoutImpl;


# direct methods
.method public constructor <init>(Lcom/byazt/ge/TopLayoutImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ge/TopLayoutImpl$4;->c:Lcom/byazt/ge/TopLayoutImpl;

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
    iget-object v2, p0, Lcom/byazt/ge/TopLayoutImpl$4;->c:Lcom/byazt/ge/TopLayoutImpl;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/byazt/ge/TopLayoutImpl;->c(Lcom/byazt/ge/TopLayoutImpl;)Lcom/byazt/ge/tt;

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
    const/4 v2, 0x1

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
    iget-object v1, p0, Lcom/byazt/ge/TopLayoutImpl$4;->c:Lcom/byazt/ge/TopLayoutImpl;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/byazt/ge/TopLayoutImpl;->uj(Lcom/byazt/ge/TopLayoutImpl;)Lcom/byazt/ete/ic;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/byazt/ete/h;->c(Lcom/byazt/ete/ic;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/byazt/ge/TopLayoutImpl$4;->c:Lcom/byazt/ge/TopLayoutImpl;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/byazt/ge/TopLayoutImpl;->uj(Lcom/byazt/ge/TopLayoutImpl;)Lcom/byazt/ete/ic;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/byazt/dl/uj;->c(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/byazt/ge/TopLayoutImpl$4;->c:Lcom/byazt/ge/TopLayoutImpl;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/byazt/ge/TopLayoutImpl;->uj(Lcom/byazt/ge/TopLayoutImpl;)Lcom/byazt/ete/ic;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "stats_reward_full_click_native_close"

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/byazt/ge/TopLayoutImpl$4;->c:Lcom/byazt/ge/TopLayoutImpl;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/byazt/ge/TopLayoutImpl;->c(Lcom/byazt/ge/TopLayoutImpl;)Lcom/byazt/ge/tt;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/byazt/ge/TopLayoutImpl$4;->c:Lcom/byazt/ge/TopLayoutImpl;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/byazt/ge/TopLayoutImpl;->c(Lcom/byazt/ge/TopLayoutImpl;)Lcom/byazt/ge/tt;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0, p1}, Lcom/byazt/ge/tt;->c(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void
.end method
