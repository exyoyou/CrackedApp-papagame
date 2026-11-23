.class Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

.field final synthetic b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;ILcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;->a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 2
    .param p1    # Landroidx/core/view/WindowInsetsAnimationCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 2
    .line 3
    const-string v1, "FitSystemBarUtils: setWindowInsetsAnimationCallback#onEnd "

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->c(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Z)Z

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 2
    .param p1    # Landroidx/core/view/WindowInsetsAnimationCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->c:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->c(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Z)Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "FitSystemBarUtils: setWindowInsetsAnimationCallback#onProgress: "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 24
    .line 25
    iget-boolean v0, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->c:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$c;->a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p1, v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->b(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Landroidx/core/view/WindowInsetsCompat;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object p1
.end method
