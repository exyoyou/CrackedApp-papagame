.class abstract Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SimulatorUploadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public dataBean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mRootView:Landroid/view/View;

.field final synthetic this$0:Lcom/papa91/arc/dialog/SimulatorUploadDialog;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/dialog/SimulatorUploadDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->this$0:Lcom/papa91/arc/dialog/SimulatorUploadDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->mRootView:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract init(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->mRootView:Landroid/view/View;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->this$0:Lcom/papa91/arc/dialog/SimulatorUploadDialog;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->access$000(Lcom/papa91/arc/dialog/SimulatorUploadDialog;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->onSelected()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onSelected()V
    .locals 0

    return-void
.end method

.method public onUnselected()V
    .locals 0

    return-void
.end method
