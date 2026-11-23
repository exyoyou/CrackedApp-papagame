.class Lcom/join/mgps/fragment/GmaeFormPostFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;->X0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/GmaeFormPostFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->c:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->b:I

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->c:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->b:I

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c0(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->c:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 24
    .line 25
    const v0, 0x7f12031e

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->c:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Q(Lcom/join/mgps/fragment/GmaeFormPostFragment;)Lcom/join/mgps/dialog/x0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
