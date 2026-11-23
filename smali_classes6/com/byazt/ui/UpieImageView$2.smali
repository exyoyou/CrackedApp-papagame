.class public Lcom/byazt/ui/UpieImageView$2;
.super Lcom/byazt/ga/gt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2,
        0x4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ui/UpieImageView;->c(Lcom/byazt/cph/c;Lcom/byazt/jzl/tt;Lcom/byazt/ui/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cph/c;

.field public final synthetic tt:Lcom/byazt/ui/UpieImageView;


# direct methods
.method public constructor <init>(Lcom/byazt/ui/UpieImageView;Lcom/byazt/ga/LottieAnimationView;Lcom/byazt/cph/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ui/UpieImageView$2;->tt:Lcom/byazt/ui/UpieImageView;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ui/UpieImageView$2;->c:Lcom/byazt/cph/c;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/ga/gt;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ui/UpieImageView$2;->c:Lcom/byazt/cph/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/cph/c;->sp()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/byazt/qk/c;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
