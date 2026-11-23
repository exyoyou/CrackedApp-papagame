.class Lcom/aggmoread/sdk/z/a/r/d$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/d;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/r/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$l;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x325

    if-ne p2, p1, :cond_0

    const-string p1, "ApiRewardVideoViewTAG"

    const-string p2, "ApiVideoViewTAG MEDIA_INFO_VIDEO_NOT_PLAYING "

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$l;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->b(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->b()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$l;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->b(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->q()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$l;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$l;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    const-string p2, "\u89c6\u9891\u7d20\u6750\u64ad\u653e\u5931\u8d25!"

    invoke-interface {p1, p2}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
