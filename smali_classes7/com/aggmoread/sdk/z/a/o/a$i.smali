.class Lcom/aggmoread/sdk/z/a/o/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/o/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/o/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$i;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$i;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/o/a;->d(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/o/a$j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$i;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/o/a;->d(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/o/a$j;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extra msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/aggmoread/sdk/z/a/o/a$j;->a(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
