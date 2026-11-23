.class public final synthetic Lcom/join/kotlin/module/hmcloud/dialog/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/j0;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

    iput p2, p0, Lcom/join/kotlin/module/hmcloud/dialog/j0;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/j0;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

    iget v1, p0, Lcom/join/kotlin/module/hmcloud/dialog/j0;->c:I

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;->N(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;ILandroid/view/View;)V

    return-void
.end method
