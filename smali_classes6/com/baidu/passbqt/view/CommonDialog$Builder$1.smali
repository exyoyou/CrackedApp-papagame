.class Lcom/baidu/passbqt/view/CommonDialog$Builder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/passbqt/view/CommonDialog;

.field final synthetic b:Lcom/baidu/passbqt/view/CommonDialog$Builder;


# direct methods
.method constructor <init>(Lcom/baidu/passbqt/view/CommonDialog$Builder;Lcom/baidu/passbqt/view/CommonDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder$1;->b:Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder$1;->a:Lcom/baidu/passbqt/view/CommonDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder$1;->b:Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a(Lcom/baidu/passbqt/view/CommonDialog$Builder;)Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder$1;->a:Lcom/baidu/passbqt/view/CommonDialog;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
