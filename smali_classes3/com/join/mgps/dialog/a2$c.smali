.class Lcom/join/mgps/dialog/a2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/a2;->d(Landroid/app/Activity;I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/a2;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/a2;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/a2$c;->b:Lcom/join/mgps/dialog/a2;

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
    .locals 0
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
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/a2$c;->b:Lcom/join/mgps/dialog/a2;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/dialog/a2;->a(Lcom/join/mgps/dialog/a2;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, -0x1

    .line 11
    invoke-interface {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity$m;->b(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/a2$c;->b:Lcom/join/mgps/dialog/a2;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/dialog/a2;->b(Lcom/join/mgps/dialog/a2;)Landroid/app/Dialog;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method
