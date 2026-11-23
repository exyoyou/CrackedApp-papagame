.class Lcom/aggmoread/sdk/z/a/o/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$h;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$h;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/o/a;->d(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/o/a$j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$h;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/o/a;->d(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/o/a$j;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/o/a$j;->a()V

    :cond_0
    return-void
.end method
