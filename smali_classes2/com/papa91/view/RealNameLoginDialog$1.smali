.class Lcom/papa91/view/RealNameLoginDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RealNameLoginDialog;->setButton(Landroid/view/View;ILcom/papa91/arc/bean/ButtonBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RealNameLoginDialog;

.field final synthetic val$btn:I

.field final synthetic val$btnBean:Lcom/papa91/arc/bean/ButtonBean;


# direct methods
.method constructor <init>(Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog$1;->this$0:Lcom/papa91/view/RealNameLoginDialog;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/view/RealNameLoginDialog$1;->val$btn:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/view/RealNameLoginDialog$1;->val$btnBean:Lcom/papa91/arc/bean/ButtonBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/papa91/view/RealNameLoginDialog$1;->this$0:Lcom/papa91/view/RealNameLoginDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/papa91/view/RealNameLoginDialog;->access$000(Lcom/papa91/view/RealNameLoginDialog;)Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/view/RealNameLoginDialog$1;->this$0:Lcom/papa91/view/RealNameLoginDialog;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/papa91/view/RealNameLoginDialog;->access$000(Lcom/papa91/view/RealNameLoginDialog;)Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog$1;->this$0:Lcom/papa91/view/RealNameLoginDialog;

    .line 16
    .line 17
    iget v1, p0, Lcom/papa91/view/RealNameLoginDialog$1;->val$btn:I

    .line 18
    .line 19
    iget-object v2, p0, Lcom/papa91/view/RealNameLoginDialog$1;->val$btnBean:Lcom/papa91/arc/bean/ButtonBean;

    .line 20
    .line 21
    invoke-interface {p1, v0, v1, v2}, Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;->onClick(Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
