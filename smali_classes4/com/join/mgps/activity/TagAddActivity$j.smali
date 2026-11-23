.class Lcom/join/mgps/activity/TagAddActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity;->showConfirmDialog(Lcom/join/mgps/dto/GameTagsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameTagsBean;

.field final synthetic c:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$j;->c:Lcom/join/mgps/activity/TagAddActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/TagAddActivity$j;->b:Lcom/join/mgps/dto/GameTagsBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$j;->c:Lcom/join/mgps/activity/TagAddActivity;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/TagAddActivity$j;->b:Lcom/join/mgps/dto/GameTagsBean;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/TagAddActivity;->deleteUserCustomTag(Lcom/join/mgps/dto/GameTagsBean;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
