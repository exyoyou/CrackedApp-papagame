.class Lcom/aggmoread/sdk/z/a/r/d$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$j;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$j;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$j;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89c6\u9891\u64ad\u653e\u5931\u8d25: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
