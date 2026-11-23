.class public Lcom/byazt/ga/LottieAnimationView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rs/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x7ab
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/ga/a;Lcom/byazt/rs/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ga/a;

.field public final synthetic tt:Lcom/byazt/ga/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/LottieAnimationView;Lcom/byazt/ga/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView$10;->tt:Lcom/byazt/ga/LottieAnimationView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ga/LottieAnimationView$10;->c:Lcom/byazt/ga/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/rs/uj;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$10;->tt:Lcom/byazt/ga/LottieAnimationView;

    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$10;->c:Lcom/byazt/ga/a;

    invoke-virtual {p1, v0}, Lcom/byazt/ga/LottieAnimationView;->setComposition(Lcom/byazt/ga/a;)V

    return-void
.end method

.method public c(Lcom/byazt/rs/uj;ILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$10;->tt:Lcom/byazt/ga/LottieAnimationView;

    invoke-static {p1, p2, p3}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/ga/LottieAnimationView;ILjava/lang/String;)V

    return-void
.end method
