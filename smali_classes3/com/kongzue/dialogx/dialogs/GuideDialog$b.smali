.class Lcom/kongzue/dialogx/dialogs/GuideDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/GuideDialog;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/GuideDialog;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/GuideDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog$b;->b:Lcom/kongzue/dialogx/dialogs/GuideDialog;

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

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog$b;->b:Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->q3()Lcom/kongzue/dialogx/interfaces/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog$b;->b:Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Lcom/kongzue/dialogx/interfaces/t;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog$b;->b:Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
