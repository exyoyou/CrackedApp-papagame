.class Lcom/join/mgps/adapter/e$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/e$r;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/e$r;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/e$r;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/e$r$a;->b:Lcom/join/mgps/adapter/e$r;

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
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/e$r$a;->b:Lcom/join/mgps/adapter/e$r;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/e$r;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/e$r$a;->b:Lcom/join/mgps/adapter/e$r;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/adapter/e$r;->b:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/join/mgps/adapter/e$r$a;->b:Lcom/join/mgps/adapter/e$r;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/mgps/adapter/e$r;->b:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$m;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$m;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 34
    .line 35
    .line 36
    return-void
.end method
