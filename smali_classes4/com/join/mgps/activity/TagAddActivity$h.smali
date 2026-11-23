.class Lcom/join/mgps/activity/TagAddActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity;->createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$h;->c:Lcom/join/mgps/activity/TagAddActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/TagAddActivity$h;->b:Lcom/join/mgps/dto/GameTagsBean;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$h;->c:Lcom/join/mgps/activity/TagAddActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$h;->b:Lcom/join/mgps/dto/GameTagsBean;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagAddActivity;->deleteUserCustomGameTag(Lcom/join/mgps/dto/GameTagsBean;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
