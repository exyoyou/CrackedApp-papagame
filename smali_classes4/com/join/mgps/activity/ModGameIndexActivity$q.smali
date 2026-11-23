.class Lcom/join/mgps/activity/ModGameIndexActivity$q;
.super Le6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->startGameADCheck(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/papa91/wrapper/UserPrefs;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;ILcom/papa91/wrapper/UserPrefs;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$type",
            "val$userPrefs",
            "val$u",
            "val$adc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->b:Lcom/papa91/wrapper/UserPrefs;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->c:I

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->d:I

    .line 10
    .line 11
    invoke-direct {p0}, Le6/c;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2300(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2400(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->b:Lcom/papa91/wrapper/UserPrefs;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->c:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->d:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onDirectLaunch()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2300(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2400(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
