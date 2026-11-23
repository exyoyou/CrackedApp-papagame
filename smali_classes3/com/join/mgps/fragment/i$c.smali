.class Lcom/join/mgps/fragment/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i;->a0(Lcom/join/mgps/dto/ClassifyBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ClassifyGameTypeBean;

.field final synthetic c:Lcom/join/mgps/fragment/i;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i;Lcom/join/mgps/dto/ClassifyGameTypeBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i$c;->c:Lcom/join/mgps/fragment/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/i$c;->b:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i$c;->c:Lcom/join/mgps/fragment/i;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/fragment/i;->Y(Lcom/join/mgps/fragment/i;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/ClassifyGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->b(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/i$c;->b:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getId()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->a(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/i$c;->b:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 37
    .line 38
    .line 39
    return-void
.end method
