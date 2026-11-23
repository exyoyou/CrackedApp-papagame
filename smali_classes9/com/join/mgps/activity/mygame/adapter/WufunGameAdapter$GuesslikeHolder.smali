.class Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$GuesslikeHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GuesslikeHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$GuesslikeHolder;->this$0:Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
