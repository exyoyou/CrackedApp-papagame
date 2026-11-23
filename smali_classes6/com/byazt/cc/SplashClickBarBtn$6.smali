.class public Lcom/byazt/cc/SplashClickBarBtn$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x1c5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/SplashClickBarBtn;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cc/SplashClickBarBtn;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/SplashClickBarBtn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/SplashClickBarBtn$6;->c:Lcom/byazt/cc/SplashClickBarBtn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBarBtn$6;->c:Lcom/byazt/cc/SplashClickBarBtn;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cc/SplashClickBarBtn;->x(Lcom/byazt/cc/SplashClickBarBtn;)Lcom/byazt/ga/LottieAnimationView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBarBtn$6;->c:Lcom/byazt/cc/SplashClickBarBtn;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/cc/SplashClickBarBtn;->x(Lcom/byazt/cc/SplashClickBarBtn;)Lcom/byazt/ga/LottieAnimationView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_0
    return-void
.end method
