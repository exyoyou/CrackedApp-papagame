.class Lcom/join/mgps/fragment/e1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/e1;->c0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/e1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/e1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$c;->b:Lcom/join/mgps/fragment/e1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e1$c;->b:Lcom/join/mgps/fragment/e1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/e1;->O(Lcom/join/mgps/fragment/e1;)Lcom/join/android/app/component/video/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/e1$c;->b:Lcom/join/mgps/fragment/e1;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/fragment/e1;->R(Lcom/join/mgps/fragment/e1;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/e1$c;->b:Lcom/join/mgps/fragment/e1;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/fragment/e1;->O(Lcom/join/mgps/fragment/e1;)Lcom/join/android/app/component/video/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/fragment/e1$c;->b:Lcom/join/mgps/fragment/e1;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/join/mgps/fragment/e1;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
