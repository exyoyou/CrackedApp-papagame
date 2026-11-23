.class Lcom/papa/gsyvideoplayer/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/gsyvideoplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c$h;->b:Lcom/papa/gsyvideoplayer/c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$h;->b:Lcom/papa/gsyvideoplayer/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/c;->d:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "time out for error listener"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$h;->b:Lcom/papa/gsyvideoplayer/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, -0xc0

    .line 19
    .line 20
    invoke-interface {v0, v1, v1}, Lv7/a;->onError(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
