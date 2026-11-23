.class public Lcom/byazt/si/c$2;
.super Lcom/byazt/ga/gt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x260,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/si/c;->sp()Lcom/byazt/si/UgenLottieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/si/c;


# direct methods
.method public constructor <init>(Lcom/byazt/si/c;Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/si/c$2;->c:Lcom/byazt/si/c;

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
    iget-object v0, p0, Lcom/byazt/si/c$2;->c:Lcom/byazt/si/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/si/c;->ve(Lcom/byazt/si/c;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
