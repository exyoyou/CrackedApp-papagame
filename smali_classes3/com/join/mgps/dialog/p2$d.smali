.class Lcom/join/mgps/dialog/p2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/p2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/p2;


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
    iput-object p1, p0, Lcom/join/mgps/dialog/p2$d;->b:Lcom/join/mgps/dialog/p2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/p2$d;->b:Lcom/join/mgps/dialog/p2;

    .line 5
    .line 6
    iget p1, p1, Lcom/join/mgps/dialog/p2;->f:I

    .line 7
    .line 8
    const/4 p2, 0x2

    .line 9
    const/4 p3, 0x1

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/join/mgps/dialog/p2;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/join/mgps/dialog/p2$d;->b:Lcom/join/mgps/dialog/p2;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "/static/gy_yhxkxy.html"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/dialog/p2$d;->b:Lcom/join/mgps/dialog/p2;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/join/mgps/dialog/p2;->g:Lcom/join/mgps/dialog/p2$g;

    .line 40
    .line 41
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/join/mgps/dialog/p2;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/join/mgps/dialog/p2$g;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dialog/p2;->show()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/dialog/p2$d;->b:Lcom/join/mgps/dialog/p2;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return p3

    .line 53
    :cond_1
    const/4 p1, 0x0

    .line 54
    return p1
.end method
