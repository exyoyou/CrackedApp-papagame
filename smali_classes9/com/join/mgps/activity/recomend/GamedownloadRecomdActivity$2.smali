.class Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$2;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$2;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/join/mgps/base/decoration/b$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/base/decoration/b$a;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p1, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$2;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0714f8

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    float-to-int v0, v0

    .line 23
    iput v0, p1, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$2;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    float-to-int v0, v0

    .line 36
    iput v0, p1, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$2;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const v1, 0x7f071293

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    float-to-int v0, v0

    .line 52
    iput v0, p1, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 53
    .line 54
    return-object p1
.end method
