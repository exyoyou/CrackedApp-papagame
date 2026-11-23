.class Lcom/join/mgps/activity/MGMainClassifyFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "layout"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$k;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$k;->b:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$k;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$k;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
