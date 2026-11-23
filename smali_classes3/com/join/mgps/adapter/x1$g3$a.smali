.class Lcom/join/mgps/adapter/x1$g3$a;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1$g3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/join/mgps/adapter/x1;

.field final synthetic o:Lcom/join/mgps/adapter/x1$g3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1$g3;Landroid/content/Context;ILcom/join/mgps/adapter/x1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$1",
            "context",
            "spanCount",
            "val$this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$g3$a;->o:Lcom/join/mgps/adapter/x1$g3;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/join/mgps/adapter/x1$g3$a;->n:Lcom/join/mgps/adapter/x1;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
