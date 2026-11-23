.class public Lcom/byazt/kft/c$9$2;
.super Lcom/byazt/ga/gt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x954
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kft/c$9;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/c$9;Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/c$9$2;->c:Lcom/byazt/kft/c$9;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/ga/gt;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/c$9$2;->c:Lcom/byazt/kft/c$9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/kft/c;->t(Lcom/byazt/kft/c;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/kft/c$9$2;->c:Lcom/byazt/kft/c$9;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/kft/c;->t(Lcom/byazt/kft/c;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-static {p1, v0}, Lcom/byazt/qk/c;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
