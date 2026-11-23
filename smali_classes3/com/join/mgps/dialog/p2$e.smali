.class Lcom/join/mgps/dialog/p2$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/p2;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/p2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/p2$e;->a:Lcom/join/mgps/dialog/p2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/p2$e;->a:Lcom/join/mgps/dialog/p2;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/dialog/p2;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/p2$e;->a:Lcom/join/mgps/dialog/p2;

    .line 17
    .line 18
    iget v1, p1, Lcom/join/mgps/dialog/p2;->f:I

    .line 19
    .line 20
    if-ne v1, v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 23
    .line 24
    const-string v0, "file:///android_asset/dialogxieyi1.html"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 31
    .line 32
    const-string v0, "file:///android_asset/dialogxieyi2.html"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
