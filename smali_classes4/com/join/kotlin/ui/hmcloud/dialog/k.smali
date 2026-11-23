.class public final synthetic Lcom/join/kotlin/ui/hmcloud/dialog/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/kongzue/dialogx/dialogs/CustomDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/k;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/k;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->i(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method
