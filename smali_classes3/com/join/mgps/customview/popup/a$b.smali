.class Lcom/join/mgps/customview/popup/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/popup/a;->x(Landroid/content/DialogInterface$OnKeyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/DialogInterface$OnKeyListener;

.field final synthetic c:Lcom/join/mgps/customview/popup/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/popup/a;Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$onKeyListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/popup/a$b;->c:Lcom/join/mgps/customview/popup/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/popup/a$b;->b:Landroid/content/DialogInterface$OnKeyListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
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
    iget-object v0, p0, Lcom/join/mgps/customview/popup/a$b;->c:Lcom/join/mgps/customview/popup/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/customview/popup/a;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/popup/a$b;->b:Landroid/content/DialogInterface$OnKeyListener;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
