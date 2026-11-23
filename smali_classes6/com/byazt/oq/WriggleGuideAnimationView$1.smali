.class public Lcom/byazt/oq/WriggleGuideAnimationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x870
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/WriggleGuideAnimationView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/WriggleGuideAnimationView;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/WriggleGuideAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/WriggleGuideAnimationView$1;->c:Lcom/byazt/oq/WriggleGuideAnimationView;

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
    iget-object v0, p0, Lcom/byazt/oq/WriggleGuideAnimationView$1;->c:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/oq/WriggleGuideAnimationView;->c(Lcom/byazt/oq/WriggleGuideAnimationView;)Lcom/byazt/ga/LottieAnimationView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method
