.class Lcom/join/mgps/fragment/z4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/z4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/z4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/z4;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/z4$b;->b:Lcom/join/mgps/fragment/z4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4$b;->b:Lcom/join/mgps/fragment/z4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/z4;->X(Lcom/join/mgps/fragment/z4;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/z4$b;->b:Lcom/join/mgps/fragment/z4;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/fragment/z4;->Z(Lcom/join/mgps/fragment/z4;)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/z4$b;->b:Lcom/join/mgps/fragment/z4;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/fragment/z4;->a0(Lcom/join/mgps/fragment/z4;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/fragment/z4$b;->b:Lcom/join/mgps/fragment/z4;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/join/mgps/fragment/z4;->b0(Lcom/join/mgps/fragment/z4;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/fragment/z4;->g0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z4$b;->b:Lcom/join/mgps/fragment/z4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/z4;->X(Lcom/join/mgps/fragment/z4;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/z4$b;->b:Lcom/join/mgps/fragment/z4;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/z4;->Y(Lcom/join/mgps/fragment/z4;I)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/z4$b;->b:Lcom/join/mgps/fragment/z4;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/fragment/z4;->a0(Lcom/join/mgps/fragment/z4;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/join/mgps/fragment/z4$b;->b:Lcom/join/mgps/fragment/z4;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/join/mgps/fragment/z4;->b0(Lcom/join/mgps/fragment/z4;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v2, v3, v1}, Lcom/join/mgps/fragment/z4;->g0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
