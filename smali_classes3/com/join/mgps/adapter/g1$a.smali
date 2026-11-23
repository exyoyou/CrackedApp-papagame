.class public Lcom/join/mgps/adapter/g1$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field f:Landroid/widget/ImageView;

.field g:Lcom/facebook/drawee/view/SimpleDraweeView;

.field h:Landroid/widget/TextView;

.field i:Lcom/join/mgps/customview/DownloadNormalView;

.field j:Landroid/widget/LinearLayout;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/ProgressBar;

.field public p:Landroid/widget/ProgressBar;

.field final synthetic q:Lcom/join/mgps/adapter/g1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/g1;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/g1$a;->q:Lcom/join/mgps/adapter/g1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/g1$a;->e:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method
