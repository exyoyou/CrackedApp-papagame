.class Lcom/join/mgps/activity/ClassifyGameActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ClassifyGameActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ClassifyGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    return-void
.end method

.method public onTabSelect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 5
    .line 6
    const-string v0, "time"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->access$002(Lcom/join/mgps/activity/ClassifyGameActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 16
    .line 17
    const-string v0, "score"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->access$002(Lcom/join/mgps/activity/ClassifyGameActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 24
    .line 25
    const-string v0, "default"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->access$002(Lcom/join/mgps/activity/ClassifyGameActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->showDataF(Lcom/join/mgps/dto/ClassifyGameTagBean;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/activity/ClassifyGameActivity;->showTitleName()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
