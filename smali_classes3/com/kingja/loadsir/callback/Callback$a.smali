.class Lcom/kingja/loadsir/callback/Callback$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingja/loadsir/callback/Callback;->getRootView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kingja/loadsir/callback/Callback;


# direct methods
.method constructor <init>(Lcom/kingja/loadsir/callback/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kingja/loadsir/callback/Callback$a;->b:Lcom/kingja/loadsir/callback/Callback;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback$a;->b:Lcom/kingja/loadsir/callback/Callback;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kingja/loadsir/callback/Callback;->access$000(Lcom/kingja/loadsir/callback/Callback;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/kingja/loadsir/callback/Callback$a;->b:Lcom/kingja/loadsir/callback/Callback;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/kingja/loadsir/callback/Callback;->access$100(Lcom/kingja/loadsir/callback/Callback;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/kingja/loadsir/callback/Callback;->onReloadEvent(Landroid/content/Context;Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback$a;->b:Lcom/kingja/loadsir/callback/Callback;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/kingja/loadsir/callback/Callback;->access$200(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback$a;->b:Lcom/kingja/loadsir/callback/Callback;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/kingja/loadsir/callback/Callback;->access$200(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1}, Lcom/kingja/loadsir/callback/Callback$OnReloadListener;->onReload(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
