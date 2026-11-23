.class public Lcom/byazt/ga/LottieAnimationView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ga/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x5e3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ga/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/ga/da<",
        "Lcom/byazt/ga/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ga/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView$9;->c:Lcom/byazt/ga/LottieAnimationView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ga/a;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/byazt/ga/a;->t()Lcom/byazt/ga/a$tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/byazt/ga/a$tt;->x:Lcom/byazt/rs/uj;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/byazt/rs/a;->c()Lcom/byazt/rs/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/rs/a;->ve()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView$9;->c:Lcom/byazt/ga/LottieAnimationView;

    invoke-static {v1, p1, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/ga/LottieAnimationView;Lcom/byazt/ga/a;Lcom/byazt/rs/uj;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$9;->c:Lcom/byazt/ga/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/LottieAnimationView;->setComposition(Lcom/byazt/ga/a;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/ga/a;

    invoke-virtual {p0, p1}, Lcom/byazt/ga/LottieAnimationView$9;->c(Lcom/byazt/ga/a;)V

    return-void
.end method
