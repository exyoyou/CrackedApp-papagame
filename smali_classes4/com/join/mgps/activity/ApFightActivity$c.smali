.class Lcom/join/mgps/activity/ApFightActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ApFightActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$c;->b:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$c;->b:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/FightIntroductionActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/FightIntroductionActivity_$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/high16 v0, 0x400000

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/activity/FightIntroductionActivity_$b;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$c;->b:Lcom/join/mgps/activity/ApFightActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/FightIntroductionActivity_$b;->a(I)Lcom/join/mgps/activity/FightIntroductionActivity_$b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 26
    .line 27
    .line 28
    return-void
.end method
