.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/j/a;)V

    const/4 p1, 0x0

    return p1
.end method
