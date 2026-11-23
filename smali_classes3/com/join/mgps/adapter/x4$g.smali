.class public Lcom/join/mgps/adapter/x4$g;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field d:Landroid/view/View;

.field e:Landroid/widget/RelativeLayout;

.field f:Landroid/widget/TextView;

.field g:Lcom/facebook/drawee/view/SimpleDraweeView;

.field h:Landroid/view/View;

.field final synthetic i:Lcom/join/mgps/adapter/x4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/x4;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x4$g;->i:Lcom/join/mgps/adapter/x4;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
