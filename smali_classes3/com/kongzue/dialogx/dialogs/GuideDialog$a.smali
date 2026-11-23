.class Lcom/kongzue/dialogx/dialogs/GuideDialog$a;
.super Lcom/kongzue/dialogx/interfaces/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/GuideDialog;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/r<",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/GuideDialog;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/GuideDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog$a;->a:Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/interfaces/r;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog$a;->onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method
