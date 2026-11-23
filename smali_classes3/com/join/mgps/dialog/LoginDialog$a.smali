.class Lcom/join/mgps/dialog/LoginDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/LoginDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/LoginDialog;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog$a;->b:Lcom/join/mgps/dialog/LoginDialog;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog$a;->b:Lcom/join/mgps/dialog/LoginDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/LoginDialog;->a(Lcom/join/mgps/dialog/LoginDialog;)Lcom/join/mgps/dialog/LoginDialog$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog$a;->b:Lcom/join/mgps/dialog/LoginDialog;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/dialog/LoginDialog;->a(Lcom/join/mgps/dialog/LoginDialog;)Lcom/join/mgps/dialog/LoginDialog$c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/mgps/dialog/LoginDialog$a;->b:Lcom/join/mgps/dialog/LoginDialog;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/dialog/LoginDialog$c;->a(Lcom/join/mgps/dialog/LoginDialog;I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog$a;->b:Lcom/join/mgps/dialog/LoginDialog;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
