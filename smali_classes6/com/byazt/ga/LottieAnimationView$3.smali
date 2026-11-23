.class public Lcom/byazt/ga/LottieAnimationView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x5e8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ga/LottieAnimationView;->c(I)Lcom/byazt/ga/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/byazt/ga/t<",
        "Lcom/byazt/ga/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/ga/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/LottieAnimationView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView$3;->tt:Lcom/byazt/ga/LottieAnimationView;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/ga/LottieAnimationView$3;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public call()Lcom/byazt/ga/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/ga/t<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$3;->tt:Lcom/byazt/ga/LottieAnimationView;

    invoke-static {v0}, Lcom/byazt/ga/LottieAnimationView;->u(Lcom/byazt/ga/LottieAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$3;->tt:Lcom/byazt/ga/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/byazt/ga/LottieAnimationView$3;->c:I

    invoke-static {v0, v1}, Lcom/byazt/ga/sp;->tt(Landroid/content/Context;I)Lcom/byazt/ga/t;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$3;->tt:Lcom/byazt/ga/LottieAnimationView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/byazt/ga/LottieAnimationView$3;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/byazt/ga/sp;->tt(Landroid/content/Context;ILjava/lang/String;)Lcom/byazt/ga/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView$3;->call()Lcom/byazt/ga/t;

    move-result-object v0

    return-object v0
.end method
